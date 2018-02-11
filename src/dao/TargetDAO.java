package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import domain.TargetVO;
import jdbc.JdbcUtil;

public class TargetDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;

	private final String INSERT_TARGETS = "INSERT INTO `target`(`secretId`, `targetId`) VALUES (?,?)";
	private final String GET_TARGETS = "SELECT `targetId` FROM `target` WHERE secretId = ?";
	
	public void insertTargets(TargetVO vo[]) {
		Connection conn = JdbcUtil.getConnection();
		for (int i = 0; i < vo.length; i++) {
			try {
				pstmt = conn.prepareStatement(INSERT_TARGETS);
				
				pstmt.setInt(1, vo[i].getSecretId());
				pstmt.setString(2, vo[i].getTargetId());
				
				pstmt.execute();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public String[] getTargets(int secretId) {
		Connection conn = JdbcUtil.getConnection();
		String result[] = null;
		try {
			pstmt = conn.prepareStatement(GET_TARGETS);
			pstmt.setInt(1, secretId);
			
			rs = pstmt.executeQuery();

			rs.last();
			result = new String[rs.getRow()];
	        rs.beforeFirst();
	        
	        for (int i = 0; i < result.length; i++) {
				rs.next();
				result[i] = new String();
				result[i] = rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
