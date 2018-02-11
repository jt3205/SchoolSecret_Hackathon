package domain;

public class SecretVO {
	private int id;
	private String ownerId;
	private String contents;
	private String school;
	
	public SecretVO(int id, String ownerId, String contents, String school) {
		super();
		this.id = id;
		this.ownerId = ownerId;
		this.contents = contents;
		this.school = school;
	}
	
	public SecretVO() {}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
}
