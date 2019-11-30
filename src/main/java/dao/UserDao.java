package dao;

import model.User;

public interface UserDao {

    public String getPassword(String username);

	public User searchById(int uid);

	public User searchByUsername(String usename);

	public void insertYibanUser(User user);

	public void updateUser(User u);

	public String getName(int uid);
	
	//public boolean register(User u);

}
