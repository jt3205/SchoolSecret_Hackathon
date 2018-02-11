package test;

import java.util.Arrays;

import dao.GoodDAO;
import dao.SecretDAO;
import dao.TargetDAO;
import dao.UserDAO;
import domain.SecretVO;
import domain.UserVO;
import jdbc.JdbcUtil;
import service.SecretService;

public class JDBCTest {
	public static void main(String[] args) {
		JdbcUtil jdbc = new JdbcUtil();
		//System.out.println(jdbc.getConnection());
		
		UserDAO userDAO = new UserDAO();
		//userDAO.insertUser(new UserVO("test", "test1234", "테스트", "테스트고등학교", "2000"));
		//System.out.println("로그인 결과 : " + userDAO.login("test", "test1234"));
		
		SecretService secretService = new SecretService();
//		for (int i = 0; i < 2 0; i++) {
//			secretService.insertSecret(new SecretVO(0,"test","testestestestestestestestestestestestestestest",null), new String[]{"박형진", "나영채"});
//		}
		
		TargetDAO targetDAO = new TargetDAO();
		//System.out.println(Arrays.toString(targetDAO.getTargets(3)));
		
		//System.out.println(secretService.getSecretJson(4));
		
		GoodDAO goodDAO = new GoodDAO();
		//System.out.println(goodDAO.getBestSecrets(0, 5));
		//System.out.println(secretService.getBestSecretJson(0));
		
		//System.out.println(secretService.getSchoolSecretJson("테스트고등학교", 0));
		System.out.println(Arrays.toString(userDAO.getSchoolStudents("테스트고등학교")));
	}
}
