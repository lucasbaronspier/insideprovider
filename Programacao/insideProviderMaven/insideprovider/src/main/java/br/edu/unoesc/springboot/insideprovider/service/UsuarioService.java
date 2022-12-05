package br.edu.unoesc.springboot.insideprovider.service;

import java.util.List;
import java.util.Optional;

import br.edu.unoesc.springboot.insideprovider.model.Usuario;

/**Interface para Service de Usuario.
* @author InsideProvider
* @version 1.00
* @since Release da aplicação
*/

public interface UsuarioService {

	List<Usuario> findAllUsuario();
	Optional<Usuario> findAllById(Long codUsu);
	Usuario saveUsuario(Usuario usuario);
	Usuario updateUsuario(Usuario usuario);
	void deleteUsuario(Long codUsu);
}
