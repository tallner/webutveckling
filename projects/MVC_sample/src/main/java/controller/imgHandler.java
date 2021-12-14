package controller;

public class imgHandler {
	
	private static String cat = "cat.jpg";//why static?
	private static String dog = "dog.jpg";
	private static String swallow = "swallow.png";
	
	public static String getImgName(String toShow) { //why static?
		System.out.println(toShow);
		
		if(toShow.equals("cat")) return cat;
		else if (toShow.equals("dog")) return dog;
		return swallow;
	}

}
