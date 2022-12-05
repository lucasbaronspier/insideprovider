package br.edu.unoesc.springboot.insideprovider.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import br.edu.unoesc.springboot.insideprovider.model.Usuario;
import br.edu.unoesc.springboot.insideprovider.repository.UsuarioRepository;
import br.edu.unoesc.springboot.insideprovider.service.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService {

	private final UsuarioRepository usuarioRepository;
		
	public UsuarioServiceImpl(UsuarioRepository usuarioRepository) {
		this.usuarioRepository = usuarioRepository;
	}

	
	/** 
	 * @return List<Usuario>
	 */
	@Override
	public List<Usuario> findAllUsuario() {
		// TODO Auto-generated method stub
		return usuarioRepository.findAll();
	}

	
	/** 
	 * @param codUsu
	 * @return Optional<Usuario>
	 */
	@Override
	public Optional<Usuario> findAllById(Long codUsu) {
		// TODO Auto-generated method stub
		return usuarioRepository.findById(codUsu);
	}

	
	/** 
	 * @param usuario
	 * @return Usuario
	 */
	@Override
	public Usuario saveUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		return usuarioRepository.save(usuario);
	}

	
	/** 
	 * @param usuario
	 * @return Usuario
	 */
	@Override
	public Usuario updateUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		return usuarioRepository.save(usuario);
	}

	
	/** 
	 * @param codUsu
	 */
	@Override
	public void deleteUsuario(Long codUsu) {
		// TODO Auto-generated method stub
		usuarioRepository.deleteById(codUsu);
	}



}
