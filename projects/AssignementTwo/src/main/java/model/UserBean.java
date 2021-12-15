package model;

public class UserBean {
	
	private String user;
	private String userInput;

	public String getUser() {
		return user;
	}

	public void setUser(String show) {
		this.user = show;
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
