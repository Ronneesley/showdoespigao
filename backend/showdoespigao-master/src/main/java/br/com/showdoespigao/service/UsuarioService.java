package br.com.showdoespigao.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.UriComponentsBuilder;

import br.com.showdoespigao.dto.UsuarioDto;
import br.com.showdoespigao.dto.UsuarioForm;

public interface UsuarioService {

	public UsuarioDto create(UsuarioForm form);
	
	public Page<UsuarioDto> findAll(Pageable pageable);
	
	public ResponseEntity<UsuarioDto> findById(Long id);
	
	public Page<UsuarioDto> findByName(String name, Pageable pageable);
	
	public ResponseEntity<UsuarioDto> deleteById(Long id);
	
	public ResponseEntity<UsuarioDto> update(UsuarioForm form, Long id);
		
}
