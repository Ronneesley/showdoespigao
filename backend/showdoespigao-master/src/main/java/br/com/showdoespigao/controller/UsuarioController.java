package br.com.showdoespigao.controller;

import java.net.URI;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.UriComponentsBuilder;

import br.com.showdoespigao.dto.UsuarioDto;
import br.com.showdoespigao.dto.UsuarioForm;
import br.com.showdoespigao.service.UsuarioService;

@RestController
@RequestMapping("/usuarios/")
public class UsuarioController {

	@Autowired
	private UsuarioService service;
	
	@PostMapping
	@Transactional
	public ResponseEntity<UsuarioDto> create(@RequestBody @Valid UsuarioForm form, UriComponentsBuilder builder) {
		UsuarioDto UsuarioDto = service.create(form);
		
		URI uri = builder.path("/{id}").buildAndExpand(UsuarioDto.getId()).toUri();
		return ResponseEntity.created(uri).body(UsuarioDto);
	}
	
	@GetMapping
	public ResponseEntity<Page<UsuarioDto>> findAll(Pageable pageable) {
		Page<UsuarioDto> usersDto = service.findAll(pageable);

		if (!usersDto.hasContent()) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.ok(usersDto);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<UsuarioDto> findById(@PathVariable Long id) {
		return service.findById(id);
	}
	
	@GetMapping("/busca")
	public ResponseEntity<Page<UsuarioDto>> findByName(@RequestParam(required = false) String name, Pageable pageable) {
		Page<UsuarioDto> usuariosDto = service.findByName(name, pageable);

		if (!usuariosDto.hasContent()) {
			return ResponseEntity.noContent().build();
		}
		return ResponseEntity.ok(usuariosDto);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<UsuarioDto> deleteById(@PathVariable Long id) {
		return service.deleteById(id);
	}
	
	@PutMapping("/{id}")
	@Transactional
	public ResponseEntity<UsuarioDto> update(@RequestBody @Valid UsuarioForm form, @PathVariable Long id) {
		return service.update(form, id);
	}
	
}
