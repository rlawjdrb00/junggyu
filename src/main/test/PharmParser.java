//import org.xmlpull.v1.XmlPullParser;
//import org.xmlpull.v1.XmlPullParserFactory;
//
//import java.io.BufferedInputStream;
//import java.net.URL;
//import java.util.ArrayList;
//
//public class PharmParser {
//
//    public final static String PARAM_URL = "http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getMinuDustFrcstDspth?searchDate=2019-10-14";
//    public final static String SERVICE_KEY = "K3gnwsDFzs6Gl37LrEUb33iMFWWQ0kfh9gVVgIRy2tZuVyuor0TsIcXMK03rXaoS1LySk5LuSOA3YS%2B2vsAMxw%3D%3D";
//
//
//    public PharmParser(){
//        try{
//            apiParserSearch();
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//    }
//
//    public void apiParserSearch() throws Exception{
//        URL url = new URL(getURLParam(null));
//        XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
//        factory.setNamespaceAware(true);
//        XmlPullParser xpp = factory.newPullParser();
//        BufferedInputStream bis = new BufferedInputStream(url.openStream());
//        xpp.setInput(bis,"utf-8");
//
//        String tag = null;
//        int event_type = xpp.getEventType();
//
//        ArrayList<String> list = new ArrayList<String>();
//
//        String addr = null;
//        while(event_type != XmlPullParser.END_DOCUMENT){
//            if(event_type == XmlPullParser.START_TAG){
//                tag = xpp.getName();
//            }else if(event_type == XmlPullParser.TEXT){
//                if(tag.equals("addr")){
//                    addr = xpp.getText();
//                }
//            }else if (event_type == XmlPullParser.END_TAG){
//                tag = xpp.getName();
//                if(tag.equals("item")){
//                    list.add(addr);
//                }
//            }
//            event_type= xpp.next();
//        }
//        printList(list);
//
//
//
//    }
//
//    private void printList(ArrayList<String> list){
//        for(String entity : list){
//            System.out.println(entity);
//        }
//    }
//
//    private String getURLParam(String search){
//        String url = PARAM_URL + "?ServiceKey="+SERVICE_KEY;
//        if(search !=null){
//            url = url+"&yadmNm"+search;
//        }
//        return url;
//    }
//
//    public static void main(String[] args){
//        new PharmParser();
//        System.out.println("QWeqwe");
//    }
//}