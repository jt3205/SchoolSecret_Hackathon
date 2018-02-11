package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import domain.UserVO;
import jdbc.JdbcUtil;

public class UserDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private final String INSERT_USER = "INSERT INTO `user`(`id`, `password`, `name`, `school`, `birth`) VALUES (?,?,?,?,?)";
	private final String GET_USER = "SELECT * FROM `user` WHERE id=?";
	private final String GET_SCHOOL = "SELECT `school` FROM `user` WHERE id=?";
	private final String GET_STUDENTS = "SELECT `name` FROM `user` WHERE school=?";
	
	public boolean login(String id, String password) {
		return password.equals(getPassword(id));
	}
	
	public UserVO getUser(String id) {
		Connection conn = JdbcUtil.getConnection();
		UserVO vo = new UserVO();
		try {
			pstmt = conn.prepareStatement(GET_USER);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			vo.setId(rs.getString(1));
			vo.setPassword(rs.getString(2));
			vo.setName(rs.getString(3));
			vo.setSchool(rs.getString(4));
			vo.setBirth(rs.getString(5));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		JdbcUtil.close(conn, pstmt, rs);
		return vo;
	}
	
	private String getPassword(String id) {
		return getUser(id).getPassword();
	}
	
	public void insertUser(UserVO vo) {
		Connection conn = JdbcUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(INSERT_USER);
			
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPassword());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getSchool());
			pstmt.setString(5, vo.getBirth());
			
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JdbcUtil.close(conn, pstmt, rs);
	}

	public String getSchool(String id) {
		return getUser(id).getSchool();
	}
	
	public String[] getSchoolStudents(String school) {
		Connection conn = JdbcUtil.getConnection();
		String students[] = null;
		try {
			pstmt = conn.prepareStatement(GET_STUDENTS);
			pstmt.setString(1, school);
			rs = pstmt.executeQuery();
			rs.last();
			students = new String[rs.getRow()];
			rs.beforeFirst();
			for (int i = 0; i < students.length; i++) {
				rs.next();
				students[i] = rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return students;
	}
}
