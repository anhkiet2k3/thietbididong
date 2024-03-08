package thanhphuc.java6.service.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;


import thanhphuc.java6.dto.OrderDTO;
import thanhphuc.java6.dto.OrderStatistics;
import thanhphuc.java6.dto.TotalYear;
import thanhphuc.java6.entity.Account;
import thanhphuc.java6.entity.Order;
import thanhphuc.java6.entity.OrderDetail;
import thanhphuc.java6.repository.OrderDetailRepository;
import thanhphuc.java6.repository.OrderRepository;
import thanhphuc.java6.service.OrderService;

@Service
public class OderServiceImpl implements OrderService {

	@Autowired
	OrderRepository dao;

	@Autowired
	OrderDetailRepository ddao;

	@Override
	public Order create(JsonNode orderData, String userName) {
		
		ObjectMapper mapper = new ObjectMapper();

		Order order = mapper.convertValue(orderData, Order.class);
		int id = (int) (dao.selectMaxIdOrder() == null ? 1 : dao.selectMaxIdOrder());
		order.setId(id);
		Account account = new Account();
		account.setUsername(userName);
		order.setAccount(account);
		dao.save(order);
		TypeReference<List<OrderDetail>> type = new TypeReference<List<OrderDetail>>() {};
		List<OrderDetail> details = mapper.convertValue(orderData.get("orderDetails"), type)
				.stream().peek(d -> d.setOrder(order)).collect(Collectors.toList());
		ddao.saveAll(details);
		
		return order;


	}

	@Override
	public Order findById(int id) {
		return dao.findById(id).get();

	}

	@Override
	public List<Order> findByUsername(String username) {
		return dao.findByUsername(username);

	}

	@Override
	public List<Order> findOrderByUserId(String username) {
		return dao.findOrderByUserId(username);
	}

	@Override
	public List<OrderDTO> findOrderDTO() {
		return dao.findOrderDTO();
	}
	
	@Override
	public List<OrderStatistics> getStatusOrder() {
		List<OrderStatistics> listOrder = new ArrayList<>();
		dao.getStatusOrder().forEach(list -> {
			OrderStatistics orderStatistics = new OrderStatistics();
			if (list.getStatus().equals("X")) {
				orderStatistics.setStatus("Đang xử lí");
				orderStatistics.setCount(list.getCount());
			} else if (list.getStatus().equals("N")) {
				orderStatistics.setStatus("Đã nhận hàng");
				orderStatistics.setCount(list.getCount());
			} else {
				orderStatistics.setStatus("Đã hủy");
				orderStatistics.setCount(list.getCount());
			}
			listOrder.add(orderStatistics);
		});
		return listOrder;
	}
	
	@Override
	public List<TotalYear> getTotalYear() {
		return dao.getTotalYear();
	}

	@Override
	public void updateStatusOrderN(int idOrder, String status) {
		
		Order order = dao.findById(idOrder).get();
		
		if(status.equals("N")) {
			order.setStatus("N");
		}else {			
			order.setStatus("H");			
		}
		dao.save(order);
	}
}
