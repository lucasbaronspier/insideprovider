package br.edu.unoesc.springboot.insideprovider.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import br.edu.unoesc.springboot.insideprovider.model.Endereco;
import br.edu.unoesc.springboot.insideprovider.repository.EnderecoRepository;
import br.edu.unoesc.springboot.insideprovider.service.EnderecoService;

/**Classe para Implementar o Service de Endereco.
* @author InsideProvider
* @version 1.00
* @since Release da aplicação
*/

@Service
public class EnderecoServiceImpl implements EnderecoService {

	private final EnderecoRepository enderecoRepository;
	
	public EnderecoServiceImpl(EnderecoRepository enderecoRepository) {
		this.enderecoRepository = enderecoRepository;
	}

	
	/** Metodo para listar enderecos
	 * @return List<Endereco>
	 */
	@Override
	public List<Endereco> findAllEndereco() {
		// TODO Auto-generated method stub
		return enderecoRepository.findAll();
	}

	
	/** Metodo para filtrar endereco pelo id
	 * @param codEnd
	 * @return Optional<Endereco>
	 */
	@Override
	public Optional<Endereco> findAllById(Long codEnd) {
		// TODO Auto-generated method stub
		return enderecoRepository.findById(codEnd);
	}

	
	/** Metodo para salvar um endereco
	 * @param endereco
	 * @return Endereco
	 */
	@Override
	public Endereco saveEndereco(Endereco endereco) {
		// TODO Auto-generated method stub
		return enderecoRepository.save(endereco);
	}

	
	/** Metodo para update em endereco
	 * @param endereco
	 * @return Endereco
	 */
	@Override
	public Endereco updateEndereco(Endereco endereco) {
		// TODO Auto-generated method stub
		return enderecoRepository.save(endereco);
	}

	
	/** Metodo para delete em endereco
	 * @param codEnd
	 */
	@Override
	public void deleteEndereco(Long codEnd) {
		// TODO Auto-generated method stub
		enderecoRepository.deleteById(codEnd);
	}

}
