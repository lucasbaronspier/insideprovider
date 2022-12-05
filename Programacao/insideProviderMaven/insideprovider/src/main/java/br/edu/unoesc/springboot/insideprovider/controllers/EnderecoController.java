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

/**Classe Controller para Endereco
* @author InsideProvider
* @version 1.00
* @since Release da aplicação
*/

@RestController
@RequestMapping("/endereco")
public class EnderecoController {

	private final EnderecoService enderecoService;

	public EnderecoController(EnderecoService enderecoService) {
		this.enderecoService = enderecoService;
	}
	
	
	/** Mapeamento GET para listar enderecos
	 * @return List<Endereco>
	 */
	@GetMapping
	public List<Endereco> findAllEndereco(){
		return enderecoService.findAllEndereco();
	}
	
	
	
	/** Mapeamento GET para listar endereco pelo codigo
	 * @param codEnd
	 * @return Optional<Endereco>
	 */
	@GetMapping("/{codEnd}")
	public Optional<Endereco> findAllById(@PathVariable("codEnd") Long codEnd) {
		return enderecoService.findAllById(codEnd);
	}
	
	
	/** Mapeamento POST para adicionar endereco
	 * @param endereco
	 * @return Endereco
	 */
	@PostMapping
	public Endereco saveEndereco(@RequestBody Endereco endereco) {
		return enderecoService.saveEndereco(endereco);
	}
	
	
	/** Mapeamento PUT para atualizar endereco
	 * @param endereco
	 * @return Endereco
	 */
	@PutMapping
	public Endereco updateEndereco(@RequestBody Endereco endereco) {
		return enderecoService.saveEndereco(endereco);
	}
	
	
	/** Mapeamento DELETE para deletar endereco pelo codigo
	 * @param codEnd
	 */
	@DeleteMapping("/{codend}")
	public void deleteEndereco(@PathVariable("codEnd") Long codEnd) {
		enderecoService.deleteEndereco(codEnd);
	}
}
