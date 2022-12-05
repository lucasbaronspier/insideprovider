package br.edu.unoesc.springboot.insideprovider.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**Classe para objetos do tipo Usuario, onde serão contidos, valores e métodos para o mesmo.
* @author InsideProvider
* @version 1.00
* @since Release da aplicação
*/


@Entity
@Table(name="usuario")
public class Usuario implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	@Column(name="cod_usu")
	private Long codUsu;
	
	@Column(name="cpf_cnpj_usu")
	private Double cpfCnpjUsuario;
	
	@Column(name="nom_usu")
	private String nomUsu;
	
	@Column(name="dat_nas_usu")
	private Date nascimentoUsuario;
	
	@Column(name="sex_usu")
	private String sexoUsuario;
	
	@Column(name="tel_usu")
	private Double telefoneUsuario;
	
	@Column(name="cod_fun")
	private Double codFun;

	
	//Construtores
	
	public Usuario() {
	}




	public Usuario(Long codUsu, Double cpfCnpjUsuario, String nomUsu, Date nascimentoUsuario, String sexoUsuario,
			Double telefoneUsuario, Double codFun) {
		this.codUsu = codUsu;
		this.cpfCnpjUsuario = cpfCnpjUsuario;
		this.nomUsu = nomUsu;
		this.nascimentoUsuario = nascimentoUsuario;
		this.sexoUsuario = sexoUsuario;
		this.telefoneUsuario = telefoneUsuario;
		this.codFun = codFun;
	}
	
	
	
	/** Metodo para retorno do codigo do usuario
	 * @return Long
	 */
	//getters e setters
	public Long getCodUsu() {
		return codUsu;
	}




	
	/** Metodo para atualizar o codigo do usuario
	 * @param codUsu
	 */
	public void setCodUsu(Long codUsu) {
		this.codUsu = codUsu;
	}




	
	/** Metodo para retorno do cpf/cnpj do usuario
	 * @return Double
	 */
	public Double getCpfCnpjUsuario() {
		return cpfCnpjUsuario;
	}




	
	/** Metodo para atualizar o cpf/cnpj do usuario
	 * @param cpfCnpjUsuario
	 */
	public void setCpfCnpjUsuario(Double cpfCnpjUsuario) {
		this.cpfCnpjUsuario = cpfCnpjUsuario;
	}




	
	/** Metodo para retorno do nome do usuario
	 * @return String
	 */
	public String getNomUsu() {
		return nomUsu;
	}




	
	/** Metodo para atualizar o nome do usuario
	 * @param nomUsu
	 */
	public void setNomUsu(String nomUsu) {
		this.nomUsu = nomUsu;
	}




	
	/** Metodo para retorno do nascimento do usuario
	 * @return Date
	 */
	public Date getNascimentoUsuario() {
		return nascimentoUsuario;
	}




	
	/** Metodo para atualizar o nascimento do usuario
	 * @param nascimentoUsuario
	 */
	public void setNascimentoUsuario(Date nascimentoUsuario) {
		this.nascimentoUsuario = nascimentoUsuario;
	}




	
	/** Metodo para retorno do sexo do usuario
	 * @return String
	 */
	public String getSexoUsuario() {
		return sexoUsuario;
	}




	
	/** Metodo para atualizar o sexo do usuario
	 * @param sexoUsuario
	 */
	public void setSexoUsuario(String sexoUsuario) {
		this.sexoUsuario = sexoUsuario;
	}




	
	/** Metodo para retorno do telefone do usuario
	 * @return Double
	 */
	public Double getTelefoneUsuario() {
		return telefoneUsuario;
	}




	
	/** Metodo para atualizar o telefone do usuario
	 * @param telefoneUsuario
	 */
	public void setTelefoneUsuario(Double telefoneUsuario) {
		this.telefoneUsuario = telefoneUsuario;
	}




	
	/** Metodo para retorno do codigo de funcionario do usuario
	 * @return Double
	 */
	public Double getCodFun() {
		return codFun;
	}




	
	/** Metodo para atualizar o codigo de funcionario do usuario
	 * @param codFun
	 */
	public void setCodFun(Double codFun) {
		this.codFun = codFun;
	}

	
	

	
	
	

}