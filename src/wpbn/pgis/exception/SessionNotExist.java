package wpbn.pgis.exception;

public class SessionNotExist extends RuntimeException {
	
	private static final long serialVersionUID = 1L;

	public SessionNotExist() {
	}

	public SessionNotExist(String s) {
		super(s);
	}

	public SessionNotExist(Throwable t) {
		super(t);
	}


}
