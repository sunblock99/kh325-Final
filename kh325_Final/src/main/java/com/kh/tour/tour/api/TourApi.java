package com.kh.tour.tour.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.kh.tour.tour.model.vo.Tour;

public class TourApi {

	public static String TOUR_URL = "http://apis.data.go.kr/B551011/KorService/areaBasedList";
	public static String TOUR_COMMON_DETAIL_URL = "http://apis.data.go.kr/B551011/KorService/detailCommon";
	public static String SERVICE_KEY = "fD0DCX7wMXP7oajt2G6gM9Gp9x3cxPbHZURBn3%2FG68CU%2Bta1e9Kx7vvu2vAg6Cj9%2BtuyfBqqPfJDbTw9IsfC%2Bw%3D%3D";
	public static String TOUR_URL_EXTRASTRING= "MobileOS=ETC&MobileApp=AppTest&listYN=Y&arrange=C";
	public static String TOUR_COMMON_DETAIL_EXTRASTRING1= "MobileOS=ETC&MobileApp=AppTest";
	public static String TOUR_COMMON_DETAIL_EXTRASTRING2= "defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y";
	
	public static final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

	public static void main(String[] args) {
//		practice4.heritageInfo_Url("1", "2", "3");
		TourApi.callCurrentTourByXML();
	}
	
	public static List<Tour> callCurrentTourByXML() {
		List<Tour> list = new ArrayList<>();
		
		for (int j = 1; j < 3; j++) {

			try {
				StringBuilder urlBuilder = new StringBuilder();
				urlBuilder.append(TOUR_URL);
				urlBuilder.append("?" + "serviceKey=" + SERVICE_KEY); // 첫 번째만 물음표로 설정
				urlBuilder.append("&" + "numOfRows=" + 100);
				urlBuilder.append("&" + "pageNo=" + j);
				urlBuilder.append("&" + TOUR_URL_EXTRASTRING);

				URL url = new URL(urlBuilder.toString());
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestProperty("Content-type", "application/json");
				conn.setRequestProperty("Accept", "application/xml");

				int code = conn.getResponseCode(); // 실제 호출하는 부
//				System.out.println("ResponseCode : " + code);
				if (code < 200 || code >= 300) {
					System.out.println("페이지가 잘못되었습니다.");
					return null;
				}

				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
				DocumentBuilder db = dbf.newDocumentBuilder();
				Document doc = db.parse(conn.getInputStream()); //
				doc.normalizeDocument();

				NodeList nList = doc.getElementsByTagName("item");
				for (int i = 0; i < nList.getLength(); i++) {
					Node node = nList.item(i);

//					System.out.println("\nCurrent Element : " + node.getNodeName());
					if (node.getNodeType() == Node.ELEMENT_NODE) {

						Element eElement = (Element) node;

						int contentId = getIntData(eElement, "contentid"); //
						int contentTypeId = getIntData(eElement, "contenttypeid"); //
						String title = getStrData(eElement, "title"); //
						String tel = getStrData(eElement, "tel"); //						
						int bookTour = getIntData(eElement, "booktour"); //
						String firstImage = getStrData(eElement, "firstimage"); //
						String firstImage2 = getStrData(eElement, "firstimage2"); //
						int areaCode = getIntData(eElement, "areacode"); // 
						int sigunguCode = getIntData(eElement, "sigungucode"); //
						String cat1 = getStrData(eElement, "cat1"); //
						String cat2 = getStrData(eElement, "cat2"); //
						String cat3 = getStrData(eElement, "cat3"); //
						String addr1 = getStrData(eElement, "addr1"); //
						String addr2 = getStrData(eElement, "addr2"); //
						int zipCode = getIntData(eElement, "zipcode");
						String mapX = getStrData(eElement, "mapx"); //
						String mapY = getStrData(eElement, "mapy"); //
						String mLevel = getStrData(eElement, "mlevel"); //


						//-------------------------------------------------info 시작
						
						URL url2 = new URL(TourApi.tourUrl(contentId, contentTypeId).toString());
						
//						System.out.println("url : " + url2);
						
						HttpURLConnection conn2 = (HttpURLConnection) url2.openConnection();
//						conn2.setRequestProperty("Content-type", "application/json");
						conn2.setRequestProperty("Accept", "application/xml");

						int code2 = conn2.getResponseCode(); // 실제 호출하는 부
						System.out.println("ResponseCode2 : " + code2);
						if (code2 < 200 || code2 >= 300) {
							System.out.println("페이지가 잘못되었습니다.");
							return null;
						}
						
						DocumentBuilderFactory dbf2 = DocumentBuilderFactory.newInstance();
						DocumentBuilder db2 = dbf2.newDocumentBuilder();
						Document doc2 = db2.parse(conn2.getInputStream()); //
						doc2.normalizeDocument();

						NodeList nList2 = doc2.getElementsByTagName("item");
						Node node2 = nList2.item(0);
						
//						System.out.println("\nCurrent Element2 : " + node.getNodeName());
						if (node2.getNodeType() == Node.ELEMENT_NODE) {
							Element eElement2 = (Element) node2;
							
							String homePage = getStrData(eElement2, "homepage");
							String telName = getStrData(eElement2, "telName");
							String overview = getStrData(eElement2, "overview");
						
							Tour tour = new Tour(contentId, contentTypeId, title, tel, telName, homePage, bookTour, 
									firstImage, firstImage2, areaCode, sigunguCode, cat1, cat2, cat3, addr1, 
									addr2, zipCode, mapX, mapY, mLevel, overview, null, null, null, null);
							list.add(tour);
	//						System.out.println(list.toString());
						}
						
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
		
		return list;
	}
	
	private static String getStrData(Element eElement, String tagName) {
		try {
			return eElement.getElementsByTagName(tagName).item(0).getTextContent();
		} catch (Exception e) {
			return "-";
		}
	}

	private static int getIntData(Element eElement, String tagName) {
		try {
			return Integer.parseInt(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}
	
	
	// 정보페이지 url만들어서 넘김 
	public static StringBuffer tourUrl(int contentId, int contentTypeId) {
		StringBuffer infoUrl = new StringBuffer();
		infoUrl.append(TOUR_COMMON_DETAIL_URL);
		infoUrl.append("?" + "serviceKey=" + SERVICE_KEY);
		infoUrl.append("&" + TOUR_COMMON_DETAIL_EXTRASTRING1);
		infoUrl.append("&" + "contentId=" + contentId);
		infoUrl.append("&" + "contentTypeId=" + contentTypeId);
		infoUrl.append("&" + TOUR_COMMON_DETAIL_EXTRASTRING2);
//			System.out.println(infoUrl);
		
		
		return infoUrl;
		
	}
	
}
	

