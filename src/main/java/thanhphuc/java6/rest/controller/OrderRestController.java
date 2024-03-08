package thanhphuc.java6.rest.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonNode;

import thanhphuc.java6.dto.OrderDTO;
import thanhphuc.java6.dto.OrderDetailDTO;
import thanhphuc.java6.entity.Order;
import thanhphuc.java6.service.OrderDetailService;
import thanhphuc.java6.service.OrderService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/orders")
public class OrderRestController {

	@Autowired
	OrderService orderService;
	
	@Autowired
	OrderDetailService orderDetailService;

//	@Autowired
//	private VNPayService vnPayService;

	@PostMapping
	public ResponseEntity<?> purchase(@RequestBody JsonNode orderData, HttpServletRequest request,Authentication authentication) {
		HashMap<String, Object> result = new HashMap<>();
		UserDetails userDetails = (UserDetails) authentication.getPrincipal();
		try {
			orderService.create(orderData,userDetails.getUsername());
			result.put("Success", true);
			result.put("Message", "Success to call API saveRole");
			result.put("data", orderService.create(orderData,userDetails.getUsername()));
		} catch (Exception e) {
			result.put("Success", false);
			result.put("Message", "Fail When Call API saveRole");
			result.put("data", null);
		}
		return ResponseEntity.ok(result);
	}

	
	@GetMapping("/order-all")
	public List<OrderDTO> getAllOrderDTO(){
		return orderService.findOrderDTO();
	}
	
	@GetMapping("/order-detail/{idOrder}")
	public List<OrderDetailDTO> findOrderDetail(@PathVariable("idOrder") int idOrder){
		return orderDetailService.findOrderDetailDTO(idOrder);
	}
	
	@GetMapping("/order-by-id/{idOrder}")
	public Order findOrderById(@PathVariable("idOrder") int idOrder){
		return orderService.findById(idOrder);
	}
	
	
	@GetMapping("/update-status/{idOrder}/{status}")
	public void updateStatusOrder(@PathVariable("idOrder") int idOrder,
								@PathVariable("status") String status) {
		orderService.updateStatusOrderN(idOrder, status);
	}
	
}
