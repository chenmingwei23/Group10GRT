//Author: Daniel Saverimuttu

package com.tsmask.grt.pojo;


public class rating {

	private float counter = 0;
	private float rating = 0;
	private float tc = 0;
	private float usernum = 0;
	private float avgrate = 0;
	private float round = 0;
	
	private String gameName = "";
    
	//Getters
    public float getCount() {
    	return counter;
    }

    public float getRating() {
    	return rating;
    }
    
    public float getTc() {
    	return tc;
    }
    
    public float getUserNum() {
    	return usernum;
    }
    
    public float getAvgrate() {
    	return avgrate;
    }
    
    public String getgameName() {
    	return gameName;
    }
    
    
    
    //setters
    public void setCounter() {
    	this.counter = tc + rating;
    }
    
    public void setRating(float num) {
    	this.rating = num;
    }
    
    public void setTc (float num) {
    	this.tc = num;
    }
    
    public void setUserNum (float num) {
    	this.usernum = 1 + num;
    }
    
    public void baseUserNum (float num) {
    	this.usernum = num;
    }
    
    public void setAvgrate () {
    	this.avgrate = counter/usernum;
    }
    
    public void setgameName(String name) {
    	this.gameName = name;
    }
    
    
    //rounds value to 2 decimal places
    public double round (float num) {
    	double roundOff = (double) Math.round(num * 100) / 100;
    	return roundOff;
    }
}