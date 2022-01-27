package com.hoge.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hoge.dto.ChattingListDto;
import com.hoge.dto.ChattingMessageDto;
import com.hoge.vo.other.ChatRoom;

//성하민
@Mapper
public interface ChatRoomMapper {
	//성하민
	List<ChatRoom> getChatRoomsbyUserNo(int no); //게스트 유저 번호로 chatroom 조회, 마이페이지 채팅구현 
	
	//성하민
	List<ChatRoom> getChatRoomsbyHostNo(int no); //호스트 번호로 chatroom 조회, 호스프 페이지 채팅 구현
	
	
	//성하민
	List<ChattingMessageDto> getMessagesByChatRoomNo(int no); // chatroom번호로 메시지와 유저정보 조회.
	
	
	//성하민
	List<ChattingListDto> getChattingListDtobyHostNo(int no); // //호스트 번호로 chatroom 조회, 호스프 페이지 채팅 구현
	
	
	List<ChattingListDto> getChattingListDtobyUserNo(int no); // 호스트 번호로 chatroom 조회, 마이페이지 채팅 구현
}
