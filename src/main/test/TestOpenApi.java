import org.json.JSONObject;
import org.json.XML;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class TestOpenApi {


    public static void main(String[] args) {
        BufferedReader br =null;
        String SERVICE_KEY = "q4K976kwETjwCKrBb8teZG9ZG9KockH7svXvlYmd6VjqRNc%2BRU3hdUSVJAH9JV8T0fSDEBdtG8wjDNWjG5tGXQ%3D%3D";
        try{

            String urlStr="http://api.visitkorea.or.kr/openapi/service/rest/EngService/locationBasedList?" +
                    "ServiceKey="+SERVICE_KEY+"&numOfRows=10&pageSize=10&pageNo=1&startPage=1&MobileOS=ETC&MobileApp=AppTest&listYN=Y&arrange=A&mapX=126.981611&mapY=37.568477&radius=1000";

            URL url= new URL(urlStr);
            HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
            br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream(),"UTF-8"));
            String result = "";
            String line;

            while((line = br.readLine()) != null) {
                result = result + line + "\n";
            }



            System.out.println(result);


//            System.out.println(result);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}

