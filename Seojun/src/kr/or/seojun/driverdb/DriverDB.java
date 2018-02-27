package kr.or.seojun.driverdb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverDB {
	public Connection driverDbcon() throws ClassNotFoundException, SQLException {
		System.out.println("01드라이버로딩및02 DB연결 driverDbcon 실행");
		Connection recon = null;
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcDriver = "jdbc:mysql://localhost:3306/webprowsj?" +
				"useUnicode=true&characterEncoding=euckr";
		String dbUser = "webproid";
		String dbPass = "webpropw";
		recon = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		return recon;
	}
}
