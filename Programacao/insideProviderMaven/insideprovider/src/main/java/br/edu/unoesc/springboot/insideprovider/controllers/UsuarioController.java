package br.edu.unoesc.springboot.insideprovider.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.edu.unoesc.springboot.insideprovider.model.Usuario;
import br.edu.unoesc.springboot.insideprovider.service.UsuarioService;

/**Classe Controller para Usuario
* @author InsideProvider
* @version 1.00
* @since Release da aplicação
*/

@RestController
@RequestMapping("/usuario")
public class UsuarioController {

	private final UsuarioService usuarioService;
	
	public UsuarioController(UsuarioService usuarioService) {
		this.usuarioService = usuarioService;
	}
	
	
	
	/** Mapeamento GET para listar usuarios
	 * @return List<Usuario>
	 */
	@GetMapping
	public List<Usuario> findAllUsuario(){
		return usuarioService.findAllUsuario();
	}
	
	
	
	/** Mapeamento GET para listar usuario pelo codigo
	 * @param codUsu
	 * @return Optional<Usuario>
	 */
	@GetMapping("/{codUsu}")
	public Optional<Usuario> findAllById(@PathVariable("codUsu") Long codUsu) {
		return usuarioService.findAllById(codUsu);
	}
	
	
	/** Mapeamento POST para salvar usuario
	 * @param usuario
	 * @return Usuario
	 */
	@PostMapping
	public Usuario saveUsuario(@RequestBody Usuario usuario) {
		return usuarioService.saveUsuario(usuario);
	}
	
	
	/** Mapeamento PUT para atualizar usuario
	 * @param usuario
	 * @return Usuario
	 */
	@PutMapping
	public Usuario updateUsuario(@RequestBody Usuario usuario) {
		return usuarioService.saveUsuario(usuario);
	}
	
	
	/** Mapeamento DELETE para deletar Usuario pelo codigo
	 * @param codUsu
	 */
	@DeleteMapping("/{codUsu}")
	public void deleteUsuario(@PathVariable("codUsu") Long codUsu) {
		usuarioService.deleteUsuario(codUsu);
	}
	
	
}
