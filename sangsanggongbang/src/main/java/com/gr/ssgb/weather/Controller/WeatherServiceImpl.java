package com.gr.ssgb.weather.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WeatherServiceImpl implements WeatherService {
	private final WeatherDAO weatherDao;
	
	@Autowired
	public WeatherServiceImpl(WeatherDAO weatherDao) {
		this.weatherDao = weatherDao;
	}
	
	public String restApiGetWeather() {
		return weatherDao.restApiGetWeather();
	}
	

}
