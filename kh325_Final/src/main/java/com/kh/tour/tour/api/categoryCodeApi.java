package com.kh.tour.tour.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.kh.tour.tour.model.vo.Category;

public class categoryCodeApi {
	public static String TOUR_URL = "http://apis.data.go.kr/B551011/KorService/categoryCode";
	public static String SERVICE_KEY = "fD0DCX7wMXP7oajt2G6gM9Gp9x3cxPbHZURBn3%2FG68CU%2Bta1e9Kx7vvu2vAg6Cj9%2BtuyfBqqPfJDbTw9IsfC%2Bw%3D%3D";
	public static String TOUR_URL_EXTRASTRING = "MobileOS=ETC&MobileApp=AppTest";

	public static void main(String[] args) {
		categoryCodeApi.callCurrentCategoryCodeApiByXML();
	}

	public static List<Category> callCurrentCategoryCodeApiByXML() {
		List<Category> list = new ArrayList<>();

		for (int j = 1; j < 100; j++) {
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

						String cat1 = getStrData(eElement, "code"); //
						String cat1Name = getStrData(eElement, "name"); //

						// -------------------------------------------------info 시작
						System.out.println(cat1);

						URL url2 = new URL(categoryCodeApi.categoryCodeUrl(cat1).toString());

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

						NodeList items = doc2.getElementsByTagName("item");
						for (int t = 0; t < items.getLength(); t++) {

							Element item = (Element) items.item(t);

							NodeList cat2List = item.getElementsByTagName("code");
							NodeList cat2NameList = item.getElementsByTagName("name");

							for (int k = 0; k < cat2List.getLength(); k++) {
								String cat2Code = ((Element) cat2List.item(k)).getTextContent();
								String cat2Name = ((Element) cat2NameList.item(k)).getTextContent();

								Category categoryTable = new Category(0, cat1, cat1Name, cat2Code, cat2Name);
								list.add(categoryTable);
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
	public static StringBuffer categoryCodeUrl(String cat1) {
		StringBuffer categoryCodeUrl = new StringBuffer();
		categoryCodeUrl.append(TOUR_URL);
		categoryCodeUrl.append("?" + "serviceKey=" + SERVICE_KEY);
		categoryCodeUrl.append("&" + "numOfRows=" + 100);
		categoryCodeUrl.append("&" + TOUR_URL_EXTRASTRING);
		categoryCodeUrl.append("&" + "cat1=" + cat1);

		return categoryCodeUrl;

	}

}
