package model;

public class weatherbean {
	
	private String cityStr;
	private String countryStr;
	private String clouds;
	
	
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
	
	public String getClouds() {
		return clouds;
	}
	public void setClouds(String clouds) {
		this.clouds = clouds;
	}
	
	
	

}
