package br.com.showdoespigao.dto;

import org.springframework.data.domain.Page;

import br.com.showdoespigao.modelos.Usuario;

public class UsuarioDto {

	private Long id;
	private String nome;
	private String senha;
	private String chaveAutenticacaoGoogle;
	
	public UsuarioDto() {
		super();
	}

	public UsuarioDto(Usuario usuario) {
		super();
		this.id = usuario.getId();
		this.nome = usuario.getNome();
		this.senha = usuario.getSenha();
		this.chaveAutenticacaoGoogle = usuario.getChaveAutenticacaoGoogle();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getChaveAutenticacaoGoogle() {
		return chaveAutenticacaoGoogle;
	}

	public void setChaveAutenticacaoGoogle(String chaveAutenticacaoGoogle) {
		this.chaveAutenticacaoGoogle = chaveAutenticacaoGoogle;
	}
	
	public static Page<UsuarioDto> modeloParaDto(Page<Usuario> usuario) {
		return usuario.map(UsuarioDto::new);
	}
	
}
