package com.gts.web.exception;

public class StudentException extends Exception {
	
	private String message;

	public StudentException(String message) {
		super(message);
	}
	
	public StudentException(Throwable message)
	{
		super(message);
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
	

}
