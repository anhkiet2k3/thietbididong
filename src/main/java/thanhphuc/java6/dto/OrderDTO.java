package thanhphuc.java6.dto;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
public class OrderDTO {

	@Id
	int idOrder;
	
	String username;
	
	Date date = new Date();
	
	double total;
	
	String status;
	
	int payment;
		
}
