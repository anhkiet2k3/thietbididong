package thanhphuc.java6.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.stereotype.Service;

import thanhphuc.java6.entity.Account;
import thanhphuc.java6.repository.AccountRepository;
import thanhphuc.java6.service.AccountService;
import thanhphuc.java6.utils.RamDomNameUtils;


@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	AccountRepository dao;

	@Autowired
	BCryptPasswordEncoder pe;
	
	@Override
	public List<Account> findAll() {
		return dao.findAll();
	}
	
	@Override
	public Account findById(String username) {
		return dao.findById(username).get();
	}
	
	@Override
	public List<Account> getAdministrators() {
		return dao.getAdministrators();
	}


	@Override
	public void loginFromOAuth2(OAuth2AuthenticationToken oauth2) {
		
//		String fullname = oauth2.getPrincipal().getAttribute("name");
		String fullname = RamDomNameUtils.generateRandomName();
		String email = oauth2.getPrincipal().getAttribute("email");
		String password = Long.toHexString(System.currentTimeMillis());
		
		Account account = dao.findAccountByEmail(email);
		
		if(account == null) {
			Account ac = new Account();
			ac.setEmail(email);
			ac.setFullname(fullname);
			ac.setPassword(password);
			ac.setUsername(fullname);
			dao.save(ac);
			UserDetails user = User.withUsername(fullname).password(pe.encode(password)).roles("GUEST").build();
			Authentication auth = new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());
			SecurityContextHolder.getContext().setAuthentication(auth);
			
		}else {
			UserDetails user = User.withUsername(account.getUsername()).password(pe.encode(account.getPassword())).roles("GUEST").build();
			Authentication auth = new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());
			SecurityContextHolder.getContext().setAuthentication(auth);
		}
		
	}

	@Override
	public Account findAccountByIdOrder(int idOrder) {
		return dao.findAccountByIdOrder(idOrder);
	}

	@Override
	public void registerUser(Account account) {
		dao.save(account);
	}

}
