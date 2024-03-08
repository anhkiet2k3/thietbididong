package thanhphuc.java6.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import thanhphuc.java6.dto.OrderDetailDTO;
import thanhphuc.java6.entity.OrderDetail;

@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
	
	
	@Query("select new OrderDetailDTO(od.id, od.product.name, od.product.img, od.price, od.quantity) from OrderDetail od where od.order.id=:idOrder")
	List<OrderDetailDTO> findOrderDetailDTO(@Param("idOrder") int idOrder);
	
//	@Query("select new OrderDetailDTO(o.id,o.product.name, o.product.img, o.product.price, o.quantity, o.total, o.order.province,  o.order.district,  o.order.ward  ) from OrderDetail o where o.order.id=:idorder")
//	List<OrderDetailDTO> findByOrderDetailIdOrder(@Param("idorder") long idOrder); 
}
