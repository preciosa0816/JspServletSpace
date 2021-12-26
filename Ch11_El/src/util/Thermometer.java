package util;

import java.util.HashMap;
import java.util.Map;

public class Thermometer {
	private Map<String,Double > lm= new HashMap<>();
	
	public Map<String, Double> getLm(){
		return lm;
	}
	
	public void setCelsius(String location, Double value) {
		lm.put(location, value);
	}

	public Double getCelsius(String location) {
		return lm.get(location);
	}
	
	public Double getFahrenheit(String location) {
		Double celsius = getCelsius(location);
		if(celsius==null) {
			return null;
		}
		return celsius.doubleValue()*1.8+32.0;
	}
	public String getInfo() {
		return "온도계변환기 1.1";
	}
}
