package com.cts.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cts.entities.User;

public interface DataAccess  extends JpaRepository<User, String>  {

	@Query("select mu.first_name from mainuser mu where mu.user_id= userid and mu.pass=password")
	String findByName(String userid,String password);

}

/*

package com.cts.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.cts.entities.User;


@Repository("dao")
@Component
public interface Dao extends JpaRepository<User, String>{
	
	@Query("select mu.first_name from mainuser mu where mu.user_id= userid and mu.pass=password")
	String findByName(String userid,String password);

}
*/