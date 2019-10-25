
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class OpenApi {

    public static void main(String[] args) {
        int page=1;
        BufferedReader br =null;
        try{

//            String urlStr2=  "http://openapi.airkorea.or.kr/" +
//                    "openapi/services/rest/ArpltnInforInqireSvc/getMinuDustFrcstDspth?searchDate=2019-10-14" +
//                    "&serviceKey=q4K976kwETjwCKrBb8teZG9ZG9KockH7svXvlYmd6VjqRNc%2BRU3hdUSVJAH9JV8T0fSDEBdtG8wjDNWjG5tGXQ%3D%3D" ;

            String urlStr2= "http://openapi.airkorea.or.kr/" +
                    "openapi/services/rest/ArpltnInforInqireSvc/getMinuDustFrcstDspth?pageNo="+page +
                    "&serviceKey=q4K976kwETjwCKrBb8teZG9ZG9KockH7svXvlYmd6VjqRNc%2BRU3hdUSVJAH9JV8T0fSDEBdtG8wjDNWjG5tGXQ%3D%3D" ;

            URL url= new URL(urlStr2);

            HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
            br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream(),"UTF-8"));
            String result = "";
            String line;

            while((line = br.readLine()) != null) {
                result = result + line + "\n";
            }

            System.out.println(result);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
