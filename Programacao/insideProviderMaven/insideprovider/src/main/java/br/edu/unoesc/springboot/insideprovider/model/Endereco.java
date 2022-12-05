package br.edu.unoesc.springboot.insideprovider.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**Classe para objetos do tipo Endereco, onde serão contidos, valores e métodos para o mesmo.
* @author InsideProvider
* @version 1.00
* @since Release da aplicação
*/


@Entity
@Table(name="endereco")
public class Endereco implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	@Column(name="cod_end")
	private Long codEnd;
	
	@Column(name="uf_end")
	private String ufEnd;
	
	@Column(name="cep_end")
	private Integer cepEnd;
	
	@Column(name="bai_end")
	private String baiEnd;
	
	@Column(name="rua_end")
	private String ruaEnd;
	
	@Column(name="num_end")
	private String numEnd;
	
	@Column(name="com_end")
	private String comEnd;
	
	@Column(name="cod_usu")
	private Integer codUsu;
	
	//Construtores
	public Endereco() {
	}

	public Endereco(Long codEnd, String ufEnd, Integer cepEnd, String baiEnd, String ruaEnd, String numEnd,
			String comEnd, Integer codUsu) {
		this.codEnd = codEnd;
		this.ufEnd = ufEnd;
		this.cepEnd = cepEnd;
		this.baiEnd = baiEnd;
		this.ruaEnd = ruaEnd;
		this.numEnd = numEnd;
		this.comEnd = comEnd;
		this.codUsu = codUsu;
	}
	
	
	
	//Getters and Setters
	/** Metodo para retorno do codigo do endereco
	 * @return Long
	 */
	public Long getCodEnd() {
		return codEnd;
	}

	
	/** Metodo para atualizar codigo do endereco
	 * @param codEnd
	 */
	public void setCodEnd(Long codEnd) {
		this.codEnd = codEnd;
	}

	
	/** Metodo para retorno da UF do endereco
	 * @return String
	 */
	public String getUfEnd() {
		return ufEnd;
	}

	
	/** Metodo para atualizar a UF do endereco
	 * @param ufEnd
	 */
	public void setUfEnd(String ufEnd) {
		this.ufEnd = ufEnd;
	}

	
	/** Metodo para retorno do CEP do endereco
	 * @return Integer
	 */
	public Integer getCepEnd() {
		return cepEnd;
	}

	
	/** Metodo para atualizar o CEP do endereco
	 * @param cepEnd
	 */
	public void setCepEnd(Integer cepEnd) {
		this.cepEnd = cepEnd;
	}

	
	/** Metodo para retorno do bairro do endereco
	 * @return String
	 */
	public String getBaiEnd() {
		return baiEnd;
	}

	
	/** Metodo para atualizar o bairro do endereco
	 * @param baiEnd
	 */
	public void setBaiEnd(String baiEnd) {
		this.baiEnd = baiEnd;
	}

	
	/** Metodo para retorno da rua do endereco
	 * @return String
	 */
	public String getRuaEnd() {
		return ruaEnd;
	}

	
	/** Metodo para atualizar a rua do endereco
	 * @param ruaEnd
	 */
	public void setRuaEnd(String ruaEnd) {
		this.ruaEnd = ruaEnd;
	}

	
	/** Metodo para retorno numero do endereco
	 * @return String
	 */
	public String getNumEnd() {
		return numEnd;
	}

	
	/** Metodo para atualizar numero do endereco
	 * @param numEnd
	 */
	public void setNumEnd(String numEnd) {
		this.numEnd = numEnd;
	}

	
	/** Metodo para retorno do complemento do endereco
	 * @return String
	 */
	public String getComEnd() {
		return comEnd;
	}

	
	/** Metodo para atualizar o complemento do endereco
	 * @param comEnd
	 */
	public void setComEnd(String comEnd) {
		this.comEnd = comEnd;
	}

	
	/** Metodo para retorno do codigo de usuario do endereco
	 * @return Integer
	 */
	public Integer getCodUsu() {
		return codUsu;
	}

	
	/** Metodo para atualizar o codigo de usuario do endereco
	 * @param codUsu
	 */
	public void setCodUsu(Integer codUsu) {
		this.codUsu = codUsu;
	}

	
	
}