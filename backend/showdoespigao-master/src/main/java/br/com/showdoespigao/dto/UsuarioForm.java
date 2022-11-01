package br.com.showdoespigao.dto;

import javax.validation.constraints.NotBlank;

import br.com.showdoespigao.modelos.Usuario;

public class UsuarioForm {
	
	@NotBlank
	private String nome;
	
	@NotBlank
	private String senha;
	
	private String chaveAutenticacaoGoogle;
	
	public String getNome() {
		return nome;
	}

	public String getSenha() {
		return senha;
	}

	public String getChaveAutenticacaoGoogle() {
		return chaveAutenticacaoGoogle;
	}

	public Usuario dtoToModel() {
		return new Usuario(nome, senha, chaveAutenticacaoGoogle);
	}
	
	public Usuario update(Usuario usuario) {
		usuario.setNome(nome);
		usuario.setSenha(senha);
		usuario.setChaveAutenticacaoGoogle(chaveAutenticacaoGoogle);
		return usuario;
	}
}
