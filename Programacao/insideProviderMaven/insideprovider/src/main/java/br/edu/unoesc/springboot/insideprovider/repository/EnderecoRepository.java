package br.edu.unoesc.springboot.insideprovider.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.edu.unoesc.springboot.insideprovider.model.Endereco;

/**Interface para Repository de Endereco.
* @author InsideProvider
* @version 1.00
* @since Release da aplicação
*/

@Repository
public interface EnderecoRepository extends JpaRepository<Endereco, Long> {
	
}
