package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.NoticeDao;
import com.javaex.vo.NoticeVo;

@Service("/service")
public class NoticeService {
	
	@Autowired
	NoticeDao noticeDao;
	
	//리스트
	public List<NoticeVo> list2() {
		System.out.println("[Service]:list2");
		
		List<NoticeVo> nList = noticeDao.list2();
		System.out.println(nList);
		
		return nList;
	}	
	
	//리스트 + 검색
	public List<NoticeVo> list1(String keyword) {
		System.out.println("[Service]:list1");
		System.out.println("keyword=" + keyword);
		
		List<NoticeVo> nList = noticeDao.list1(keyword);
		System.out.println(nList);
		
		return nList;
	}	
	
	//리스트 + 검색 기능 + 페이징
	public Map<String, Object> list(String keyword, int crtPage) {
		System.out.println("[Service]:list");
		//System.out.println("keyword=" + keyword);
		
		//crtPage -> 시작번호, 끝번호를 불러와야 한다. rownum 1--> 1,10 2-->11,20 3-->21,30
		////////////////////////////////////
		//리스트 구하기
		////////////////////////////////////

		//페이지당 글 갯수
		int listCnt = 10;
		
		//현재 페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);
		
		//시작글 번호 startRNum                           
		int startRNum = (crtPage-1) * listCnt + 1;     //0*10 -> 0+1, 1*10->10+1,  2*10->20+1, 3*10->30+1
		
		//끝번호 endRNum
		int endRNum = (startRNum + listCnt) -1;
		
		List<NoticeVo> nList = noticeDao.list(keyword,startRNum,endRNum);
		
		////////////////////////////////////
		//페이징 계산
		////////////////////////////////////
		
		//페이지당 버튼 개수
		int pageBtnCount = 5;
		
		//전제 글갯수 구하기
		int totalCount = noticeDao.selectTotalCnt(keyword);
			
		//마지막 버튼 번호
		int endPageBtnNo = (int)Math.ceil(crtPage/(double)pageBtnCount) * pageBtnCount;  
			
		//시작 버튼 번호
		int startPageBtnNo = endPageBtnNo - (pageBtnCount-1);
				
		//다음버튼 --boolean형
		boolean next;
		
		if(endPageBtnNo * listCnt < totalCount) { 
			next = true;
		}else {                                  
			next = false;
			endPageBtnNo = (int)Math.ceil(totalCount/(double)listCnt); 
		}
		
		//이전버튼 --boolean형
		boolean prev;
		if(startPageBtnNo !=1) {
			prev = true;
		}else {
			prev = false;
		}
		
		//nList, prev, startPageBtnNo, endPageBtnNo, next --> jsp에 전달(map으로 전달+ list까지 묶어서 보내기)
		Map<String, Object> pMap = new HashMap<String, Object>();
		pMap.put("nList", nList);
		pMap.put("prev", prev);
		pMap.put("startPageBtnNo", startPageBtnNo);
		pMap.put("endPageBtnNo", endPageBtnNo);
		pMap.put("next", next);
		
		return pMap;
	}
	
	//수정
	public int modify(NoticeVo noticeVo) {
		System.out.println("[Service]:modify");
		
		return noticeDao.update(noticeVo);
	}
	
	//수정폼
	public NoticeVo modifyForm(int no) {
		System.out.println("[Service]:modifyForm");
		
		return noticeDao.selectOne(no);
	}
	
	//등록 + join_no
	public int write(NoticeVo noticeVo) {
		System.out.println("[Service]:write");
	
		//noticeVo.setJoin_no(join_no);
		System.out.println(noticeDao.selJoin(noticeVo.getUser_no()));
		noticeVo.setJoin_no(noticeDao.selJoin(noticeVo.getUser_no()));
		return noticeDao.insert(noticeVo);
	}
	
	//삭제
	public int remove(int no) {
		System.out.println("[Service]:remove");
		
		return noticeDao.delete(no);
	}
	
	//글보기
	public NoticeVo read(int no) {
		System.out.println("[Service]:read");
		
		noticeDao.updateHit(no);
		System.out.println("[Service]:read"+noticeDao.toString());
		
		NoticeVo nVo = noticeDao.selectOne(no);
		System.out.println("[Service]:read" + nVo.toString());
		
		return nVo;
	}
}
