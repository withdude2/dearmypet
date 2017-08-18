package dbManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//import org.apache.commons.dbcp2.BasicDataSource;

import dbManager.DatabaseManager;

public class DataSourceExam {
	/*
	DAO의 경우는 모든 메소드가 Connection이 필요하기 때문에 DatabaseManager객체를 참조해야 하므로 instance변수로 선언해서 사용한다.
	DatabaseManager dbMgr = DatabaseManager.getInstance();
	-> 매번 메소드내에서 지역변수로 만들어서 사용할 필요가 없다.
	 */
	public void usingBasicDataSource2() throws SQLException{
		DatabaseManager dbMgr = DatabaseManager.getInstance();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		try {
			conn = dbMgr.getConnection();
			pstmt = conn.prepareStatement("Select * From zipcode");
			rset = pstmt.executeQuery();
			while(rset.next()){
				System.out.println(rset.getInt(1) + ", " + rset.getString(2) + ", " + rset.getString(3));
			}
		} finally {
			dbMgr.close(conn, pstmt, rset);
		}
	}

	public static void main(String[] args) throws SQLException {
		DataSourceExam exam = new DataSourceExam();
		exam.usingBasicDataSource2();
	}
}