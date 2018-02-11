package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import domain.SecretVO;
import jdbc.JdbcUtil;
import test.JDBCTest;

public class GoodDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private final String ADD_GOOD = "INSERT INTO `good`(`secretId`, `userId`) VALUES (?,?)";
	private final String GET_GOOD_USERID = "SELECT `userId` FROM `good` WHERE secretId = ?";
	private final String GET_BEST = "SELECT secretId FROM good GROUP BY secretId ORDER BY COUNT(*) DESC limit ?,?";

	public void addGood(int secretId, String userId) {
		Connection conn = JdbcUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(ADD_GOOD);
			pstmt.setInt(1, secretId);
			pstmt.setString(2, userId);
			
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JdbcUtil.close(conn, pstmt, rs);
	}
	
	public int getGoodNum(int secretId) {
		Connection conn = JdbcUtil.getConnection();
		int result = -1;
		try {
			pstmt = conn.prepareStatement(GET_GOOD_USERID);
			pstmt.setInt(1, secretId);
			rs = pstmt.executeQuery();
			
			rs.last();
			result = rs.getRow();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JdbcUtil.close(conn, pstmt, rs);
		return result;
	}
	
	public SecretVO[] getBestSecrets(int startNum, int count) {
		Connection conn = JdbcUtil.getConnection();
		int secretIdArr[] = new int[count];
		try {
			pstmt = conn.prepareStatement(GET_BEST);
			pstmt.setInt(1, startNum*count);
			pstmt.setInt(2, count);
			
			rs = pstmt.executeQuery();
			
			for (int i = 0; i < secretIdArr.length; i++) {
				rs.next();
				secretIdArr[i] = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		SecretVO vo[] = new SecretVO[count];
		SecretDAO dao = new SecretDAO();
		for (int i = 0; i < secretIdArr.length; i++) {
			vo[i] = dao.getSecret(secretIdArr[i]);
		}
		JdbcUtil.close(conn, pstmt, rs);
		return vo;
	}
}
