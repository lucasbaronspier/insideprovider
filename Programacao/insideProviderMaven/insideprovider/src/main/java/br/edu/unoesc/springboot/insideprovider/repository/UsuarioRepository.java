package br.edu.unoesc.springboot.insideprovider.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.edu.unoesc.springboot.insideprovider.model.Usuario;

/**Interface para Repository de Usuario.
* @author InsideProvider
* @version 1.00
* @since Release da aplicação
*/

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
	
}
