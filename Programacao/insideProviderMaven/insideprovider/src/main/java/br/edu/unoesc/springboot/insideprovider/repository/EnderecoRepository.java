package br.edu.unoesc.springboot.insideprovider.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.edu.unoesc.springboot.insideprovider.model.Endereco;

@Repository
public interface EnderecoRepository extends JpaRepository<Endereco, Long> {
	
}
