package com.gr.ssgb.weather.Controller;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface WeatherDAO {
	public String restApiGetWeather();
	

}
