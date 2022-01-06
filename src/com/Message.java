package com;

import java.util.Date;

public class Message  implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String Auteur;
	private String Text;
	private Date date;
	public Message() {}
	public Message(String auteur, String text, Date _date) {
		Auteur=auteur;
		Text=text;
		date=_date;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date _date) {
		date = _date;
	}
	public String getAuteur() {
		return Auteur;
	}
	public void setAuteur(String auteur) {
		Auteur = auteur;
	}
	public String getText() {
		return Text;
	}
	public void setText(String text) {
		Text = text;
	}
}
