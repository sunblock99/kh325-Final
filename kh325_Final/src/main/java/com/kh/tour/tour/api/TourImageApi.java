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

import com.kh.tour.tour.model.vo.TourImage;

public class TourImageApi {
	public static String TOUR_URL = "http://apis.data.go.kr/B551011/KorService/areaBasedList";
	public static String TOUR_TOURLIST_DETAIL_IMAGE_URL = "http://apis.data.go.kr/B551011/KorService/detailImage";
	public static String SERVICE_KEY = "fD0DCX7wMXP7oajt2G6gM9Gp9x3cxPbHZURBn3%2FG68CU%2Bta1e9Kx7vvu2vAg6Cj9%2BtuyfBqqPfJDbTw9IsfC%2Bw%3D%3D";
	public static String TOUR_URL_EXTRASTRING = "MobileOS=ETC&MobileApp=AppTest&listYN=Y&arrange=C";
	public static String TOUR__IMAGE_URL_EXTRASTRING = "imageYN=Y&subImageYN=Y";
	public static String TOUR_TOURLIST_DETAIL_EXTRASTRING1 = "MobileOS=ETC&MobileApp=AppTest";

	public static final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

	public static void main(String[] args) {
		TourImageApi.callCurrentTourImageByXML();
	}

	public static List<TourImage> callCurrentTourImageByXML() {
		List<TourImage> list = new ArrayList<>();

		for (int j = 1; j < 3; j++) {

			try {
				StringBuilder urlBuilder = new StringBuilder();
				urlBuilder.append(TOUR_URL);
				urlBuilder.append("?" + "serviceKey=" + SERVICE_KEY); // 첫 번째만 물음표로 설정
				urlBuilder.append("&" + "numOfRows=" + 1000);
				urlBuilder.append("&" + "pageNo=" + j);
				urlBuilder.append("&" + TOUR_URL_EXTRASTRING);

				URL url = new URL(urlBuilder.toString());
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestProperty("Content-type", "application/json");
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

						// -------------------------------------------------info 시작

						URL url2 = new URL(TourImageApi.tourImageUrl(contentId).toString());

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

						
						NodeList items =  doc2.getElementsByTagName("item");
						Element item = (Element) items.item(0);

						NodeList originImgUrlList = item.getElementsByTagName("originimgurl");
						NodeList smallImageUrlList = item.getElementsByTagName("smallimageurl");

						
						for(int k = 0; k <originImgUrlList.getLength(); k++) {
							String originImgUrl = ((Element)originImgUrlList.item(k)).getTextContent();
							String smallImageUrl = ((Element)smallImageUrlList.item(k)).getTextContent();
							
							TourImage tourImage = new TourImage(0, contentId, originImgUrl, smallImageUrl);
							list.add(tourImage);
							System.out.println(list);
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return list;

	}

//	private static String getStrData(Element eElement, String tagName) {
//		try {
//			return eElement.getElementsByTagName(tagName).item(0).getTextContent();
//		} catch (Exception e) {
//			return "-";
//		}
//	}

	private static int getIntData(Element eElement, String tagName) {
		try {
			return Integer.parseInt(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}

	// 정보페이지 url만들어서 넘김
	public static StringBuffer tourImageUrl(int contentId) {
		StringBuffer tourImageUrl = new StringBuffer();
		tourImageUrl.append(TOUR_TOURLIST_DETAIL_IMAGE_URL);
		tourImageUrl.append("?" + "serviceKey=" + SERVICE_KEY);
		tourImageUrl.append("&" + "contentId=" + contentId);
		tourImageUrl.append("&" + TOUR_TOURLIST_DETAIL_EXTRASTRING1);
		tourImageUrl.append("&" + TOUR__IMAGE_URL_EXTRASTRING);

//			System.out.println(tourImageUrl);

		return tourImageUrl;

	}

}
