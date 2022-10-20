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

import com.kh.tour.tour.model.vo.RepeatCourse;
import com.kh.tour.tour.model.vo.RepeatHotel;

public class RepeatHotelApi {

	public static String TOUR_URL = "http://apis.data.go.kr/B551011/KorService/areaBasedList";
	public static String TOUR_REPEAT_INFO_URL = "http://apis.data.go.kr/B551011/KorService/detailInfo";
	public static String SERVICE_KEY = "fD0DCX7wMXP7oajt2G6gM9Gp9x3cxPbHZURBn3%2FG68CU%2Bta1e9Kx7vvu2vAg6Cj9%2BtuyfBqqPfJDbTw9IsfC%2Bw%3D%3D";
	public static String TOUR_URL_EXTRASTRING = "MobileOS=ETC&MobileApp=AppTest&listYN=Y&arrange=C";
	public static String TOUR_REPEAT_INFO_EXTRASTRING1 = "MobileOS=ETC&MobileApp=AppTest";

	public static final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

	public static void main(String[] args) {
		RepeatHotelApi.callCurrentRepeatHotelByXML();
	}

	public static List<RepeatHotel> callCurrentRepeatHotelByXML() {
		List<RepeatHotel> list = new ArrayList<>();
		
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
				conn.setRequestProperty("Accept", "application/xml");

				int code = conn.getResponseCode(); // 실제 호출하는 부
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

					if (node.getNodeType() == Node.ELEMENT_NODE) {

						Element eElement = (Element) node;

						int contentId = getIntData(eElement, "contentid"); //
						int contentTypeId = getIntData(eElement, "contenttypeid"); //
			

						//-------------------------------------------------info 시작
//						System.out.println(contentTypeId);
					
						if(contentTypeId == 32) {
						URL url2 = new URL(RepeatHotelApi.repeatHotelUrl(contentId, contentTypeId).toString());
						
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
								
							int roomCode               = getIntData(eElement2, "roomcode");
							String roomTitle           = getStrData(eElement2, "roomtitle");
							int roomSize1              = getIntData(eElement2, "roomsize1");     
							int roomCount              = getIntData(eElement2, "roomcount");     
							int roomBaseCount          = getIntData(eElement2, "roombasecount");     
							int roomMaxCount           = getIntData(eElement2, "roommaxcount");     
							int roomOffSeasonMinFee1   = getIntData(eElement2, "roomoffseasonminfee1");     
							int roomOffSeasonMinFee2   = getIntData(eElement2, "roomoffseasonminfee2");     
							int roomPeakSeasonMinFee1  = getIntData(eElement2, "roompeakseasonminfee1");     
							int roomPeakSeasonMinFee2  = getIntData(eElement2, "roompeakseasonminfee2");     
							String roomIntro           = getStrData(eElement2, "roomintro");     
							String  roomBathFacility   = getStrData(eElement2, "roombathfacility");     
							String  roomBath           = getStrData(eElement2, "roombath");     
							String  roomHomeTheater    = getStrData(eElement2, "roomhometheater");     
							String  roomAircondition   = getStrData(eElement2, "roomaircondition");     
							String  roomTv             = getStrData(eElement2, "roomtv");     
							String  roomPc             = getStrData(eElement2, "roompc");     
							String  roomCable          = getStrData(eElement2, "roomcable");     
							String  roomInternet       = getStrData(eElement2, "roominternet");     
							String  roomRefrigerator   = getStrData(eElement2, "roomrefrigerator");     
							String  roomToiletries     = getStrData(eElement2, "roomtoiletries");     
							String  roomSofa           = getStrData(eElement2, "roomsofa");     
							String  roomCook           = getStrData(eElement2, "roomcook");     
							String  roomTable          = getStrData(eElement2, "roomtable");     
							String  roomHairdryer      = getStrData(eElement2, "roomhairdryer");     
							long roomSize2           = getLongData(eElement2, "roomsize2");     
							String roomImg1            = getStrData(eElement2, "roomimg1");     
							String roomImg1alt         = getStrData(eElement2, "roomimg1alt");     
							String roomImg2            = getStrData(eElement2, "roomimg2");     
							String roomImg2alt         = getStrData(eElement2, "roomimg2alt");     
							String roomImg3            = getStrData(eElement2, "roomimg3");     
							String roomImg3alt         = getStrData(eElement2, "roomimg3alt");     
							String roomImg4            = getStrData(eElement2, "roomimg4");     
							String roomImg4alt         = getStrData(eElement2, "roomimg4alt");     
							String roomImg5            = getStrData(eElement2, "roomimg5");     
							String roomImg5alt         = getStrData(eElement2, "roomimg5alt");     
							
							RepeatHotel repeatCourse = new RepeatHotel(0, contentId, contentTypeId, roomCode, roomTitle, roomSize1, roomCount, roomBaseCount, roomMaxCount, roomOffSeasonMinFee1, roomOffSeasonMinFee2, roomPeakSeasonMinFee1, roomPeakSeasonMinFee2, roomIntro, roomBathFacility, roomBath, roomHomeTheater, roomAircondition, roomTv, roomPc, roomCable, roomInternet, roomRefrigerator, roomToiletries, roomSofa, roomCook, roomTable, roomHairdryer, roomSize2, roomImg1, roomImg1alt, roomImg2, roomImg2alt, roomImg3, roomImg3alt, roomImg4, roomImg4alt, roomImg5, roomImg5alt, null);
							list.add(repeatCourse);
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
	
	private static long getLongData(Element eElement, String tagName) {
		try {
			return Long.parseLong(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}

	// 정보페이지 url만들어서 넘김
	public static StringBuffer repeatHotelUrl(int contentId, int contentTypeId) {
		StringBuffer repeatHotelUrl = new StringBuffer();
		repeatHotelUrl.append(TOUR_REPEAT_INFO_URL);
		repeatHotelUrl.append("?" + "serviceKey=" + SERVICE_KEY);
		repeatHotelUrl.append("&" + TOUR_REPEAT_INFO_EXTRASTRING1);
		repeatHotelUrl.append("&" + "contentId=" + contentId);
		repeatHotelUrl.append("&" + "contentTypeId=" + contentTypeId);

//			System.out.println(sportsUrl);

		return repeatHotelUrl;

	}

}