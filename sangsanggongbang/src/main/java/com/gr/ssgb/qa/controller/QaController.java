package com.gr.ssgb.qa.controller;

import java.util.List;

import com.gr.ssgb.hostclass.model.HostClassVO;
import com.gr.ssgb.member.model.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import com.gr.ssgb.qa.model.QaService;
import com.gr.ssgb.qa.model.QaVO;
import org.springframework.web.server.session.WebSessionManager;

import javax.servlet.http.HttpServletRequest;

@Controller
public class QaController {
    private static final Logger logger
            = LoggerFactory.getLogger(QaController.class);

    private final QaService qaservice;


    @Autowired
    private MemberService memberService;


    //DI - 생성자에 의한 종속객체 주입
    @Autowired
    public QaController(QaService qaservice) {
        this.qaservice = qaservice;
    }

    /*Q&A화면*/
    @RequestMapping("/qa/list")
    public String qaList(@RequestParam(required = true, value = "cNo") Integer cNo, Model model) {
        //1. 파라미터 읽어오기 - 출력
        logger.info("게시판 화면");

        //2. db작업 => 매퍼 xml에서 작업, dao, service, serviceImpl

        QaVO vo = new QaVO();
        vo.setcNo(cNo);
        List<QaVO> list = qaservice.selectQaAll(vo);
        logger.info("게시판 조회,결과 list.size={}", list.size());

        //3. model에 결과 저장
        model.addAttribute("cNo", cNo);
        model.addAttribute("list", list);

        //4. 뷰페이지 리턴
        return "qa/list";
    }

    /*등록/수정 기능*/
    @PostMapping("/qa/save")
    public String write_post(HttpServletRequest request,
                             @ModelAttribute QaVO vo,
                             @RequestParam("redirectUrl") String redirectUrl,
                             Model model) {
        logger.info("qa 작성 처리 화면");

        String msg = "글 작성 실패!";
        String url = !StringUtils.isEmpty(redirectUrl) ? redirectUrl : "/qa/list";

        try{
            String mId = (String) request.getSession().getAttribute("mId");
            if (mId == null)
                throw new Exception("로그인 정보가 없습니다.");

            Integer mNo = memberService.selectMno(mId);
            if (mNo == null)
                throw new Exception("로그인 정보가 없습니다.");

            if(vo.getQaNo() > 0) {

                int cnt = qaservice.updateQa(vo);
                if (cnt == 0)
                    throw new Exception("글 수정실패");

                msg = "수정이 완료 되었습니다.";
            }else {
                vo.setmNo(mNo);

                int cnt = qaservice.insertQa(vo);
                if (cnt == 0)
                    throw new Exception("글 작성실패");

                msg = "등록이 완료 되었습니다.";
            }

        }catch (Exception e) {
            msg = e.getMessage();
        }

        model.addAttribute("msg", msg);
        model.addAttribute("url", url);

        return "common/message";
    }
    /*수정기능*/
    @PostMapping("/qa/update")
    public String update_post(@ModelAttribute QaVO vo, Model model) {
         logger.info("qa 수정 처리 화면");

        int cnt = qaservice.updateQa(vo);
        logger.info("작성 수정, cnt={}", cnt);

        String msg = "글 수정 실패!", url = "/qa/list";
        if (cnt > 0) {
            msg = "수정이 완료 되었습니다.";
            url = "/qa/list";
        }

        model.addAttribute("msg", msg);
        model.addAttribute("url", url);

        return "common/message";
    }

    /*삭제기능*/
    @ResponseBody
    @GetMapping("/qa/delete")
    public String delete(@RequestParam int qaNo) {
        logger.info("qa 삭제 처리 화면");

        int cnt =qaservice.deleteQa(qaNo);
        String msg = "글 삭제 실패!", url = "/qa/list";
        if (cnt > 0) {
            msg = "삭제가 완료 되었습니다.";
            url = "/qa/list";
        }

        return "common/message";
    }

}