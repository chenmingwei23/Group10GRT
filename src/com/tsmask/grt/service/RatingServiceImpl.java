//Author: Daniel Saverimuttu

package com.tsmask.grt.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.tsmask.grt.mapper.*;
import com.tsmask.grt.pojo.rating;

public class RatingServiceImpl implements RatingService {

  @Autowired
  public RatingDao rating;

  public int register(rating rating) {
	  return RatingDao.register(rating);
  }

}