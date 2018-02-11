package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import domain.SecretVO;
import domain.TargetVO;
import jdbc.JdbcUtil;

public class SecretDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private final String INSERT_SECRET = "INSERT INTO `secret`(`id`, `ownerId`, `contents`, `school`) VALUES (?,?,?,?)";
	private final String GET_LAST_SECRET = "SELECT `id` FROM `secret` WHERE  id=(SELECT MAX(id) FROM `secret`);";
	private final String GET_SECRETS = "SELECT * FROM `secret` ORDER BY `id` DESC limit ?,?";
	private final String GET_SECRET = "SELECT * FROM `secret` WHERE id=?";
	private final String GET_SCHOOL_SECRETS = "SELECT * FROM `secret` WHERE school=? limit ?,?";
	public void insertSecret(SecretVO vo) {
		Connection conn = JdbcUtil.getConnection();
		TargetDAO targetDAO = new TargetDAO();
		UserDAO userDAO = new UserDAO();
		try {
			pstmt = conn.prepareStatement(INSERT_SECRET);
			
			pstmt.setString(1, null);
			pstmt.setString(2, vo.getOwnerId());
			pstmt.setString(3, vo.getContents());
			pstmt.setString(4, userDAO.getSchool(vo.getOwnerId()));
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JdbcUtil.close(conn, pstmt, rs);
	}
	
	public int getLastSecret() {
		Connection conn = JdbcUtil.getConnection();
		int result = 0;
		try {
			pstmt = conn.prepareStatement(GET_LAST_SECRET);
			rs = pstmt.executeQuery();
			
			rs.next();
			result = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JdbcUtil.close(conn, pstmt, rs);
		return result;
	}
	
	public SecretVO[] getSecrets(int startNum, int count) {
		Connection conn = JdbcUtil.getConnection();
		SecretVO[] vo = new SecretVO[count];
		try {
			pstmt = conn.prepareStatement(GET_SECRETS);
			
			System.out.println(startNum+" , "+count);
			pstmt.setInt(1, startNum * count);
			pstmt.setInt(2, (startNum + 1) * count);
			
			rs = pstmt.executeQuery();
			for (int i = 0; i < vo.length; i++) {
				rs.next();
				vo[i] = new SecretVO();
				vo[i].setId(rs.getInt(1));
				vo[i].setOwnerId(rs.getString(2));
				vo[i].setContents(rs.getString(3));
				vo[i].setSchool(rs.getString(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JdbcUtil.close(conn, pstmt, rs);
		return vo;
	}
	public SecretVO getSecret(int secretId) {
		Connection conn = JdbcUtil.getConnection();
		SecretVO vo = new SecretVO();
		try {
			pstmt = conn.prepareStatement(GET_SECRET);
			pstmt.setInt(1, secretId);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			vo.setId(rs.getInt(1));
			vo.setOwnerId(rs.getString(2));
			vo.setContents(rs.getString(3));
			vo.setSchool(rs.getString(4));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JdbcUtil.close(conn, pstmt, rs);
		return vo;
	}
	public SecretVO[] getSchoolSecrets(String school, int pageNum) {
		Connection conn = JdbcUtil.getConnection();
		SecretVO vo[] = new SecretVO[5];
		try {
			pstmt = conn.prepareStatement(GET_SCHOOL_SECRETS);
			pstmt.setString(1, school);
			pstmt.setInt(2, pageNum);
			pstmt.setInt(3, 5);
			rs = pstmt.executeQuery();
			
			for (int i = 0; i < vo.length; i++) {
				rs.next();
				vo[i] = new SecretVO();
				vo[i].setId(rs.getInt(1));
				vo[i].setOwnerId(rs.getString(2));
				vo[i].setContents(rs.getString(3));
				vo[i].setSchool(rs.getString(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JdbcUtil.close(conn, pstmt, rs);
		return vo;
	}
}
