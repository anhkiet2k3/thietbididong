package thanhphuc.java6.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import thanhphuc.java6.dto.OrderStatistics;
import thanhphuc.java6.dto.TotalYear;
import thanhphuc.java6.service.OrderService;



@RestController
public class StatisticalRestController {
	
	@Autowired
	OrderService orderService;
	
	@GetMapping("/dataStatisticaOrder")
	public List<OrderStatistics> dataStatisticaOrder() {
		return orderService.getStatusOrder();
	}
	
	@GetMapping("/total-year")
	public List<TotalYear> test() {
		return orderService.getTotalYear();
	}
	
}
