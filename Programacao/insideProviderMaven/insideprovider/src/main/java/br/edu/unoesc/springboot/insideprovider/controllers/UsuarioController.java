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

@RestController
@RequestMapping("/usuario")
public class UsuarioController {

	private final UsuarioService usuarioService;
	
	public UsuarioController(UsuarioService usuarioService) {
		this.usuarioService = usuarioService;
	}
	
	
	@GetMapping
	public List<Usuario> findAllUsuario(){
		return usuarioService.findAllUsuario();
	}
	
	
	@GetMapping("/{codUsu}")
	public Optional<Usuario> findAllById(@PathVariable("codUsu") Long codUsu) {
		return usuarioService.findAllById(codUsu);
	}
	
	@PostMapping
	public Usuario saveUsuario(@RequestBody Usuario usuario) {
		return usuarioService.saveUsuario(usuario);
	}
	
	@PutMapping
	public Usuario updateUsuario(@RequestBody Usuario usuario) {
		return usuarioService.saveUsuario(usuario);
	}
	
	@DeleteMapping("/{codUsu}")
	public void deleteUsuario(@PathVariable("codUsu") Long codUsu) {
		usuarioService.deleteUsuario(codUsu);
	}
	
	
}
