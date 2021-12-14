package model;

public class UserBean {
	
	private String user;

	public String getUser() {
		return user;
	}

	public void setUser(String show) {
		this.user = show;
	}
	
	public String getImgName() {

		return UserHandler.getUserImg(user);
		
	}

}
