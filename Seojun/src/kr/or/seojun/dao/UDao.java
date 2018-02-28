package kr.or.seojun.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;

/*import kr.or.seojun.dto.Join;*/
import kr.or.seojun.dto.User;
import kr.or.seojun.driverdb.DriverDB;

public class UDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	User join = null;
	ArrayList<User> alm = null;
	

	public String uLoginCheck(String Id, String Password) throws ClassNotFoundException, SQLException {
		System.out.println("============로그인할시 로그인안내메시지 ============");
		System.out.println("로그인 체크  uLoginCheck Udao.java");
		String re = null;
		DriverDB db = new DriverDB();
		conn = db.driverDbcon();
		pstmt = conn.prepareStatement("select * from tb_join WHERE Id=?");
		pstmt.setString(1, Id);
		rs = pstmt.executeQuery();
		if(rs.next()){
			System.out.println("rs.naxt() 진입전");
			if(rs.getString("Password").equals(Password)){
				re = "로그인 성공";
				System.out.println("로그인에 성공하셨습니다.");
			}else {
				re = "로그인 실패, 패스워드 틀림";
				System.out.println("패스워드 틀렸습니다.");
			}
		}else{
			re = "로그인 실패, 아이디 틀림";
			System.out.println("아이디 틀렸습니다.");
		}
		return re;
	}

	public User uGetForSession(String Id) throws ClassNotFoundException, SQLException {
		System.out.println("로그인성공시 아이디,이름,권한 조회 uGetForSession"
				+ "on Udao.java");
		System.out.println("Id : "+Id);
		DriverDB db = new DriverDB();
		conn = db.driverDbcon();
		pstmt = conn.prepareStatement("select Id, Password, Level from tb_join where Id=? ");
		pstmt.setString(1, Id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			User join = new User();
			join.setId(rs.getString("Id"));
			join.setLevel(rs.getString("Level"));
			join.setName(rs.getString("Name"));
		}
		pstmt.close();
		conn.close();
		return join;
	}

	// 전체회원 조회
		public ArrayList<User> uAllSelect() throws ClassNotFoundException, SQLException{
			System.out.println("======= Next Cloud 전체 회원 조회 ======");
			DriverDB db = new DriverDB();
			conn = db.driverDbcon();
			pstmt = conn.prepareStatement("select * form tb_join");
			rs = pstmt.executeQuery();
			while(rs.next()){
				System.out.println("쿼리 실행");
				pstmt.setString(1, join.getId());
				pstmt.setString(2, join.getPassword());
				pstmt.setString(3, join.getName());
				pstmt.setString(4, join.getEmail());
				pstmt.setString(5, join.getNickname());
				pstmt.setString(6, join.getLevel());
				alm.add(join);
				System.out.println(alm+"<-- alm");
			}
			
			
			return alm;
		}
	//NEXT cloud 회원가입 매개변수 1개
		public void uInsert(User join) throws ClassNotFoundException, SQLException{
			System.out.println("======= Next Cloud 회원가입이 정상적으로 처리되었습니다. ======");
			DriverDB db = new DriverDB();
			conn = db.driverDbcon();
			pstmt = conn.prepareStatement(
					"INSERT INTO tb_join VALUES (?,?,?,?,?,?)");
			pstmt.setString(1, join.getId());
			pstmt.setString(2, join.getPassword());
			pstmt.setString(3, join.getName());
			pstmt.setString(4, join.getEmail());
			pstmt.setString(5, join.getNickname());
			pstmt.setString(6, join.getLevel());
			
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		}
		
	//NEXT cloud 회원가입 매개변수 2개
		public void uInsert(User join, Connection conn) throws ClassNotFoundException, SQLException{
			System.out.println("======= Next Cloud 회원가입이 정상적으로 처리되었습니다. ======");
			pstmt = conn.prepareStatement("INSERT INTO tb_join VALUES (?,?,?,?,?,?)");
			System.out.println(this.pstmt + "<-- pstmt 1 ");
			System.out.println(this.pstmt.getClass() + "<-- pstmt.getClass() 1");
			
			pstmt.setString(1, join.getId());
			pstmt.setString(2, join.getPassword());
			pstmt.setString(3, join.getName());
			pstmt.setString(4, join.getEmail());
			pstmt.setString(5, join.getNickname());
			pstmt.setString(6, join.getLevel());
			
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		
	}
	
	//ȸ�� �˻� 
	public ArrayList<User> uSearch(String Next, String next) throws ClassNotFoundException, SQLException{
		System.out.println("06 회원 검색 uSearch Udao.java");
		alm = new ArrayList<User>();
		DriverDB db = new DriverDB();
		conn = db.driverDbcon();
		if(Next == null & next == null){
			pstmt = conn.prepareStatement("select * from tb_join");
		}else if(Next != null & next.equals("")){
			pstmt = conn.prepareStatement("select * from tb_join");
		}else if(Next != null & next != null){
			pstmt = conn.prepareStatement("select * from tb_join where " + Next + " = ?");
			pstmt.setString(1, next);
		}
		rs = pstmt.executeQuery();
		while(rs.next()) {
			System.out.println("쿼리 실행 결과 있나? uSelectforUpdate Udao.java");
			join = new User();
			join.setId(rs.getString("Id"));
			join.setPassword(rs.getString("Password"));
			join.setName(rs.getString("Name"));
			join.setEmail(rs.getString("Email"));
			join.setNickname(rs.getString("Nickname"));
			join.setLevel(rs.getString("Level"));
			alm.add(join);
			System.out.println(alm+"<-- alm");
		}
		
		return alm;
	}
	
	
}
