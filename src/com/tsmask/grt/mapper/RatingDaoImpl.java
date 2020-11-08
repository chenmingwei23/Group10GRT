//Author: Daniel Saverimuttu

package com.tsmask.grt.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.tsmask.grt.pojo.rating;

public class RatingDaoImpl implements RatingDao {
	 @Autowired
	  DataSource datasource;

	  @Autowired
	  JdbcTemplate jdbcTemplate;

	  public int register(rating rating) {
	    String sql = "insert into users values(?,?,?,?,?,?,?)";

	    return jdbcTemplate.update(sql, new Object[] { rating.getgameName(), rating.getRating(), rating.getTc() });
	  }

	}

	class UserMapper implements RowMapper<rating> {

	  public rating mapRow(ResultSet rs, int arg1) throws SQLException {
	    rating rating = new rating();

	    rating.setgameName(rs.getString("gameName"));
	    rating.setRating(rs.getFloat("userRate"));
	    rating.setUserNum(rs.getFloat("totalUser"));


	    return rating;
	  }
}