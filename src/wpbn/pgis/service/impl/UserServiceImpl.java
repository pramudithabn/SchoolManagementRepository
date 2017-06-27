package wpbn.pgis.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wpbn.pgis.dao.UserMapper;
import wpbn.pgis.entity.User;
import wpbn.pgis.service.UserService;

@Service("userService")

public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public User validateUser(String username, String password) {
		return userMapper.findByUsernameAndPassword(username, password);
	}

}
