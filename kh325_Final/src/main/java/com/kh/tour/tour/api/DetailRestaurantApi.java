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

import com.kh.tour.tour.model.vo.DetailRestaurant;


public class DetailRestaurantApi {
	public static String TOUR_URL = "http://apis.data.go.kr/B551011/KorService/areaBasedList";
	public static String TOUR_RESTAURANT_DETAIL_URL = "http://apis.data.go.kr/B551011/KorService/detailIntro";
	public static String SERVICE_KEY = "0L5Iqaft7cvvAFwyEcDDJLm%2FdpmPNBvCDwpM7tL3LZHsL2prES1i20X6QCvzIhZpF7he8BEFj%2FhFQhIplu2YfA%3D%3D";
	public static String TOUR_URL_EXTRASTRING= "MobileOS=ETC&MobileApp=AppTest&listYN=Y&arrange=C";
	public static String TOUR_RESTAURANT_DETAIL_EXTRASTRING1= "MobileOS=ETC&MobileApp=AppTest";
	
	
	public static final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

	public static void main(String[] args) {
//		practice4.heritageInfo_Url("1", "2", "3");
		DetailRestaurantApi.callCurrentDetailRestaurantByXML();
	}
	
	public static List<DetailRestaurant> callCurrentDetailRestaurantByXML() {
		List<DetailRestaurant> list = new ArrayList<>();
		
		for (int j = 1; j < 375; j++) {

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
					
						if(contentTypeId == 39) {
						URL url2 = new URL(DetailRestaurantApi.restaurantUrl(contentId, contentTypeId).toString());
						
						System.out.println("url : " + url2);
						
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
							
							
							String chkcreditcardFood = getStrData(eElement2, "chkcreditcardfood");
							String discountinfoFood = getStrData(eElement2, "discountinfofood");
							String firstMenu = getStrData(eElement2, "firstmenu");
							String infocenterFood = getStrData(eElement2, "infocenterfood");
							String kidsFacility = getStrData(eElement2, "kidsfacility");
							String opendateFood = getStrData(eElement2, "opendatefood");
							String opentimeFood = getStrData(eElement2, "opentimefood");
							String packing = getStrData(eElement2, "packing");
							String parkingFood = getStrData(eElement2, "parkingfood");
							String reservationFood = getStrData(eElement2, "reservationfood");
							String restdateFood = getStrData(eElement2, "restdatefood");
							String scaleFood = getStrData(eElement2, "scalefood");
							String seat = getStrData(eElement2, "seat");
							String smoking = getStrData(eElement2, "smoking");
							String treatMenu = getStrData(eElement2, "treatmenu");
							String lcnsNo = getStrData(eElement2, "lcnsno");
							
						
							DetailRestaurant detailRestaurant = new DetailRestaurant(contentId, contentTypeId, chkcreditcardFood, discountinfoFood, firstMenu, infocenterFood, kidsFacility, 
									opendateFood, opentimeFood, packing, parkingFood, reservationFood, restdateFood, scaleFood, seat, smoking, treatMenu, lcnsNo);
							list.add(detailRestaurant);
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
	public static StringBuffer restaurantUrl(int contentId, int contentTypeId) {
		StringBuffer infoUrl = new StringBuffer();
		infoUrl.append(TOUR_RESTAURANT_DETAIL_URL);
		infoUrl.append("?" + "serviceKey=" + SERVICE_KEY);
		infoUrl.append("&" + TOUR_RESTAURANT_DETAIL_EXTRASTRING1);
		infoUrl.append("&" + "contentId=" + contentId);
		infoUrl.append("&" + "contentTypeId=" + contentTypeId);
	
//			System.out.println(infoUrl);
		
		
		return infoUrl;
		
	}
	
}
