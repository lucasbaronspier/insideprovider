package br.edu.unoesc.springboot.insideprovider.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

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
	
	
	//getters e setters
	public Long getCodUsu() {
		return codUsu;
	}




	public void setCodUsu(Long codUsu) {
		this.codUsu = codUsu;
	}




	public Double getCpfCnpjUsuario() {
		return cpfCnpjUsuario;
	}




	public void setCpfCnpjUsuario(Double cpfCnpjUsuario) {
		this.cpfCnpjUsuario = cpfCnpjUsuario;
	}




	public String getNomUsu() {
		return nomUsu;
	}




	public void setNomUsu(String nomUsu) {
		this.nomUsu = nomUsu;
	}




	public Date getNascimentoUsuario() {
		return nascimentoUsuario;
	}




	public void setNascimentoUsuario(Date nascimentoUsuario) {
		this.nascimentoUsuario = nascimentoUsuario;
	}




	public String getSexoUsuario() {
		return sexoUsuario;
	}




	public void setSexoUsuario(String sexoUsuario) {
		this.sexoUsuario = sexoUsuario;
	}




	public Double getTelefoneUsuario() {
		return telefoneUsuario;
	}




	public void setTelefoneUsuario(Double telefoneUsuario) {
		this.telefoneUsuario = telefoneUsuario;
	}




	public Double getCodFun() {
		return codFun;
	}




	public void setCodFun(Double codFun) {
		this.codFun = codFun;
	}

	
	

	
	
	

}