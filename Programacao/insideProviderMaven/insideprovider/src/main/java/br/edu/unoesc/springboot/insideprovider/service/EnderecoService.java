package br.edu.unoesc.springboot.insideprovider.service;

import java.util.List;
import java.util.Optional;

import br.edu.unoesc.springboot.insideprovider.model.Endereco;

public interface EnderecoService {
	
	List<Endereco> findAllEndereco();
	Optional<Endereco> findAllById(Long codEnd);
	Endereco saveEndereco(Endereco endereco);
	Endereco updateEndereco(Endereco endereco);
	void deleteEndereco(Long id);
}
