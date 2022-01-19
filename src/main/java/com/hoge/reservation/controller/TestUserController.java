package com.hoge.reservation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hoge.reservation.service.TestUserService;
import com.hoge.reservation.vo.User;

@RestController
@RequestMapping("/api/user")
public class TestUserController {
	@Autowired
	private TestUserService testUserService;

	@GetMapping
	public List<User> users() {
		return testUserService.getAllUsers();
	}
}