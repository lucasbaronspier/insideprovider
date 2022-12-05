package br.edu.unoesc.springboot.insideprovider.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import br.edu.unoesc.springboot.insideprovider.model.Usuario;
import br.edu.unoesc.springboot.insideprovider.repository.UsuarioRepository;
import br.edu.unoesc.springboot.insideprovider.service.UsuarioService;

/**Classe para Implementar o Service de Usuario.
* @author InsideProvider
* @version 1.00
* @since Release da aplicação
*/

@Service
public class UsuarioServiceImpl implements UsuarioService {

	private final UsuarioRepository usuarioRepository;
		
	public UsuarioServiceImpl(UsuarioRepository usuarioRepository) {
		this.usuarioRepository = usuarioRepository;
	}

	
	/** Metodo para listar usuarios
	 * @return List<Usuario>
	 */
	@Override
	public List<Usuario> findAllUsuario() {
		// TODO Auto-generated method stub
		return usuarioRepository.findAll();
	}

	
	/** Metodo para filtrar usuario pelo codigo
	 * @param codUsu
	 * @return Optional<Usuario>
	 */
	@Override
	public Optional<Usuario> findAllById(Long codUsu) {
		// TODO Auto-generated method stub
		return usuarioRepository.findById(codUsu);
	}

	
	/** Metodo para salvar usuario
	 * @param usuario
	 * @return Usuario
	 */
	@Override
	public Usuario saveUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		return usuarioRepository.save(usuario);
	}

	
	/** Metodo para update em usuario
	 * @param usuario
	 * @return Usuario
	 */
	@Override
	public Usuario updateUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		return usuarioRepository.save(usuario);
	}

	
	/** Metodo para delete em usuario
	 * @param codUsu
	 */
	@Override
	public void deleteUsuario(Long codUsu) {
		// TODO Auto-generated method stub
		usuarioRepository.deleteById(codUsu);
	}



}
