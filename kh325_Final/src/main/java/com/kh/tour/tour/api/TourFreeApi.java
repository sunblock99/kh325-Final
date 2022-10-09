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

import com.kh.tour.tour.model.vo.DetailTourist;
import com.kh.tour.tour.model.vo.TourFree;

public class TourFreeApi {
	public static String TOUR_URL = "http://apis.data.go.kr/B551011/KorService/areaBasedList";
	public static String TOUR_DETAIL_WITH_TOUR_URL = "	http://apis.data.go.kr/B551011/KorWithService/detailWithTour";
	public static String SERVICE_KEY = "lzhpNoakCHo5aenwJe7kub6egAg%2FlsfQ9QbSTSGrD%2F3JDieSA91XYej7TpMMWphOX%2BnHR7ZUVXj8lS6wP4ROig%3D%3D";
	public static String TOUR_URL_EXTRASTRING = "MobileOS=ETC&MobileApp=AppTest&listYN=Y&arrange=C";
	public static String TOUR_TOURLIST_DETAIL_EXTRASTRING1 = "MobileOS=ETC&MobileApp=AppTest";

	public static final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

	public static void main(String[] args) {
		TourFreeApi.callCurrentTourFreeByXML();
	}

	public static List<TourFree> callCurrentTourFreeByXML() {
		List<TourFree> list = new ArrayList<>();

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

						// -------------------------------------------------info 시작

						URL url2 = new URL(TourFreeApi.tourFreeUrl(contentId).toString());

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

							String parking = getStrData(eElement2, "parking");
							String route = getStrData(eElement2, "route");
							String publicTransport = getStrData(eElement2, "publictransport");
							String ticketOffice = getStrData(eElement2, "ticketoffice");
							String promotion = getStrData(eElement2, "promotion");
							String wheelchair = getStrData(eElement2, "wheelchair");
							String exit = getStrData(eElement2, "exit");
							String elevator = getStrData(eElement2, "elevator");
							String restroom = getStrData(eElement2, "restroom");
							String auditorium = getStrData(eElement2, "auditorium");
							String room = getStrData(eElement2, "room");
							String handicapEtc = getStrData(eElement2, "handicapetc");
							String braileBlock = getStrData(eElement2, "braileblock");
							String helpDog = getStrData(eElement2, "helpdog");
							String guideHuman = getStrData(eElement2, "guidehuman");
							String audioGuide = getStrData(eElement2, "audioguide");
							String bigPrint = getStrData(eElement2, "bigprint");
							String brailePromotion = getStrData(eElement2, "brailepromotion");
							String guideSystem = getStrData(eElement2, "guidesystem");
							String blindHandicapEtc = getStrData(eElement2, "blindhandicapetc");
							String signGuide = getStrData(eElement2, "signguide");
							String videoGuide = getStrData(eElement2, "videoguide");
							String hearingRoom = getStrData(eElement2, "hearingroom");
							String hearingHandicapEtc = getStrData(eElement2, "hearinghandicapetc");
							String stroller = getStrData(eElement2, "stroller");
							String lactationRoom = getStrData(eElement2, "lactationroom");
							String babySpareChair = getStrData(eElement2, "babysparechair");
							String infantsFamilyEtc = getStrData(eElement2, "infantsfamilyetc");

							TourFree tourFree = new TourFree(contentId, parking, route, publicTransport, ticketOffice,
									promotion, wheelchair, exit, elevator, restroom, auditorium, room, handicapEtc,
									braileBlock, helpDog, guideHuman, audioGuide, bigPrint, brailePromotion,
									guideSystem, blindHandicapEtc, signGuide, videoGuide, hearingRoom,
									hearingHandicapEtc, stroller, lactationRoom, babySpareChair, infantsFamilyEtc);
							list.add(tourFree);
							System.out.println(list.toString());
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
	public static StringBuffer tourFreeUrl(int contentId) {
		StringBuffer tourFreeUrl = new StringBuffer();
		tourFreeUrl.append(TOUR_DETAIL_WITH_TOUR_URL);
		tourFreeUrl.append("?" + "serviceKey=" + SERVICE_KEY);
		tourFreeUrl.append("&" + TOUR_TOURLIST_DETAIL_EXTRASTRING1);
		tourFreeUrl.append("&" + "contentId=" + contentId);

		return tourFreeUrl;

	}

}
