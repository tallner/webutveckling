package model;

public class UserHandler {
	
	private static String mrs_cat = "cat.jpg";
	private static String mr_dog = "dog.jpg";
	private static String ms_swallow = "swallow.png";

	public static String getUserImg(String userImage) {
		System.out.println(userImage);

		if (userImage.equals("cat")) return mrs_cat;
		else if (userImage.equals("dog")) return mr_dog;
		return ms_swallow;
	}

}
