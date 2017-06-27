package wpbn.pgis.entity;

public class User {
    
   	private Integer id;

    private String username;

    private String password;

    private Integer sid;

    private Integer stid;

    public Integer getId() {
        return id;
    }

    
    public void setId(Integer id) {
        this.id = id;
    }

    
    public String getUsername() {
        return username;
    }

   
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    
    public Integer getSid() {
        return sid;
    }

   
    public void setSid(Integer sid) {
        this.sid = sid;
    }

  
    public Integer getStid() {
        return stid;
    }

   
    public void setStid(Integer stid) {
        this.stid = stid;
    }
}