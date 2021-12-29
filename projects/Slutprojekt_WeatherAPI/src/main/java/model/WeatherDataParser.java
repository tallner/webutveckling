package model;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public class WeatherDataParser {
	
	public static String getWeather(WeatherBean wb) throws IOException{
		
		//concatenate the api search string
		String URLtosend = 
						"https://api.openweathermap.org/data/2.5/weather?q="+ 
						wb.getCityStr() + ","+ wb.getCountryStr() +
						"&appid=35ec794bb2d83a735fb4edfd249390a7&mode=xml";
		
//		System.out.println(URLtosend);
		
		//create a URL with the search string
		URL line_api_url = new URL(URLtosend);
		
		//setup and open the HTTP connection with the above URL
		HttpURLConnection linec = (HttpURLConnection) line_api_url.openConnection();
		
		//use the connection for both in and output
		linec.setDoInput(true);
		linec.setDoOutput(true);
		
		//use the GET request for the API call
		linec.setRequestMethod("GET");
		
		//Set up a buffer reader to read the input stream from the connection
		BufferedReader in = new BufferedReader(new InputStreamReader(linec.getInputStream()));
		
		//build the response from the api in a string
		String inputline;
		
		String Apiresponse = "";
		
		while ((inputline = in.readLine()) != null ) {
//			System.out.println(inputline);
			Apiresponse += inputline;
		}
		
		in.close();
		
		//convert the string to XML document
		Document doc = convertStringToXMLDocument(Apiresponse);		
		
		doc.getDocumentElement().normalize(); //@CT?
				
		
		//extract the temperature from the request
		NodeList nList = doc.getElementsByTagName("temperature");
		
		String returnValue = "";
		
		for (int i=0; i < nList.getLength() ; i++) {
			
			Node node = nList.item(i);
			
			if (node.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) node;
				
				String K_Temp = eElement.getAttribute("value");
				double dtemp = Double.parseDouble(K_Temp) - 272;
				String C_Temp = String.valueOf((int) dtemp); 
				
				wb.setTemperature(C_Temp);
				
			}
		}
		
		//extract the cloudiness from the request		
		nList = doc.getElementsByTagName("clouds");
		
		for (int i=0; i < nList.getLength() ; i++) {
			
			Node node = nList.item(i);
			
			if (node.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) node;
				
				String Clouds = eElement.getAttribute("value");
				wb.setClouds(Clouds);
				
			}
		}
		
		//extract the last updated time and date from the request		
		nList = doc.getElementsByTagName("lastupdate");
		
		for (int i=0; i < nList.getLength() ; i++) {
			
			Node node = nList.item(i);
			
			if (node.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) node;
				
				String dt = eElement.getAttribute("value");
				wb.setDateTime(dt);
				
			}
		}
		
		
		
		return returnValue;
		
		
		
		
	}
	
	
	
	
	private static Document convertStringToXMLDocument(String XMLstring) {
		
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		
		DocumentBuilder builder = null;
		
		try {
			
			
			builder = factory.newDocumentBuilder();
			
			Document doc = builder.parse(new InputSource(new StringReader(XMLstring)));
			
			return doc;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
 		
		
		return null;
		
	}
	
	
	

}
