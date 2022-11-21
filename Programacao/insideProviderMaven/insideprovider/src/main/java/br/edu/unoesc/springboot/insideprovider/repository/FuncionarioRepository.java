package br.edu.unoesc.springboot.insideprovider.repository;

public class FuncionarioRepository {
	@Repository
	public interface FuncionarioRepository extends JpaRepository<Funcionario, double> {
	}
}
