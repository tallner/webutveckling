package model;

public class imgHandler {
	
	private static String cat = "cat.jpg";
	private static String dog = "dog.jpg";
	private static String swallow = "swallow.png";

	public static String getImgName(String toShow) {
		System.out.println(toShow);

		if (toShow.equals("cat")) {
			return cat;

		} else if (toShow.equals("dog")) {
			return dog;
		}

		else {
			return swallow;
		}

	}

}
