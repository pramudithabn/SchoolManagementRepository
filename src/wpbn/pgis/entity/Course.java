package wpbn.pgis.entity;

public class Course {

	
	private Integer id;
	
	private String code;
	
	private String title;
	
	private String duration;
	
	private String startDate;
	
	private String endDate;

	public Integer getId() {
		return id;
	}

	
	public void setId(Integer id) {
		this.id = id;
	}

	
	public String getCode() {
		return code;
	}

	
	public void setCode(String code) {
		this.code = code == null ? null : code.trim();
	}

	
	public String getTitle() {
		return title;
	}

	
	public void setTitle(String title) {
		this.title = title == null ? null : title.trim();
	}

	public String getDuration() {
		return duration;
	}

	
	public void setDuration(String duration) {
		this.duration = duration == null ? null : duration.trim();
	}

	
	public String getStartDate() {
		return startDate;
	}

	
	public void setStartDate(String startDate) {
		this.startDate = startDate == null ? null : startDate.trim();
	}

	
	public String getEndDate() {
		return endDate;
	}

	
	public void setEndDate(String endDate) {
		this.endDate = endDate == null ? null : endDate.trim();
	}
	
	

	
}