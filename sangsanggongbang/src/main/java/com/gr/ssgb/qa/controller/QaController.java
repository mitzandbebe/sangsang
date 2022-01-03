package com.gr.ssgb.qa.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.qa.model.QaService;
import com.gr.ssgb.qa.model.QaVO;

@Controller
public class QaController {
    private static final Logger logger
            = LoggerFactory.getLogger(QaController.class);

    private final QaService qaservice;

    //DI - 생성자에 의한 종속객체 주입
    @Autowired
    public QaController(QaService qaservice) {
        this.qaservice = qaservice;
    }

    @RequestMapping("/qa/list")
    public String qaList(Model model) {
        //1. 파라미터 읽어오기 - 출력
        logger.info("게시판 화면");

        //2. db작업 => 매퍼 xml에서 작업, dao, service, serviceImpl
        List<QaVO> list = qaservice.selectQaAll();
        logger.info("게시판 조회,결과 list.size={}", list.size());

        //3. model에 결과 저장
        model.addAttribute("list", list);

        //4. 뷰페이지 리턴
        return "qa/list";
    }

    @GetMapping("/qa/write")
    public void write_get() {
        logger.info("qa 작성 화면");

    }

    @PostMapping("/qa/write")
    public String write_post(@ModelAttribute QaVO qaVo, Model model) {
        logger.info("qa 작성 처리 화면");
        int cnt = qaservice.insertQa(qaVo);
        logger.info("작성 처리, cnt={}", cnt);

        String msg = "글 작성 실패!", url = "/qa/write";
        if (cnt > 0) {
            msg = "등록이 완료 되었습니다.";
            url = "/qa/list";

        }

        model.addAttribute("msg", msg);
        model.addAttribute("url", url);

        return "common/message";


    }
}