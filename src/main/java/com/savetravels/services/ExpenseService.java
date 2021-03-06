package com.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.savetravels.models.Expense;
import com.savetravels.repositories.ExpenseRepo;

@Service
public class ExpenseService {
	
	@Autowired
    private ExpenseRepo expenseRepo;

	
//	private final ExpenseRepo expenseRepo;
//	
//	public ExpenseService(ExpenseRepo expenseRepo) {
//		this.expenseRepo = expenseRepo;
//	}
	
	//returns all expenses
	public List<Expense> allExpenses() {
		return expenseRepo.findAll();
	}
	
	// creates an expense 
	public Expense createExpense(Expense b ) {
		return expenseRepo.save(b);
		
	}
	
	public Expense update(Expense b ) {
		return expenseRepo.save(b);
	}
	
	// retrieves an expense  
	public Expense findExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepo.findById(id);
		if(optionalExpense.isPresent()) {
			return optionalExpense.get();
		} else {
			return null;
		}
	}
	
	public void delete(Long id) {
		Optional<Expense> optionalExpense = expenseRepo.findById(id);
		if(optionalExpense.isPresent()) {
			expenseRepo.deleteById(id);
		}
	}
	
	
	

}
