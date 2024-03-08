package thanhphuc.java6.service;

import java.util.List;

import thanhphuc.java6.entity.Authority;


public interface AuthorityService {
	public List<Authority> findAll() ;

	public Authority create(Authority auth) ;

	public void delete(Integer id) ;

//	public List<Authority> findAuthoritiesOfAdministrators() ;
}
