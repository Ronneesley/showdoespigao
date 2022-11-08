package br.com.showdoespigao.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import br.com.showdoespigao.dto.UsuarioDto;
import br.com.showdoespigao.dto.UsuarioForm;
import br.com.showdoespigao.modelos.Usuario;
import br.com.showdoespigao.repository.RepositorioUsuario;

@Service
public class UsuarioServiceImpl implements UsuarioService {

	@Autowired
	private RepositorioUsuario usuarioRepository;

	@Override
	public UsuarioDto create(UsuarioForm form) {
		Usuario user = form.dtoToModel();
		usuarioRepository.save(user);

		UsuarioDto usuarioDto = new UsuarioDto(user);
		return usuarioDto;
	}

	@Override
	public Page<UsuarioDto> findAll(Pageable pageable) {
		Page<Usuario> usuarios = usuarioRepository.findAll(pageable);
		return UsuarioDto.modeloParaDto(usuarios);
	}

	@Override
	public ResponseEntity<UsuarioDto> findById(Long id) {
		Optional<Usuario> usuario = usuarioRepository.findById(id);

		if (usuario.isPresent()) {
			return ResponseEntity.ok(new UsuarioDto(usuario.get()));
		} else {
			return (ResponseEntity<UsuarioDto>) ResponseEntity.notFound();
		}

	}

	@Override
	public Page<UsuarioDto> findByName(String nome, Pageable pageable) {
		Page<Usuario> usuario = usuarioRepository.findByName(nome, pageable);
		return UsuarioDto.modeloParaDto(usuario);
	}

	@Override
	public ResponseEntity<UsuarioDto> deleteById(Long id) {
		Optional<Usuario> usuario = usuarioRepository.findById(id);

		if (usuario.isPresent()) {
			usuarioRepository.deleteById(id);
			return ResponseEntity.ok(new UsuarioDto(usuario.get()));
		} else {
			return (ResponseEntity<UsuarioDto>) ResponseEntity.notFound();
		}
	}

	@Override
	public ResponseEntity<UsuarioDto> update(UsuarioForm form, Long id) {
		Optional<Usuario> usuario = usuarioRepository.findById(id);
		
		if (usuario.isPresent()) {
			Usuario usuarioForm = form.update(usuario.get());
			usuarioRepository.save(usuarioForm);
			return ResponseEntity.ok(new UsuarioDto(usuario.get()));
		} else {
			return (ResponseEntity<UsuarioDto>) ResponseEntity.notFound();
		}
		
	}

}
