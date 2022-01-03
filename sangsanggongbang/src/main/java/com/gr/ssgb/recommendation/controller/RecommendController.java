package com.gr.ssgb.recommendation.controller;
 
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.recommendation.model.RecommendationService;
import com.gr.ssgb.recommendation.model.RecommendationVO;

@Controller
@RequestMapping("/recommendation")
public class RecommendController {
	
	private static final Logger logger = LoggerFactory.getLogger(RecommendController.class);
	
	private final RecommendationService recommendationService;
	
	@Autowired
	public RecommendController(RecommendationService recommendationService) {
		this.recommendationService = recommendationService;
	}
	
	@GetMapping("/recommendWrite")
	public String recommendationWrite() {
		logger.info("불편사항 화면 등장");
		return "/recommendation/recommendWrite";
	}

	@PostMapping("/recommendWrite")
	public String recommendationWrite(@ModelAttribute RecommendationVO vo, Model model) {
		logger.info("불편사항 파라미터 vo={}", vo);

		int cnt = recommendationService.insertRecommendation(vo);
		logger.info("불편사항 작성 성공여부 cnt={}", cnt);
		String msg = "불편사항 작성에 실패했습니다", url = "/recommendation/recommendWrite";
		if (cnt > 0) {
			msg = "불편사항 작성에 성공했습니다";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/message";
	}
}
