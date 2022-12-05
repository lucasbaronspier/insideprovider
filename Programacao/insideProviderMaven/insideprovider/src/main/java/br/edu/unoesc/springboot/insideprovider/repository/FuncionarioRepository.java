package br.edu.unoesc.springboot.insideprovider.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.edu.unoesc.springboot.insideprovider.model.Funcionario;

/**Interface para Repository de Funcionario.
* @author InsideProvider
* @version 1.00
* @since Release da aplicação
*/

@Repository
public interface FuncionarioRepository extends JpaRepository<Funcionario, Long> {
	
}