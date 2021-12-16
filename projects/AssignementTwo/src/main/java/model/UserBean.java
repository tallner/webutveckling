package model;

public class UserBean {
	
	private String user;


	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}
	
	public String getImgName() {
		return UserInfo.getUserImg(user);
	}

	public String getUserInput(String user) {
		return UserInfo.getUserInfo(user);
	}

	public void setUserInput(String user, String userInput) {
		UserInfo.setUserInfo(user, userInput);
	}

}
