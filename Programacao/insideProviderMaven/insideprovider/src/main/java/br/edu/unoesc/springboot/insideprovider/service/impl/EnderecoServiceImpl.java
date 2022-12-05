package br.edu.unoesc.springboot.insideprovider.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import br.edu.unoesc.springboot.insideprovider.model.Endereco;
import br.edu.unoesc.springboot.insideprovider.repository.EnderecoRepository;
import br.edu.unoesc.springboot.insideprovider.service.EnderecoService;

@Service
public class EnderecoServiceImpl implements EnderecoService {

	private final EnderecoRepository enderecoRepository;
	
	public EnderecoServiceImpl(EnderecoRepository enderecoRepository) {
		this.enderecoRepository = enderecoRepository;
	}

	@Override
	public List<Endereco> findAllEndereco() {
		// TODO Auto-generated method stub
		return enderecoRepository.findAll();
	}

	@Override
	public Optional<Endereco> findAllById(Long codEnd) {
		// TODO Auto-generated method stub
		return enderecoRepository.findById(codEnd);
	}

	@Override
	public Endereco saveEndereco(Endereco endereco) {
		// TODO Auto-generated method stub
		return enderecoRepository.save(endereco);
	}

	@Override
	public Endereco updateEndereco(Endereco endereco) {
		// TODO Auto-generated method stub
		return enderecoRepository.save(endereco);
	}

	@Override
	public void deleteEndereco(Long codEnd) {
		// TODO Auto-generated method stub
		enderecoRepository.deleteById(codEnd);
	}

}
