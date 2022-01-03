package com.gr.ssgb.balancing.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gr.ssgb.balancing.model.BalancingService;
import com.gr.ssgb.balancing.model.BalancingVO;
import com.gr.ssgb.common.ConstUtil;
import com.gr.ssgb.common.PaginationInfo;
import com.gr.ssgb.common.SearchVO;

@Controller
@RequestMapping("/dashboard/host")
public class BalancingController {	
	private static final Logger logger
	=LoggerFactory.getLogger(BalancingController.class);

	private final BalancingService balancingService;

	//DI - 생성자에 의한 종속객체 주입
	@Autowired
	public BalancingController(BalancingService balancingService) {
		this.balancingService = balancingService;
		logger.info("정산요청목록 생성자주입");
	}

	@RequestMapping("/balancing/list")
	public String bcList(@ModelAttribute SearchVO searchVo, Model model,
			@RequestParam(defaultValue = "0") int bNo) {
		//1. 파라미터 읽어오기 - 출력
		logger.info("정산목록 목록 페이지, 파라미터 searchVo={}", searchVo);

		//[1] PaginationInfo 객체 생성 - 계산해줌
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		//[2] searchVo에 값 셋팅
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);

		List<BalancingVO> list=balancingService.selectBalancingAll(searchVo);
		logger.info("정산목록 조회,결과 list.size={}", list.size());

		//[3] totalRecord 구하기
		int totalRecord=balancingService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);

		//3. model에 결과 저장
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);
		
		//4. 뷰페이지 리턴
		return "dashboard/host/balancing/list";
	}
	
	@RequestMapping("/balancing")
	public String totalprice(@ModelAttribute BalancingVO balancingVo, Model model) {
		//1. 파라미터 읽어오기 - 출력
		List<BalancingVO> list=balancingService.totalPrice(balancingVo);
		logger.info("정산총액 조회,결과 list.size={}", list.size());
		
		model.addAttribute("list", list);
		
		return "dashboard/host/balancing/balancing";
	}

	@RequestMapping("/balancing/submit")
	public String submitUpdateBflag(@RequestParam(defaultValue = "0") int bNo, Model model) {
		logger.info("정산신청 파라미터 bNo={}", bNo);
		
		Integer cnt=balancingService.submitUpdate(bNo);
		logger.info("정산신청 결과 cnt={}", cnt);
		
		return "redirect:/dashboard/host/balancing";
	}
	
	@GetMapping("/excel/download")
    public void excelDownload(@ModelAttribute BalancingVO balancingVo, 
    		HttpServletResponse response) throws IOException {
		
		List<BalancingVO> list=balancingService.totalPrice(balancingVo);
		logger.info("엑셀다운 리스트 결과={}", list.size());
		
	    // 파일명 설정
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd:MM:ss");
        String time = simpleDateFormat.format(date);
        String fileName = "balancing" + "_" + time + ".xlsx";
		
        Workbook wb = new XSSFWorkbook();
        Sheet sheet = wb.createSheet("첫번째 시트");
        Row row = null;
        Cell cell = null;
        int rowNum = 0;

        // Header
        row = sheet.createRow(rowNum++);
        cell = row.createCell(0);
        cell.setCellValue("정산번호");
        cell = row.createCell(1);
        cell.setCellValue("클래스번호");
        cell = row.createCell(2);
        cell.setCellValue("호스트번호");
        cell = row.createCell(3);
        cell.setCellValue("참여인원");
        cell = row.createCell(4);
        cell.setCellValue("진행일자");
        cell = row.createCell(5);
        cell.setCellValue("정산유무");

        // Body
        for (int i=0; i<list.size(); i++) {
            row = sheet.createRow(rowNum++);
            cell = row.createCell(0);
            cell.setCellValue(list.get(i).getbNo());
            cell = row.createCell(1);
            cell.setCellValue(list.get(i).getcNo());
            cell = row.createCell(2);
            cell.setCellValue(list.get(i).gethNo());
            cell = row.createCell(3);
            cell.setCellValue(list.get(i).getPpnum());
            cell = row.createCell(4);
            cell.setCellValue(simpleDateFormat.format(list.get(i).getbReqDate()));
            cell = row.createCell(5);
            cell.setCellValue(list.get(i).getbFlag());
        }

        // 컨텐츠 타입과 파일명 지정
        response.setContentType("application/x-msdownload; text/html; charset=UTF-8;"); // msie, tRIDE
        response.setContentType("application/octet-stream; text/html; charset=UTF-8;");
        
        response.setContentType("ms-vnd/excel");
        response.setHeader("Content-Transfer-Encoding", "binary");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");

        // Excel File Output
        wb.write(response.getOutputStream());
        wb.close();


    }



}
