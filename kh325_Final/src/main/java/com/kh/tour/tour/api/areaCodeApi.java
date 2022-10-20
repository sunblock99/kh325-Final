package com.kh.tour.tour.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.kh.tour.tour.model.vo.AreaCode;

public class areaCodeApi {
	public static String TOUR_URL = "http://apis.data.go.kr/B551011/KorService/areaCode";
	public static String SERVICE_KEY = "fD0DCX7wMXP7oajt2G6gM9Gp9x3cxPbHZURBn3%2FG68CU%2Bta1e9Kx7vvu2vAg6Cj9%2BtuyfBqqPfJDbTw9IsfC%2Bw%3D%3D";
	public static String TOUR_URL_EXTRASTRING = "MobileOS=ETC&MobileApp=AppTest";

	public static void main(String[] args) {
		areaCodeApi.callCurrentareaCodeApiByXML();
	}

	public static List<AreaCode> callCurrentareaCodeApiByXML() {
		List<AreaCode> list = new ArrayList<>();

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

						int areaCode = getIntData(eElement, "code"); //
						String areaName = getStrData(eElement, "name"); //

						// -------------------------------------------------info 시작
						System.out.println(areaCode);

						if (areaCode == 1 || areaCode == 2 || areaCode == 3 || areaCode == 4 || areaCode == 5
								|| areaCode == 6 || areaCode == 7 || areaCode == 8 || areaCode == 31 || areaCode == 32
								|| areaCode == 33 || areaCode == 34 || areaCode == 35 || areaCode == 36
								|| areaCode == 37 || areaCode == 38 || areaCode == 39) {
							URL url2 = new URL(areaCodeApi.areaCodeUrl(areaCode).toString());

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
								
								NodeList sigunguCodeList = item.getElementsByTagName("code");
								NodeList detailAreaNameList = item.getElementsByTagName("name");
								
								for (int k = 0; k < sigunguCodeList.getLength(); k++) {
									int sigunguCode = Integer.parseInt(((Element) sigunguCodeList.item(k)).getTextContent());
									String detailAreaName = ((Element) detailAreaNameList.item(k)).getTextContent();
									
									AreaCode areaTable = new AreaCode(0, areaCode, areaName, sigunguCode, detailAreaName);
									list.add(areaTable);
									System.out.println(list.toString());
								}
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
	public static StringBuffer areaCodeUrl(int areaCode) {
		StringBuffer areaCodeUrl = new StringBuffer();
		areaCodeUrl.append(TOUR_URL);
		areaCodeUrl.append("?" + "serviceKey=" + SERVICE_KEY);
		areaCodeUrl.append("&" + "numOfRows=" + 100);
		areaCodeUrl.append("&" + TOUR_URL_EXTRASTRING);
		areaCodeUrl.append("&" + "areaCode=" + areaCode);

		return areaCodeUrl;

	}

}