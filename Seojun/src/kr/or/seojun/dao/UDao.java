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
	
	// �α��� ����
	public String uLoginCheck(String Id, String Password) throws ClassNotFoundException, SQLException {
		System.out.println("============�α����ҽ� �α��ξȳ��޽��� ============");
		System.out.println("�α��� üũ  uLoginCheck Udao.java");
		String re = null;
		DriverDB db = new DriverDB();
		conn = db.driverDbcon();
		pstmt = conn.prepareStatement("select * from tb_join WHERE Id=?");
		pstmt.setString(1, Id);
		rs = pstmt.executeQuery();
		if(rs.next()){
			System.out.println("rs.naxt() ������");
			if(rs.getString("Password").equals(Password)){
				re = "�α��� ����";
				System.out.println("�α��ο� �����ϼ̽��ϴ�.");
			}else {
				re = "�α��� ����, �н����� Ʋ��";
				System.out.println("�н����� Ʋ�Ƚ��ϴ�.");
			}
		}else{
			re = "�α��� ����, ���̵� Ʋ��";
			System.out.println("���̵� Ʋ�Ƚ��ϴ�.");
		}
		return re;
	}

	//�α��� �ϰ� ���� ���
	public User uGetForSession(String Id) throws ClassNotFoundException, SQLException {
		System.out.println("�α��μ����� ���̵�,�̸�,���� ��ȸ uGetForSession"
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

	// ��üȸ�� ��ȸ
	public ArrayList<User> uAllSelect() throws ClassNotFoundException, SQLException{
		System.out.println("======= Next Cloud ��ü ȸ�� ��ȸ ======");
		DriverDB db = new DriverDB();
		conn = db.driverDbcon();
		pstmt = conn.prepareStatement("select * form tb_join");
		rs = pstmt.executeQuery();
		while(rs.next()){
			System.out.println("���� ����");
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
	
	//NEXT cloud ȸ������ �Ű����� 1��
	public void uInsert(User join) throws ClassNotFoundException, SQLException{
		System.out.println("======= Next Cloud ȸ�������� ���������� ó���Ǿ����ϴ�. ======");
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
	
	//NEXT cloud ȸ������ �Ű����� 2��
	public void uInsert(User join, Connection conn) throws ClassNotFoundException, SQLException{
		System.out.println("======= Next Cloud ȸ�������� ���������� ó���Ǿ����ϴ�. ======");
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
		System.out.println("06 ȸ�� �˻� uSearch Udao.java");
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
			System.out.println("���� ���� ��� �ֳ�? uSelectforUpdate Udao.java");
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
