
package com.java.project.Repositories;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import com.java.project.Models.orders;



@Repository
public interface orderRepo extends CrudRepository<orders, Long>{

	 
	 List<orders> findAll();
	 
	 @Query(value="select * from Parts order by avg_rate desc limit 10",nativeQuery = true)
		List<orders> UserOrder();
//	 Optional<User> findByEmail(String email);
//	 Optional<User> findByEmail(String email);
//	Object findByEmail(String email);
//	 List<Book> findByparowNotContains(Long id);
//	 List<Book> findParowNull(User user);
//	 List<Book> findParowNullorUserid(User user,Long id);s
 
	 // this method finds books with descriptions containing the search string
	 // this method counts how many titles contain a certain string
	// Long countByTitleContaining(String search);
	 // this method deletes a book that starts with a specific title
	// Long deleteByTitleStartingWith(String search);
	// public List<User> findByProductsNotContains(Products product);
	}

