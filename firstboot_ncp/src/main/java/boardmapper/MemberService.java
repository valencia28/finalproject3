package boardmapper;

import java.util.HashMap;
import java.util.List;

public interface MemberService {
	//회원리스트조회
	List<MemberDTO> memberList();
	
	//해당id회원조회
	MemberDTO oneMember(String id);
	
	//전체회원수조회
	int memberCount();
	
	//새로운 회원 가입: dto의 id를 조회한 후 존재하면 가입 안되고 없다면 가입
	String registerMember(MemberDTO dto);	
	
	//회원정보 수정
	String modifyMember(MemberDTO dto);
	
	
	//회원탈퇴
	String deleteMember(String id);
	
	//페이징처리리스트 가져오기
	List<MemberDTO> memberPagingList(int[] limit);
	
	//암호가 일치하는 회원 검색하기
	List<MemberDTO> searchMemberList(int[] pw_array);
	
	//
	List<MemberDTO> searchMemberList2(HashMap map);
	
	
	//
	List<MemberDTO> searchMemberList3(MemberDTO dto);
	
	//
	List<MemberDTO> searchMemberList4(MemberDTO dto);
}










