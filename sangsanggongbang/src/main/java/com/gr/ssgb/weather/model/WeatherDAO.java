package com.gr.ssgb.weather.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface WeatherDAO {
	public String restApiGetWeather();
	

}
