package com.recruit.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.recruit.dao.MessageMapper;
import com.recruit.pojo.Message;
import com.recruit.service.MessageService;

@Service
public class MessageServiceImpl implements MessageService {
	@Resource
	private MessageMapper messageMapper;
	public Message getMessageById(int id){
		return this.messageMapper.selectByPrimaryKey(id);
	}
	public int insertSelective(Message record) {
		// TODO Auto-generated method stub
		
		return this.messageMapper.insertSelective(record);
	}
	public List<Message> selectAll() {
		// TODO Auto-generated method stub
		return this.messageMapper.selectAll();
	}
	public void deleteMessageById(int id) {
		// TODO Auto-generated method stub
		this.messageMapper.deleteByPrimaryKey(id);
				
	}

}
