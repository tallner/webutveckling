package model;

public class WeatherBean {
	
	private String cityStr;
	private String countryStr;
	private String temperature;
	private String clouds;
	private String DateTime;
	
	
	public WeatherBean(String cityStr, String countryStr) {
		
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
	
	public String getClouds() {
		return clouds;
	}
	
	public void setClouds(String clouds) {
		this.clouds = clouds;
		
	}
	
	public String getDateTime() {
		return DateTime;
	}
	
	public void setDateTime(String time) {
		this.DateTime = time;
		
	}


	@Override
	public String toString() {
		return cityStr.toUpperCase() +", "+ countryStr.toUpperCase() + "<br>" + " Temp=" + temperature+"°C" + " Clouds=" + clouds + "%" + " DT=" + DateTime;
	}
	
	
	

}
