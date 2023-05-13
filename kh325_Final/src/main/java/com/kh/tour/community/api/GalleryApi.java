package com.kh.tour.community.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.kh.tour.community.model.vo.Gallery;

public class GalleryApi {
	public static String GALLERY_URL = "http://apis.data.go.kr/B551011/PhotoGalleryService/galleryList?serviceKey=kbPxcL0m9hZ1CR8kULawo9YO3QnDjjfWMwysPXznkKllm8h7BgmYIv3n8tUDW6SP31J9qo1ESUUwvJdji4i3Tw%3D%3D&numOfRows=1000&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=xml&arrange=A";
//	public static String GALLERY_URL = "http://apis.data.go.kr/B551011/PhotoGalleryService/galleryList?serviceKey=kbPxcL0m9hZ1CR8kULawo9YO3QnDjjfWMwysPXznkKllm8h7BgmYIv3n8tUDW6SP31J9qo1ESUUwvJdji4i3Tw%3D%3D&numOfRows=4751&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=xml&arrange=A";

	public static void main(String[] args) {
		GalleryApi.callGalleryByXML();
	}
	
	public static final SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

	public static List<Gallery> callGalleryByXML() {

		List<Gallery> list = new ArrayList<>();

		StringBuffer urlBuffer = new StringBuffer();
		urlBuffer.append(GALLERY_URL);

		System.out.println(urlBuffer);

		try {
			URL url = new URL(urlBuffer.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/xml");
			int code = conn.getResponseCode(); // 실제 호출하는 부
			System.out.println("ResponseCode : " + code);

			if (code < 200 || code > 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return null;
			}

			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(conn.getInputStream());
			doc.normalizeDocument();

			NodeList nList = doc.getElementsByTagName("item");
			int boardNo = 1000;
			for (int i = 0; i < nList.getLength(); i+=10) {
				Node node = nList.item(i);
				System.out.println("\nCurrent Element : " + node.getNodeName());
				if (node.getNodeType() == Node.ELEMENT_NODE) {
					try {
						Element eElement = (Element) node;

						boardNo++;
						int uno = 5;
						String title = eElement.getElementsByTagName("galTitle").item(0).getTextContent();
						Date postDate = getDateData(eElement, "galCreatedtime");
						String originalImage = eElement.getElementsByTagName("galWebImageUrl").item(0).getTextContent();
						String renamedImag = originalImage;
						String galTag = eElement.getElementsByTagName("galSearchKeyword").item(0).getTextContent();
						String status = "Y";
						String boardType = "GALL";

						Gallery gallery = new Gallery(boardNo, uno, title, postDate, originalImage, renamedImag, galTag,
								status, boardType);
						list.add(gallery);
						System.out.println(list.toString());
					} catch (Exception e) {
						System.out.println("데이터가 잘못되었습니다!");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	private static Date getDateData(Element eElement, String tagName) {
		try {
			String str = (eElement.getElementsByTagName(tagName).item(0).getTextContent()).substring(0,8);
			Date date = sdf.parse(str);
			return new java.sql.Date(date.getTime());
		} catch (Exception e) {
			return null;
		}
	}
	
	
	
	
	
}