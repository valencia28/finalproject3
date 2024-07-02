package spring.mybatis.board;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringMybatisMain {

	public static void main(String[] args) {
		ApplicationContext factory = new ClassPathXmlApplicationContext
				("spring/mybatis/service/spring-mybatis.xml");
		
		MemberService service = factory.getBean("memberServiceImpl", MemberService.class);
		List<MemberDTO> list = service.memberList();
		for (MemberDTO dto : list) {
			System.out.println(dto);
		}
		
		//총회원수
		int totalcount = service.memberCount();
		
		//5명씩 한페이지에 보여주기
		int membersperpage = 5;
		int totalpage = 0;
		if(totalcount % membersperpage == 0) {
			totalpage = totalcount / membersperpage;
		}
		else {
			totalpage = totalcount / membersperpage + 1;
		}
		
		for(int i=1; i<= totalpage; i++) {
			System.out.println(i + "\t");
		}
		System.out.println("페이지 중 선택가능합니다.");

	}

}
