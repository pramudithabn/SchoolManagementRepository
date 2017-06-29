package wpbn.pgis.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import wpbn.pgis.entity.User;
import wpbn.pgis.exception.SessionNotExist;
import wpbn.pgis.util.SessionKey;
import wpbn.pgis.util.Type;

@SuppressWarnings("serial")
public class AbstarctAction extends ActionSupport implements SessionAware {

	public static final String ADMIN = "admin";
	public static final String STUDENT = "student";
	public static final String INSTRUCTOR = "instructor";
	
	
	private static final String SESSION_NOT_EXIST = "Session does not exist";
	
	private Map<SessionKey, Object> session = null;
	
	public void addSessionUserVariable(User user) throws SessionNotExist {
		if(session != null) {
			session.put(SessionKey.SESSION_USER, user);
		} else {
			//logger.error(SESSION_NOT_EXIST);
			throw new SessionNotExist(SESSION_NOT_EXIST);
		}
	}
	
	
	public User getSessionUserVariable() throws SessionNotExist {
		if(session != null) {
			if(session.containsKey(SessionKey.SESSION_USER)) {
				return (User)session.get(SessionKey.SESSION_USER);
			} else {
				throw new SessionNotExist(SESSION_NOT_EXIST);
			}
		} else {
			//logger.error(SESSION_NOT_EXIST);
			throw new SessionNotExist(SESSION_NOT_EXIST);
		}
	}
	
	public void removeSessionVariable(SessionKey key) throws SessionNotExist {
		if(session != null) {
			if(session.containsKey(key)) {
				session.remove(key);
			}
		} else {
			//logger.error(SESSION_NOT_EXIST);
			throw new SessionNotExist(SESSION_NOT_EXIST);
		}
	}

	public boolean verifySessionUser() throws SessionNotExist {
		if(session != null) {
			return session.containsKey(SessionKey.SESSION_USER);
		} else {
			//logger.error(SESSION_NOT_EXIST);
			throw new SessionNotExist(SESSION_NOT_EXIST);
		}
	}
	
	public boolean isLogin(){
		try{
			User user = (User)session.get(SessionKey.SESSION_USER);
			if(user != null){
				return true;
			}
			return false;
		}catch (Exception e) {
			return false;
		}
	}
	
	public boolean isAdmin() {
		try{
			User user = (User)session.get(SessionKey.SESSION_USER);
			if(user != null && user.getType().equalsIgnoreCase(Type.ADMIN.name())){
				return true;
			}
			return false;
		}catch (Exception e) {
			return false;
		}
	}

	
	public Map<SessionKey, Object> getSession() {
		return session;
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public void setSession(@SuppressWarnings("rawtypes")Map session) {
		this.session = session;
	}


}
