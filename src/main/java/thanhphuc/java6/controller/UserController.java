package thanhphuc.java6.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import thanhphuc.java6.entity.Account;
import thanhphuc.java6.service.AccountService;
import thanhphuc.java6.service.OrderDetailService;
import thanhphuc.java6.service.OrderService;

@Controller
public class UserController {
 
	@Autowired
	OrderService orderService;
	
	@Autowired
	OrderDetailService orderDetailService;
	
	@Autowired
	AccountService accountService;
	
	@GetMapping("/login-form")
	public String loginForm(@ModelAttribute("user") Account account) {
		return "layout/login";
	}
	
	@RequestMapping("/user")
	public String viewUser(Authentication authentication, Model model)
	{
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		model.addAttribute("user", accountService.findById(userDetails.getUsername()));
		return "layout/user_info";
	}
	
	@RequestMapping("/userOrder")
	public String viewUserOrder(Model model, Authentication authentication)
	{
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		model.addAttribute("orderUser",orderService.findOrderByUserId(userDetails.getUsername()));
		return "layout/user_order";
	}
	
	@RequestMapping("/userOrderDetail")
	public String viewUserOrderDetail(@RequestParam("idOrder") int idOrder, Model model, Authentication authentication)
	{
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		model.addAttribute("user",accountService.findById(userDetails.getUsername()));
		model.addAttribute("orderDetail",orderDetailService.findOrderDetailDTO(idOrder));
		model.addAttribute("order",orderService.findById(idOrder));
		return "layout/user_orderDetail";
	}
	
	@PostMapping("/register")
	public String registerUser(@ModelAttribute("user") Account account) {
		System.out.println("test: "+account.getUsername());
		accountService.registerUser(account);
		return "layout/login";
	}
}
