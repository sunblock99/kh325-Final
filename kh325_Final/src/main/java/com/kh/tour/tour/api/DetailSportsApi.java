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

import com.kh.tour.tour.model.vo.DetailSports;
import com.kh.tour.tour.model.vo.DetailTourist;

public class DetailSportsApi {
	
	public static String TOUR_URL = "http://apis.data.go.kr/B551011/KorService/areaBasedList";
	public static String TOUR_TOURLIST_DETAIL_URL = "http://apis.data.go.kr/B551011/KorService/detailIntro";
	public static String SERVICE_KEY = "fD0DCX7wMXP7oajt2G6gM9Gp9x3cxPbHZURBn3%2FG68CU%2Bta1e9Kx7vvu2vAg6Cj9%2BtuyfBqqPfJDbTw9IsfC%2Bw%3D%3D";
	public static String TOUR_URL_EXTRASTRING= "MobileOS=ETC&MobileApp=AppTest&listYN=Y&arrange=C";
	public static String TOUR_TOURLIST_DETAIL_EXTRASTRING1= "MobileOS=ETC&MobileApp=AppTest";
	
	
	public static final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

	public static void main(String[] args) {
		DetailSportsApi.callCurrentDetailSportsByXML();
	}
	
	public static List<DetailSports> callCurrentDetailSportsByXML() {
		List<DetailSports> list = new ArrayList<>();
		
		for (int j = 1; j < 1000; j++) {

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
			

						//-------------------------------------------------info 시작
						System.out.println(contentTypeId);
					
						if(contentTypeId == 28) {
						URL url2 = new URL(DetailSportsApi.sportsUrl(contentId, contentTypeId).toString());
						
						System.out.println("url : " + url2);
						
						HttpURLConnection conn2 = (HttpURLConnection) url2.openConnection();
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
							
							String accomcountLeports = getStrData(eElement2, "accomcountleports");
							String chkbabycarriageLeport = getStrData(eElement2, "chkbabycarriageleport");
							String chkcreditcardLeports = getStrData(eElement2, "chkcreditcardleports");
							String chkpetLeports = getStrData(eElement2, "chkpetleports");
							String expagerangeLeports = getStrData(eElement2, "expagerangeleports");
							String infocenterLeports = getStrData(eElement2, "infocenterleports");
							String openPeriod = getStrData(eElement2, "openperiod");
							String parkingfeeLeports = getStrData(eElement2, "parkingfeeleports");
							String parkingLeports = getStrData(eElement2, "parkingleports");
							String reservation = getStrData(eElement2, "reservation");
							String restdateLeports = getStrData(eElement2, "restdateleports");
							String scaleLeports = getStrData(eElement2, "scaleleports");
							String usefeeLeports = getStrData(eElement2, "usefeeleports");
							String usetimeLeports = getStrData(eElement2, "usetimeleports");
							
						
							DetailSports detailSports = new DetailSports(contentId, contentTypeId, accomcountLeports, chkbabycarriageLeport, chkcreditcardLeports, chkpetLeports, expagerangeLeports, 
									infocenterLeports, openPeriod, parkingfeeLeports, parkingLeports, reservation, restdateLeports, scaleLeports, usefeeLeports, 
									usetimeLeports);
							list.add(detailSports);
							System.out.println(list.toString());
						}
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
	public static StringBuffer sportsUrl(int contentId, int contentTypeId) {
		StringBuffer sportsUrl = new StringBuffer();
		sportsUrl.append(TOUR_TOURLIST_DETAIL_URL);
		sportsUrl.append("?" + "serviceKey=" + SERVICE_KEY);
		sportsUrl.append("&" + TOUR_TOURLIST_DETAIL_EXTRASTRING1);
		sportsUrl.append("&" + "contentId=" + contentId);
		sportsUrl.append("&" + "contentTypeId=" + contentTypeId);
	
//			System.out.println(sportsUrl);
		
		return sportsUrl;
		
	}

}
