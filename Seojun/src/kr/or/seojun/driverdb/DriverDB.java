package kr.or.seojun.driverdb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverDB {
	public Connection driverDbcon() throws ClassNotFoundException, SQLException {
		
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
