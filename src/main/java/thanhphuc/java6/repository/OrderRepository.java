package thanhphuc.java6.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import thanhphuc.java6.dto.OrderDTO;
import thanhphuc.java6.dto.OrderStatistics;
import thanhphuc.java6.dto.TotalYear;
import thanhphuc.java6.entity.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer>{
	
	@Query("SELECT o FROM Order o WHERE o.account.username=?1")
	List<Order> findByUsername(String username);
	
	@Query("select MAX(o.id) +1 from Order o")
	Long selectMaxIdOrder();
	
	@Query("SELECT o FROM Order o WHERE o.account.username=?1")
	List<Order> findOrderByUserId(String username);
	
	@Query("select new OrderDTO(o.id, o.account.fullname, o.date, o.total, o.status, o.payment) from Order o ORDER BY o.id DESC")
	List<OrderDTO> findOrderDTO();
	
	@Query("select new OrderStatistics(o.status, count(o.status)) from Order o group by o.status ")
	List<OrderStatistics> getStatusOrder();
	
	@Query("select new TotalYear(YEAR(o.date), sum(o.total)) from Order o where o.status ='N' group by YEAR(o.date) ")
	List<TotalYear> getTotalYear();
}
