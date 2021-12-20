package model;

public class weatherbean {
	
	private String cityStr;
	private String countryStr;
	private String temperature;
	
	
	public weatherbean(String cityStr, String countryStr) {
		
		this.cityStr = cityStr;
		this.countryStr = countryStr;
	}


	public String getCityStr() {
		return cityStr;
	}
	
	public String getCountryStr() {
		return countryStr;
	}
	public void setCountryStr(String countryStr) {
		this.countryStr = countryStr;
	}
	
	public String getTemperature() {
		return temperature;
	}
	
	public void setTemperature(String temp) {
		temperature = temp;
		
	}
	
	
	

}
