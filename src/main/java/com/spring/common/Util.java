package com.spring.common;


import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;

import javax.xml.bind.annotation.XmlRootElement;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;



@XmlRootElement
public class Util {
    public static List getArray(String apiUrl) throws  Exception{
        String result = Util.getApiDate(apiUrl);

        JSONObject jsonObject = Util.xmlToJson(result);
        JSONObject responseJson = jsonObject.getJSONObject("response");
        JSONObject bodyJson = responseJson.getJSONObject("body");
        JSONObject itemsJson = bodyJson.getJSONObject("items");
        Object itemJson = itemsJson.get("item");
        JSONArray arr = new JSONArray();
        if(itemJson.getClass().getTypeName().contains("JSONArray")){
            arr = (JSONArray) itemJson;
        }else{
            arr.put(itemJson);
        }
        return arr.toList();
    }

    public static JSONObject xmlToJson(String xmlStr){
        JSONObject jsonObject = XML.toJSONObject(xmlStr);
        return jsonObject;
    }


    public static String getApiDate(String urlStr) throws Exception{
        BufferedReader br = null;
        InputStreamReader isr = null;
        try{
            URL url = new URL(urlStr);
            HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
            urlConnection.setRequestMethod("GET");
            isr = new InputStreamReader(urlConnection.getInputStream());
            br = new BufferedReader(isr);
            String result ="";
            String line;

            while((line = br.readLine()) != null){
                result = result + line;
            }
            return result;
        }catch (Exception e){
            throw e;
        }finally {
            if(br!=null){
                try{
                    br.close();
                }catch (IOException e){
                    e.printStackTrace();
                }
            }
            if(isr != null){
                try{
                    isr.close();;
                }catch (IOException e){
                    e.printStackTrace();
                }
            }
        }
    }
}
