package com.hoge.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hoge.exception.LoginErrorException;
import com.hoge.form.CriteriaAdminUser;
import com.hoge.mapper.UserMapper;
import com.hoge.vo.other.User;

/**
 * User에 관한 서비스 로직
 * @author 이승준
 *
 */
@Service
public class UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	/**
	 * 이승준 테스트페이지
	 * @return
	 */
	public List<User> getAllUsers() {
		return userMapper.getAllUsers();
	}
	
	/**
	 * 성하민 관리자페이지
	 * @param CAU
	 * @return 
	 */
	public int getUsersTotalRows(CriteriaAdminUser CAU) {
		return userMapper.getUsersTotalRows(CAU);
	}
	
	/**
	 * 성하민 관리자페이지
	 * @param CAU
	 * @return
	 */
	public List<User> searchUsers(CriteriaAdminUser CAU) {
		return userMapper.searchUsers(CAU);
	}
	
	/**
	 * 이승준 로그인페이지
	 * @param id
	 * @param password
	 * @return
	 */
	public User login(String id, String password) {
		
		User user = userMapper.getUserById(id);		
		
		if (user == null) {
			throw new LoginErrorException("회원정보가 존재하지 않습니다.");
		}
		
		if (!password.equals(user.getPwd())) {
			throw new LoginErrorException("비밀번호가 일치하지 않습니다.");
		}
		
		return user;
	}
}
