package dbManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//import org.apache.tomcat.dbcp.dbcp2.BasicDataSource; //error
import org.apache.commons.dbcp2.BasicDataSource;

public class DatabaseManager {
	private BasicDataSource dataSource;
	private static DatabaseManager instance = new DatabaseManager();
	private DatabaseManager(){
		dataSource = new BasicDataSource();
		/*
		dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		dataSource.setUrl("jdbc:oracle:thin:@127.0.0.1:1521:orcl");
		dataSource.setUsername("scott");
		dataSource.setPassword("tiger");
		*/
		
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
//		dataSource.setUrl("jdbc:mysql://localhost:3306/mydb");
		dataSource.setUrl("jdbc:mysql://tommy.heliohost.org:3306/dearpet_my?useUnicode=true&characterEncoding=UTF-8");
		dataSource.setUsername("dearpet_user");
		dataSource.setPassword("cat@kic@0102!@");
		dataSource.setMaxWaitMillis(2000); // 2초
		dataSource.setInitialSize(3);
		dataSource.setMaxTotal(50);
	}
	
	/**
	 * Singleton
	 * @return instance : DatabaseManger
	 */
	public static DatabaseManager getInstance(){
		return instance;
	}
	
	/**
	 * Connection 객체 리턴
	 * @return DataSource.getConnection()
	 * @throws SQLException
	 */
	public Connection getConnection() throws SQLException{
		return dataSource.getConnection();
	}

	/**
	 * 연결 자원 반납
	 * @param conn : Connection
	 * @param pstmt : PreparedStatement
	 * @throws SQLException
	 */
	public void close(Connection conn, PreparedStatement pstmt) throws SQLException{
		if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
	}

	/**
	 *연결 자원 반납
	 * @param conn : Connection
	 * @param pstmt : PreparedStatement
	 * @param rset : ResultSet
	 * @throws SQLException
	 */
	public void close(Connection conn, PreparedStatement pstmt, ResultSet rset) throws SQLException{
		if(rset != null) rset.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	}
}