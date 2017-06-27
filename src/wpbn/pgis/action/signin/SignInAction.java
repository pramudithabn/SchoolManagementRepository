package wpbn.pgis.action.signin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;


import wpbn.pgis.entity.User;
import wpbn.pgis.service.UserService;
import wpbn.pgis.action.AbstarctAction;

@SuppressWarnings("serial")
public class SignInAction extends AbstarctAction{
	

	private User user;
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
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
			return SUCCESS;
		}
	
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
