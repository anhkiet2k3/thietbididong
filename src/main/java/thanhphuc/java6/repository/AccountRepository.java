package thanhphuc.java6.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import thanhphuc.java6.entity.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, String>{

	@Query("SELECT DISTINCT ar.account FROM Authority ar WHERE ar.role.id IN ('DIRE', 'STAF')")
	List<Account> getAdministrators();
	
	@Query("select o from Account o where o.email =:email")
	Account findAccountByEmail(@Param("email") String email);
	
	@Query("SELECT a FROM Account a INNER JOIN a.orders o ON a.username = o.account.username where o.id=:idOrder")
	Account findAccountByIdOrder(@Param("idOrder") int idOrder);
	
}
