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
		return UserHandler.getUserImg(user);
	}

	public String getUserInput(String user) {
		return UserHandler.getUserInfo(user);
	}

	public void setUserInput(String user, String userInput) {
		UserHandler.setUserInfo(user, userInput);
	}

}
