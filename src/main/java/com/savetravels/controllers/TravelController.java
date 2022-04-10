package com.savetravels.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.savetravels.models.Expense;
import com.savetravels.services.ExpenseService;

@Controller

public class TravelController {
	
	@Autowired
	ExpenseService expenseService;
	
	
	@GetMapping("/")
	public String index() {
		return "redirect:/expenses";
	}
	
	@GetMapping("/expenses")
	public String index (@ModelAttribute("expense") Expense expense, Model model) {
		List<Expense> expenses = expenseService.allExpenses();
		model.addAttribute("expenses", expenses);
		return "index.jsp";
	}
	
	@PostMapping("/create/expenses")
	public String index(@Valid @ModelAttribute("expense")Expense expense, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			System.out.println(expense.getExpenseName());
			List<Expense> expenses = expenseService.allExpenses();
			model.addAttribute("expenses", expenses);
			return "index.jsp";
		}else {
			Expense thisexpense = expenseService.createExpense(expense);
			return "redirect:/expenses";
		}
		
		
		
		
	}

}
