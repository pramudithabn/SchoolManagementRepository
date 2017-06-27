package wpbn.pgis.service;

import wpbn.pgis.entity.User;

public interface UserService {

	User validateUser(String username, String password);

}
