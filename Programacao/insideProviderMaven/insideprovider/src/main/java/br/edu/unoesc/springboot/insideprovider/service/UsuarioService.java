package br.edu.unoesc.springboot.insideprovider.service;

import java.util.List;
import java.util.Optional;

import br.edu.unoesc.springboot.insideprovider.model.Usuario;

public interface UsuarioService {

	List<Usuario> findAllUsuario();
	Optional<Usuario> findAllById(Long codUsu);
	Usuario saveUsuario(Usuario usuario);
	Usuario updateUsuario(Usuario usuario);
	void deleteUsuario(Long codUsu);
}
