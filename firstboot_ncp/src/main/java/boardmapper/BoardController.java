package boardmapper;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	@Autowired
	@Qualifier("boardServiceImpl")
	BoardService service;
	
 //boardlist 
 //boardwrite
// "/" = start.jsp	
	@RequestMapping("/")
	String start(){
		return "board/start";
	}
	@GetMapping("/boardwrite")
	String writeform() {
		return "board/writeform";
	}
	
	@PostMapping("/boardwrite")
	ModelAndView writeprocess(BoardDTO dto){//title, contents, writer, pw
		int insertrow = service.registerBoard(dto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertrow", insertrow);
		mv.setViewName("board/start");
		return mv;
	}
	
	@RequestMapping("/boardlist")
	ModelAndView boardlist(@RequestParam(value="pagenum", required=false, defaultValue="1") int pagenum) {
		int pagecount = 3;
		//pagenum - 1;   //0번 인덱스부터 1, 2 (이렇게 해야 3개)
		int start = (pagenum -1) * pagecount;		
		int limit[] = {start, pagecount};
		
		int totalboard = service.getTotalBoard();
		List<BoardDTO> boardlist = service.getPagingBoardList(limit);
		
				
		ModelAndView mv = new ModelAndView();
		mv.addObject("totalboard", totalboard);
		mv.addObject("boardlist", boardlist);		
		mv.setViewName("board/list");
		return mv;
	}
	
	@RequestMapping("/boarddetail")
	ModelAndView boarddetail(int seq) {
		//현재 번호에 대한 upeate viewcount 1증가
		//게시물 레코드 조회하는 sql필요
		
		BoardDTO dto = service.updateViewcountAndGetDetail(seq);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("board/detail");
		
		mv.addObject("detaildto", dto);
		
		return mv;
	}
	
	
	@RequestMapping("/boarddelete")
	String boarddelete(int seq) {
		int delete = service.deleteBoard(seq);
		
		return "redirect:/boardlist";
	}
	
	
	@RequestMapping("/boardupdate")
	String boardupdate(BoardDTO dto) {
		
		service.updateBoard(dto);
		
		return "redirect:/boardlist";
	}
	
	@RequestMapping("/boardsearchlist")
		ModelAndView boardsearchlist(@RequestParam(value="pagenum", required=false, defaultValue="1") int pagenum,
			String item, String word) {
			
			int pagecount = 3;
			int start = (pagenum -1) * pagecount;		
			int limit[] = {start, pagecount};
			
		
			HashMap map = new HashMap();			
			if(item.equals("all")) {
				map.put("searchcolname", null);
			}
			else {
				map.put("searchcolname", item);
			}
			map.put("searchvalue", "%" + word + "%");
			
			map.put("limit", limit);
			
			int totalsearchboard = service.getBoardSEarchCount(map); 			
			
			List<BoardDTO> boardsearchlist = service.getSearchPagingBoardList(map);
			
					
			ModelAndView mv = new ModelAndView();
			mv.addObject("totalsearchboard", totalsearchboard);
			mv.addObject("boardsearchlist", boardsearchlist);		
			mv.setViewName("board/searchlist");
			return mv;
	}
	
	
}



















