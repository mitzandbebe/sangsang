package com.gr.ssgb.hostclass.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gr.ssgb.member.model.ConcernVO;

@Service
public class HostClassServiceImpl implements HostClassService{
	private final HostClassDAO hostClassDao;

	@Autowired
	public HostClassServiceImpl(HostClassDAO hostClassDao) {
		this.hostClassDao = hostClassDao;
	}

	@Override
	public List<CategoryVO> selectCategoryAll() {
		return hostClassDao.selectCategoryAll();
	}

	@Override
	public int insertLocation(LocationVO locationVo) {
		return hostClassDao.insertLocation(locationVo);
	}

	@Override
	public int insertClass(HostClassVO hostClassVo) {
		return hostClassDao.insertClass(hostClassVo);
	}

	@Override
	public int insertContents(ContentsVO contentsVo) {
		return hostClassDao.insertContents(contentsVo);
	}

	@Override
	public List<LocationVO> selectBylocation(LocationVO locationVo) {
		return hostClassDao.selectBylocation(locationVo);
	}

	@Override
	public int selectByCNo(HostClassVO hostClassVo) {
		return hostClassDao.selectByCNo(hostClassVo);
	}

	@Override
	public List<HostClassVO> selectClassAll() {
		return hostClassDao.selectClassAll();
	}

	@Override
	public String selectThumbnail(int cNo) {
		return hostClassDao.selectThumbnail(cNo);
	}

	@Override
	public List<Map<String,Object>> selectClassAllContents() {
		return hostClassDao.selectClassAllContents();
	}

	@Override
	public int selectByLNo(LocationVO locationVo) {
		return hostClassDao.selectByLNo(locationVo);
	}

	@Override
	public List<Map<String, Object>> selectClassbyCNo(int cNo) {
		return hostClassDao.selectClassbyCNo(cNo);
	}
	@Override
	public HostClassVO selectClassbyCNo2(int cNo) {
		return hostClassDao.selectClassbyCNo2(cNo);
	}

	@Override
	public List<Map<String, Object>> selectClassCategory(String categoryName) {
		return hostClassDao.selectClassCategory(categoryName);
	}

	@Override
	public int updateBylocation(LocationVO locationVo) {
		return hostClassDao.updateBylocation(locationVo);
	}

	@Override
	public int updateByClass(HostClassVO hostClassVo) {
		return hostClassDao.updateByClass(hostClassVo);
	}

	@Override
	public int updateByContents(ContentsVO contentsVo) {
		return hostClassDao.updateByContents(contentsVo);
	}

	@Override
	public int deleteContents(int cNo) {
		return hostClassDao.deleteContents(cNo);
	}

	@Override
	public int deleteClass(int cNo) {
		return hostClassDao.deleteClass(cNo);
	}

	@Override
	public List<Map<String, Object>> selectClassAllOfHost(int hNo) {
		return hostClassDao.selectClassAllOfHost(hNo);
	}

	@Override
	public int selectClassCnt(int hNo) {
		return hostClassDao.selectClassCnt(hNo);
	}

	@Override
	public List<Map<String, Object>> selectClassLoc(String loc) {
		return hostClassDao.selectClassLoc(loc);
	}

	@Override
	public int selectConcernbyCNo(ConcernVO concernVo) {
		return hostClassDao.selectConcernbyCNo(concernVo);
	}

	@Override
   public List<HostClassVO> findBySearchClass(HostClassVO hostClassVo) {
      return hostClassDao.findBySearchClass(hostClassVo);
   }






	


	
}
