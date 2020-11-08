package com.tsmask.grt.excetion;

/**
 * CustomException 自定义异常类
 * 
 * @author tsmak
 *
 */
public class CustomException extends Exception {

	/**
	 * 序列化版本
	 */
	private static final long serialVersionUID = 1L;

	public CustomException(String message) {
		super(message);
		this.message = message;
	}

	public String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
