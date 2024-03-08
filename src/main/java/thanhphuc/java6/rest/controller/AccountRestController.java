package thanhphuc.java6.rest.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import thanhphuc.java6.entity.Account;
import thanhphuc.java6.entity.Order;
import thanhphuc.java6.service.AccountService;


@CrossOrigin("*")
@RestController
@RequestMapping("/rest/accounts")
public class AccountRestController {
	
	@Autowired
	AccountService accountService;
	
	@GetMapping
	public List<Account> getAccounts(@RequestParam("admin") Optional<Boolean> admin) {
		if(admin.orElse(false)) {
			return accountService.getAdministrators();
		}
		return accountService.findAll();
	}
	
	@GetMapping("{username}")
	public Account getOne(@PathVariable("username") String username) {
		return accountService.findById(username);
	}
	
	@GetMapping("/accountByIdOrder/{idOrder}")
	Account getAccountByOrder(@PathVariable("idOrder") int idOrder){
		return accountService.findAccountByIdOrder(idOrder);
	}
	
}
