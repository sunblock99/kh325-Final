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
import com.kh.tour.tour.model.vo.TourParsing;

public class TourApi {

	public static String TOUR_URL = "http://apis.data.go.kr/B551011/KorService/areaBasedList";
	public static String TOUR_COMMON_DETAIL_URL = "http://apis.data.go.kr/B551011/KorService/detailCommon";
	public static String TOUR_URL_EXTRASTRING = "MobileOS=ETC&MobileApp=AppTest&listYN=Y&arrange=C";
	public static String TOUR_COMMON_DETAIL_EXTRASTRING1 = "MobileOS=ETC&MobileApp=AppTest";
	public static String TOUR_COMMON_DETAIL_EXTRASTRING2 = "defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y";

	public static final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

	public static void main(String[] args) {
//		practice4.heritageInfo_Url("1", "2", "3");
		TourApi.callCurrentTourByXML();
	}

	public static List<TourParsing> callCurrentTourByXML() {
		List<TourParsing> list = new ArrayList<>();
		String serviceKey = null;

		// 1일차
//		for (int j = 17; j < 20; j++) {
//			if (j == 1) {
//				serviceKey = "MRGjsmhNXRX1D0nJfQ3jmGDOu1MpyezpskGaSewmi1%2Byy9aUHrq9gZ3i8q7%2FlGMxlu7nLmuvsb7MZpcM5puxhA%3D%3D";
//			}
//			if (j == 2) {
//				serviceKey = "lzhpNoakCHo5aenwJe7kub6egAg%2FlsfQ9QbSTSGrD%2F3JDieSA91XYej7TpMMWphOX%2BnHR7ZUVXj8lS6wP4ROig%3D%3D";
//			}
//			if (j == 3) {
//				serviceKey = "78wiFvQ0WDD8o%2Fd5%2BKLiuUSCz5WcokIXr0Q9dfcmyH6vs3bTdrxp8YSrjEQ1%2F4BgyxY%2Fj%2F%2BQCsGdNKIZ5jK6Ew%3D%3D";
//			}
//			if (j == 4) {
//				serviceKey = "xPgb4J1x4WD9jzYMbsGMZdsaMur9N1BVzLMvLNBpmtGVFfwPOwwVbvHPwUr68EaZLeWZZH13KWGj7YDyCSpgvA%3D%3D";
//			}
//			if (j == 5) {
//				serviceKey = "ruNaLgQMM1zN4TsgXK1aoN5hs6xaAd71GHt%2FkRKRYGACGGZKmrzi%2Bdn7O7e46o%2Fk9rYRLY%2FGMcEGhXSQy%2Fs2Lg%3D%3D";
//			}
//			if (j == 6) {
//				serviceKey = "pfrapdaIE4JSQTQlbaf%2FgQ5PHzhztyuhwsMSut4RNds4eIJE5iXE6%2F0WwwqeizAeieFOgSqPaRZN1PXF0bjYwA%3D%3D";
//			}
//			if (j == 7) {
//				serviceKey = "eiK%2BV76caR9ISOf1qIsgjV9ioCUXgzzvro%2BQqC4u1m20LIRJ%2B8mMAKILZoI0HEUhVFXOPEfpG4dLpuFTQijzsQ%3D%3D";
//			}
//			if (j == 8) {
//				serviceKey = "kbPxcL0m9hZ1CR8kULawo9YO3QnDjjfWMwysPXznkKllm8h7BgmYIv3n8tUDW6SP31J9qo1ESUUwvJdji4i3Tw%3D%3D";
//			}
//			if (j == 9) {
//				serviceKey = "DrszgCozJHG41Y9S22XMOKIU5X7mDWkETO%2BR6oUhQNnzdB1Euu7UNEV3XgDLxZoKKgoMS%2FTfkaT%2BgQ8UrteOAA%3D%3D";
//			}
//			if (j == 10) {
//				serviceKey = "fD0DCX7wMXP7oajt2G6gM9Gp9x3cxPbHZURBn3%2FG68CU%2Bta1e9Kx7vvu2vAg6Cj9%2BtuyfBqqPfJDbTw9IsfC%2Bw%3D%3D";
//			}
//			if (j == 11) {
//				serviceKey = "0L5Iqaft7cvvAFwyEcDDJLm%2FdpmPNBvCDwpM7tL3LZHsL2prES1i20X6QCvzIhZpF7he8BEFj%2FhFQhIplu2YfA%3D%3D";
//			}
//			if (j == 12) {
//				serviceKey = "vscKodtEDv6zV%2FYV6WMc1nrSXtGQlAo64qC%2FjIyEwSEaesH1cm9RfOx9%2ByYJn4N%2F830RmnCQLnMWJgm3U01WKg%3D%3D";
//			}
//			if (j == 13) {
//				serviceKey = "kxftassM%2BrRYbp7OhrzSCnL1udjm5%2B8ueXGAROz4WJsdE7UtAtmQaXTJ6n4XtU%2FILnqsuyLF0CTbZI1YqbbUuw%3D%3D";
//			}
//			if (j == 14) {
//				serviceKey = "neMSgCHKHQZ63FY1Tv%2B1SIiNnVJ2vfsVlHg%2FT%2FANBbP90yC7PgA%2BNsTB3CPB%2B8m6zsNNk1lICzdY7xCz1ZWDvQ%3D%3D";
//			}
//			if (j == 15) {
//				serviceKey = "qox%2BipaXoWnf%2FV01eNjOkt81Eh8nOc%2Fr82zCfdYqtbzqdsVuZr2o1iAq7VI8I0J8L71uxntJKSdmuP91QTQpEQ%3D%3D";
//			}
//			if (j == 16) {
//				serviceKey = "HDiMPHPdpb5BenyoGC9qF2vfNrVy3IWy9%2BHdxsTS7PxFuur3t3bVQ2UFFWOee9iAfwFCV3ioVJyrv4tYklC%2BIQ%3D%3D";
//			}
//			if (j == 17) {
//				serviceKey = "Bc1LLgHM%2Fgc%2FUrkBzSZURJM4qgoSFZ%2BA8whQuKAsyCCkNITBjNzxvWMB8ahECCyTKM%2BpHcVmZANaAH2wu9jS2w%3D%3D";
//			}
//			if (j == 18) {
//				serviceKey = "%2BERelxkpcuje7NJLgLdEDeimdjhWgfOhmG3W7Fz9tWihQjyffyBvz1pbHDk2Wi5hUkv9DDYDlrxwGEm887GYLw%3D%3D";
//			}
//			if (j == 19) {
//				serviceKey = "Xr4jMIQ0BD9HYlCiU4po7YUjFjL0yPduDsYgHVD%2FiJiboGPF2RrfoiVkc0xx7Leg7GOicWAW77JI%2BMdv7qFuRA%3D%3D";
//			}
			// 2일차
			for (int j = 35; j < 39; j++) {
				if (j == 20) {
					serviceKey = "MRGjsmhNXRX1D0nJfQ3jmGDOu1MpyezpskGaSewmi1%2Byy9aUHrq9gZ3i8q7%2FlGMxlu7nLmuvsb7MZpcM5puxhA%3D%3D";
				}
				if (j == 21) {
					serviceKey = "lzhpNoakCHo5aenwJe7kub6egAg%2FlsfQ9QbSTSGrD%2F3JDieSA91XYej7TpMMWphOX%2BnHR7ZUVXj8lS6wP4ROig%3D%3D";
				}
				if (j == 22) {
					serviceKey = "78wiFvQ0WDD8o%2Fd5%2BKLiuUSCz5WcokIXr0Q9dfcmyH6vs3bTdrxp8YSrjEQ1%2F4BgyxY%2Fj%2F%2BQCsGdNKIZ5jK6Ew%3D%3D";
				}
				if (j == 23) {
					serviceKey = "xPgb4J1x4WD9jzYMbsGMZdsaMur9N1BVzLMvLNBpmtGVFfwPOwwVbvHPwUr68EaZLeWZZH13KWGj7YDyCSpgvA%3D%3D";
				}
				if (j == 24) {
					serviceKey = "ruNaLgQMM1zN4TsgXK1aoN5hs6xaAd71GHt%2FkRKRYGACGGZKmrzi%2Bdn7O7e46o%2Fk9rYRLY%2FGMcEGhXSQy%2Fs2Lg%3D%3D";
				}
				if (j == 25) {
					serviceKey = "pfrapdaIE4JSQTQlbaf%2FgQ5PHzhztyuhwsMSut4RNds4eIJE5iXE6%2F0WwwqeizAeieFOgSqPaRZN1PXF0bjYwA%3D%3D";
				}
				if (j == 26) {
					serviceKey = "eiK%2BV76caR9ISOf1qIsgjV9ioCUXgzzvro%2BQqC4u1m20LIRJ%2B8mMAKILZoI0HEUhVFXOPEfpG4dLpuFTQijzsQ%3D%3D";
				}
				if (j == 27) {
					serviceKey = "kbPxcL0m9hZ1CR8kULawo9YO3QnDjjfWMwysPXznkKllm8h7BgmYIv3n8tUDW6SP31J9qo1ESUUwvJdji4i3Tw%3D%3D";
				}
				if (j == 28) {
					serviceKey = "DrszgCozJHG41Y9S22XMOKIU5X7mDWkETO%2BR6oUhQNnzdB1Euu7UNEV3XgDLxZoKKgoMS%2FTfkaT%2BgQ8UrteOAA%3D%3D";
				}
				if (j == 29) {
					serviceKey = "fD0DCX7wMXP7oajt2G6gM9Gp9x3cxPbHZURBn3%2FG68CU%2Bta1e9Kx7vvu2vAg6Cj9%2BtuyfBqqPfJDbTw9IsfC%2Bw%3D%3D";
				}
				if(j == 30) {
					serviceKey = "0L5Iqaft7cvvAFwyEcDDJLm%2FdpmPNBvCDwpM7tL3LZHsL2prES1i20X6QCvzIhZpF7he8BEFj%2FhFQhIplu2YfA%3D%3D";
				}
				if (j == 31) {
					serviceKey = "vscKodtEDv6zV%2FYV6WMc1nrSXtGQlAo64qC%2FjIyEwSEaesH1cm9RfOx9%2ByYJn4N%2F830RmnCQLnMWJgm3U01WKg%3D%3D";
				}
				if (j == 32) {
					serviceKey = "kxftassM%2BrRYbp7OhrzSCnL1udjm5%2B8ueXGAROz4WJsdE7UtAtmQaXTJ6n4XtU%2FILnqsuyLF0CTbZI1YqbbUuw%3D%3D";
				}
				if (j == 33) {
					serviceKey = "neMSgCHKHQZ63FY1Tv%2B1SIiNnVJ2vfsVlHg%2FT%2FANBbP90yC7PgA%2BNsTB3CPB%2B8m6zsNNk1lICzdY7xCz1ZWDvQ%3D%3D";
				}
				if (j == 34) {
					serviceKey = "qox%2BipaXoWnf%2FV01eNjOkt81Eh8nOc%2Fr82zCfdYqtbzqdsVuZr2o1iAq7VI8I0J8L71uxntJKSdmuP91QTQpEQ%3D%3D";
				}
				if (j == 35) {
					serviceKey = "HDiMPHPdpb5BenyoGC9qF2vfNrVy3IWy9%2BHdxsTS7PxFuur3t3bVQ2UFFWOee9iAfwFCV3ioVJyrv4tYklC%2BIQ%3D%3D";
				}
				if (j == 36) {
					serviceKey = "Bc1LLgHM%2Fgc%2FUrkBzSZURJM4qgoSFZ%2BA8whQuKAsyCCkNITBjNzxvWMB8ahECCyTKM%2BpHcVmZANaAH2wu9jS2w%3D%3D";
				}
				if (j == 37) {
					serviceKey = "%2BERelxkpcuje7NJLgLdEDeimdjhWgfOhmG3W7Fz9tWihQjyffyBvz1pbHDk2Wi5hUkv9DDYDlrxwGEm887GYLw%3D%3D";
				}
				if (j == 38) {
					serviceKey = "Xr4jMIQ0BD9HYlCiU4po7YUjFjL0yPduDsYgHVD%2FiJiboGPF2RrfoiVkc0xx7Leg7GOicWAW77JI%2BMdv7qFuRA%3D%3D";
				}

			try {
				StringBuilder urlBuilder = new StringBuilder();
				urlBuilder.append(TOUR_URL);
				urlBuilder.append("?" + "serviceKey=" + serviceKey); // 첫 번째만 물음표로 설정
				urlBuilder.append("&" + "numOfRows=" + 1000);
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

						// -------------------------------------------------info 시작

						URL url2 = new URL(TourApi.tourUrl(serviceKey, contentId, contentTypeId).toString());

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
						if (nList2 == null) {
							System.out.println("트래픽 초과 or 값없음!!!!!!!");
							continue;
						} else {
							Node node2 = nList2.item(0);

//						System.out.println("\nCurrent Element2 : " + node.getNodeName());
							if (node2.getNodeType() == Node.ELEMENT_NODE) {
								Element eElement2 = (Element) node2;

								String homePage = getStrData(eElement2, "homepage");
								String telName = getStrData(eElement2, "telName");
								String overview = getStrData(eElement2, "overview");

								TourParsing tour = new TourParsing(contentId, contentTypeId, title, tel, telName, homePage, bookTour,
										firstImage, firstImage2, areaCode, sigunguCode, cat1, cat2, cat3, addr1, addr2,
										zipCode, mapX, mapY, mLevel, overview);
								list.add(tour);
								// System.out.println(list.toString());
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
	public static StringBuffer tourUrl(String serviceKey, int contentId, int contentTypeId) {
		StringBuffer infoUrl = new StringBuffer();
		infoUrl.append(TOUR_COMMON_DETAIL_URL);
		infoUrl.append("?" + "serviceKey=" + serviceKey);
		infoUrl.append("&" + TOUR_COMMON_DETAIL_EXTRASTRING1);
		infoUrl.append("&" + "contentId=" + contentId);
		infoUrl.append("&" + "contentTypeId=" + contentTypeId);
		infoUrl.append("&" + TOUR_COMMON_DETAIL_EXTRASTRING2);
//			System.out.println(infoUrl);

		return infoUrl;

	}

}
