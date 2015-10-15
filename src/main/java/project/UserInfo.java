package project;

public class UserInfo {
	private String UserName;
	private String PW;
	
	public void setPW(String pass){
		this.PW = pass;
	}
	
	public void setUserName(String UN){
		this.UserName = UN;
	}
	
	public String getUsername(){
		return this.UserName;
	}
	
	public String getPW(){
		return this.PW;
	}
}
