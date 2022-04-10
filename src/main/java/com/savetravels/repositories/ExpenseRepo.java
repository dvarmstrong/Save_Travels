package com.savetravels.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.savetravels.models.Expense;

@Repository
public interface ExpenseRepo extends CrudRepository<Expense, Long>{
	
	//Method to retrieve all the expenses
	List<Expense> findAll();
	List<Expense> findByDescriptionContaining(String search);
	
	

}
