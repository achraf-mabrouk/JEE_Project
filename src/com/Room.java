package com;

import java.util.ArrayList;

public class Room {
	public Room() {
		// TODO Auto-generated constructor stub
	}
	private String roomName;
	public static ArrayList<Message> Msgs = new ArrayList<Message>();
	
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getRoomName() {
		return roomName;
	}
	public static ArrayList<Message> getMsgs() {
		return Msgs;
	}
	public static void setMsgs(ArrayList<Message> msgs) {
		Msgs = msgs;
	}
}
