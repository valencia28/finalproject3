package spring.mybatis.board;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//직접 데이터가 존재하는 곳에 접근하는 객체
//SQL.MAPPING.XML 정의 sql들 6개 각각 실행 메서드 6개 정의
@Repository   //bean으로 만들어달라는 태그
public class MemberDAO {
	@Autowired
	SqlSession session;
	
	//public void setSession(SqlSession session) {
	//	this.session = session;
	//}
	
	//전체 회원 정보 조회 - List형태로 가져옴
	List<MemberDTO> memberList(){
		List<MemberDTO> list = session.selectList("memberList"); 
		//for(MemberDTO dto : list) { 
			//System.out.println(dto); 
		//}
		return list;
	}
		
	
	//1명의 회원 조회
	MemberDTO oneMember(String id) {
		MemberDTO dto = session.selectOne("oneMember" , id);
		//System.out.println(dto);
		return dto;	
	}
	
	
	//회원 총 수 조회
	int memberCount(){
		int count = session.selectOne("memberCount");
		//System.out.println(count + " 명의 회원이 있습니다.");
		return count;
	}
	
	
	//insert -> 인서트한 행 개수가 리턴됨
	int insertMember(MemberDTO dto) {
		int insertrows = session.insert("insertMemberDTO", dto);
		//session.commit();
		//System.out.println(insertrows + " 명의 회원 추가되었습니다.");
		return insertrows;
	}	
	
	
	
	//MemberDTO 객체를 통해 db insert하기
	//만약 set을 하지 않으면 null값이 들어감
	/*MemberDTO dto = new MemberDTO();
	dto.setId("mybatis2");
	dto.setName("테스트");
	dto.setPw(5555);
	dto.setEmail("test@test.com");
	dto.setPhone("010-8975-8659");			
	
	int insertrows = session.insert("insertMemberDTO", dto);
	session.commit();
	System.out.println(insertrows + " 명의 회원 추가되었습니다."); */
	
	
	int updateMember(MemberDTO dto) {
		//MemberDTO dto = new MemberDTO();
		//dto.setId("mybatis2");		
		//dto.setPw(2000);
		//dto.setEmail("mybatis22@test.com");				
		
		return session.update("updateMember", dto);
		//session.commit();
		//System.out.println(dto.getId() + " 회원님의 암호와 이메일이 수정되었습니다.");
	}
	
	
	int deleteMember(String id) {
		return session.delete("deleteMember", id);
		//session.commit();
		//System.out.println("mybatis2" + " 회원 정보 삭제되었습니다.");		
	}
	
	
	//페이징처리리스트
	List<MemberDTO> memberPagingList(int [] limit){
		return session.selectList("memberPagingList", limit);
	}
	
	//암호검색리스트
	List<MemberDTO>searchMemberList(int [] pw_array){
		/*ArrayList<Integer> list = new ArrayList();
		list.add(1111);
		list.add(2222);
		list.add(3333);
		return session.selectList("searchMemberList", list);
		//list로 바꾸려면 dynamicsql-mapping.xml에서 collection 타입을 list로 바꿔야 함 */
		return session.selectList("searchMemberList", pw_array);
	}
	
	//컬럼명, 값에 맞는 검색리스트
	List<MemberDTO> searchMemberList2(HashMap map){
		return session.selectList("searchMemberList2", map);
	}
	
	
	//name 변수값 존재여부에 따른 검색리스트
	List<MemberDTO> searchMemberList3(MemberDTO dto){
		return session.selectList("searchMemberList3",dto); //dto.getName()이 있으면 where 절을 만듦
	}
	
	
	//
	List<MemberDTO> searchMemberList4(MemberDTO dto){
		return session.selectList("searchMemberList4",dto); 
	}
	
	
}



















