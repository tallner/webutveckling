package model;

public class imgBean {
	
	private String show;

	public String getShow() {
		return show;
	}

	public void setShow(String show) {
		this.show = show;
	}
	
	public String getImgName() {

		return imgHandler.getImgName(show);
		
	}

}
