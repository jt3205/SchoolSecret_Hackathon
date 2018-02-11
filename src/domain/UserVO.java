package domain;

public class UserVO {
	private String id;
	private String password;
	private String name;
	private String school;
	private String birth;

	public UserVO() {
		
	}
	
	public UserVO(String id, String password, String name, String school, String birth) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.school = school;
		this.birth = birth;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
}
