package com.savetravels.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.savetravels.models.Expense;

public interface ExpenseRepo extends CrudRepository<Expense, Long>{
	
	//Method to retrieve all the expenses
	List<Expense> findAll();
	
	

}
