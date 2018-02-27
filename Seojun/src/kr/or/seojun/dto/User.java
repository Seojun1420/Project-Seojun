package kr.or.seojun.dto;

public class User {
	private String Id;
	private String Password;
	private String Name;
	private String Email;
	private String Nickname;
	private String Level;
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		System.out.println(id + "<-- id setId User.java");
		this.Id = id;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		System.out.println(password + "<-- password setPassword User.java");
		this.Password = password;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		System.out.println(name + "<-- name setName User.java");
		this.Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		System.out.println(email + "<-- id setEmail User.java");
		this.Email = email;
	}
	public String getNickname() {
		return Nickname;
	}
	public void setNickname(String nickname) {
		System.out.println(nickname + "<-- nickname setNickname User.java");
		this.Nickname = nickname;
	}
	public String getLevel() {
		return Level;
	}
	public void setLevel(String level) {
		System.out.println(level + "<-- level setLevel User.java");
		this.Level = level;
	}
	
}
