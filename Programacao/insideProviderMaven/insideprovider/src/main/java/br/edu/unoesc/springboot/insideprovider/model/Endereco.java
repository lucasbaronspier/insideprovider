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
	
	
	/** 
	 * @return Long
	 */
	//Getters and Setters

	public Long getCodEnd() {
		return codEnd;
	}

	
	/** 
	 * @param codEnd
	 */
	public void setCodEnd(Long codEnd) {
		this.codEnd = codEnd;
	}

	
	/** 
	 * @return String
	 */
	public String getUfEnd() {
		return ufEnd;
	}

	
	/** 
	 * @param ufEnd
	 */
	public void setUfEnd(String ufEnd) {
		this.ufEnd = ufEnd;
	}

	
	/** 
	 * @return Integer
	 */
	public Integer getCepEnd() {
		return cepEnd;
	}

	
	/** 
	 * @param cepEnd
	 */
	public void setCepEnd(Integer cepEnd) {
		this.cepEnd = cepEnd;
	}

	
	/** 
	 * @return String
	 */
	public String getBaiEnd() {
		return baiEnd;
	}

	
	/** 
	 * @param baiEnd
	 */
	public void setBaiEnd(String baiEnd) {
		this.baiEnd = baiEnd;
	}

	
	/** 
	 * @return String
	 */
	public String getRuaEnd() {
		return ruaEnd;
	}

	
	/** 
	 * @param ruaEnd
	 */
	public void setRuaEnd(String ruaEnd) {
		this.ruaEnd = ruaEnd;
	}

	
	/** 
	 * @return String
	 */
	public String getNumEnd() {
		return numEnd;
	}

	
	/** 
	 * @param numEnd
	 */
	public void setNumEnd(String numEnd) {
		this.numEnd = numEnd;
	}

	
	/** 
	 * @return String
	 */
	public String getComEnd() {
		return comEnd;
	}

	
	/** 
	 * @param comEnd
	 */
	public void setComEnd(String comEnd) {
		this.comEnd = comEnd;
	}

	
	/** 
	 * @return Integer
	 */
	public Integer getCodUsu() {
		return codUsu;
	}

	
	/** 
	 * @param codUsu
	 */
	public void setCodUsu(Integer codUsu) {
		this.codUsu = codUsu;
	}

	
	
}