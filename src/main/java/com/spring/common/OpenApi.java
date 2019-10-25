package com.spring.common;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.BufferedReader;


public class OpenApi {

    private static String getTagValue(String tag, Element eElement) {
        NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
        Node nValue = (Node) nlList.item(0);
        if(nValue == null)
            return null;
        return nValue.getNodeValue();
    }

        public static void main(String[] args) {
            BufferedReader br =null;
            int page=1;
            try{
                while (true) {
//                    String urlStr = "http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getUnityAirEnvrnIdexSnstiveAboveMsrstnList?pageNo=" + page + "&numOfRows=10&ServiceKey=q4K976kwETjwCKrBb8teZG9ZG9KockH7svXvlYmd6VjqRNc%2BRU3hdUSVJAH9JV8T0fSDEBdtG8wjDNWjG5tGXQ%3D%3D&ver=1.3";

                    String urlStr = "http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty?sidoName=서울&pageNo="+page+"&numOfRows=10&ServiceKey=q4K976kwETjwCKrBb8teZG9ZG9KockH7svXvlYmd6VjqRNc%2BRU3hdUSVJAH9JV8T0fSDEBdtG8wjDNWjG5tGXQ%3D%3D&ver=1.3";

                    DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
                    DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();

                    Document doc = dBuilder.parse(urlStr);
                    doc.getDocumentElement().normalize();

                    // 파싱할 tag
                    NodeList nList = doc.getElementsByTagName("item");
                    System.out.println("파싱할 리스트 수 : " + nList.getLength());

//                    for (int temp = 0; temp < nList.getLength(); temp++) {
//                        Node nNode = nList.item(temp);
//                        if (nNode.getNodeType() == Node.ELEMENT_NODE) {
//
//                            Element eElement = (Element) nNode;
//                            System.out.println("######################");
//                            //System.out.println(eElement.getTextContent());
//                            System.out.println("stationName  : " + getTagValue("stationName", eElement));
//                            System.out.println("mangName  : " + getTagValue("mangName", eElement));
//                            System.out.println("dataTime  : " + getTagValue("dataTime", eElement));
//                            System.out.println("so2Value  : " + getTagValue("so2Value", eElement));
//                            System.out.println("coValue  : " + getTagValue("coValue", eElement));
//
//                            System.out.println();
//                        }    // for end
//                    }    // if end
//
//                    page += 1;
//                    System.out.println("page number : " + page);
//                    if (page > nList.getLength()) {
//                        break;
//                    }
                }
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
    }
