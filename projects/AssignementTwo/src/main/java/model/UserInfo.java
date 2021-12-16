package model;

public class UserInfo {
	//this is just used as some kind of simple datastorage
	
	private static String mrs_cat = "cat.jpg";
	private static String mr_dog = "dog.jpg";
	private static String ms_swallow = "swallow.png";
	private static String[] userInformation = {"","",""}; 

	public static String getUserImg(String userImage) {
		if (userImage.equals("cat")) return mrs_cat;
		else if (userImage.equals("dog")) return mr_dog;
		return ms_swallow;
	}
	
	public static void setUserInfo(String user, String userInput) {
		//lägg till user information här
		if (user.equals("cat"))  userInformation[0] = userInput;
		else if (user.equals("dog")) userInformation[1] = userInput;
		else if (user.equals("swallow")) userInformation[2] = userInput;
	}
	
	public static String getUserInfo(String user) {
		//hämta userinformation
		if (user.equals("cat")) return userInformation[0];
		else if (user.equals("dog")) return userInformation[1];
		else if (user.equals("swallow")) return userInformation[2];
		else return "";
	}

}