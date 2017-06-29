package wpbn.pgis.entity;

public class Student {

	
	private Integer id;

	
	private String fname;

	private String lname;

	private String otherNames;

	private String nic;

	private String address;

	private String dob;

	private String gender;

	private Integer telephone;

	private String school;

	private Integer cId;

	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname == null ? null : fname.trim();
	}


	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname == null ? null : lname.trim();
	}


	public String getOtherNames() {
		return otherNames;
	}


	public void setOtherNames(String otherNames) {
		this.otherNames = otherNames == null ? null : otherNames.trim();
	}


	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic == null ? null : nic.trim();
	}


	
	public String getAddress() {
		return address;
	}


	
	public void setAddress(String address) {
		this.address = address == null ? null : address.trim();
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob == null ? null : dob.trim();
	}


	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender == null ? null : gender.trim();
	}

	public Integer getTelephone() {
		return telephone;
	}


	public void setTelephone(Integer telephone) {
		this.telephone = telephone;
	}


	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school == null ? null : school.trim();
	}


	public Integer getcId() {
		return cId;
	}


	public void setcId(Integer cId) {
		this.cId = cId;
	}


}