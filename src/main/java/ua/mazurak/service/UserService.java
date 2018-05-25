package ua.mazurak.service;

import java.util.List;

import ua.mazurak.entity.User;

public interface UserService {
	
	void saveUser(User user);
	
	User findUserById(int id);
	
	List<User> findAllUsers();
	
	User findUserByEmail(String email);
	
	void deleteUserById(int id);

}
