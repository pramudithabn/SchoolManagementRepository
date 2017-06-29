package wpbn.pgis.action.signin;

import wpbn.pgis.util.SessionKey;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;


import wpbn.pgis.entity.User;
import wpbn.pgis.service.UserService;
import wpbn.pgis.action.AbstarctAction;

@SuppressWarnings("serial")
public class SignInAction extends AbstarctAction{
	
	private Map<SessionKey, Object> session;
	

	private User user;
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	public String showStartUpPage()  {
		return SUCCESS;	
		}
	
	
	public String showSignInFrom()  {
		return SUCCESS;	
		}
	
	public String validateSignIn(){
		
		
		User validUser = userService.validateUser(user.getUsername(),user.getPassword());
		
		if(validUser==null)
		{
			addActionError(getText("user.error.authentication"));
			return INPUT;
		}
		else
		{
			addSessionUserVariable(validUser);
			
			
			if(validUser.getType().equals("administrator")){
				System.out.println("admin");
				return ADMIN;
	
			}
			else if(validUser.getType().equals("student")){
				System.out.println("student");
				return STUDENT;
	
			}
			else if(validUser.getType().equals("instructor")){
				System.out.println("instructor");
				return INSTRUCTOR;
	
			}
			
				return ERROR;
			
			
		}
	
	}
	
	public String signOut() {
	    if (session != null) {
	      session.remove(SessionKey.SESSION_USER);
	     
	    }
	    
	    addActionMessage(getText("user.msg.logout.success"));
	    return SUCCESS;

	  }
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
