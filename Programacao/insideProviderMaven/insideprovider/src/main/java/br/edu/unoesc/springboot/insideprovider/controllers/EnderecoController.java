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

import br.edu.unoesc.springboot.insideprovider.model.Endereco;
import br.edu.unoesc.springboot.insideprovider.service.EnderecoService;

@RestController
@RequestMapping("/endereco")
public class EnderecoController {

	private final EnderecoService enderecoService;

	public EnderecoController(EnderecoService enderecoService) {
		this.enderecoService = enderecoService;
	}
	
	@GetMapping
	public List<Endereco> findAllEndereco(){
		return enderecoService.findAllEndereco();
	}
	
	
	@GetMapping("/{codEnd}")
	public Optional<Endereco> findAllById(@PathVariable("codEnd") Long codEnd) {
		return enderecoService.findAllById(codEnd);
	}
	
	@PostMapping
	public Endereco saveEndereco(@RequestBody Endereco endereco) {
		return enderecoService.saveEndereco(endereco);
	}
	
	@PutMapping
	public Endereco updateEndereco(@RequestBody Endereco endereco) {
		return enderecoService.saveEndereco(endereco);
	}
	
	@DeleteMapping("/{codend}")
	public void deleteEndereco(@PathVariable("codEnd") Long codEnd) {
		enderecoService.deleteEndereco(codEnd);
	}
}
