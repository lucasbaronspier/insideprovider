package br.edu.unoesc.springboot.insideprovider.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Usuario implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	private Long codUsu;
	private int cpfCnpjUsuario;
	private String nomUsu;
	private Date nascimentoUsuario;
	private String sexoUsuario;
	private int telefoneUsuario;
	private int codFunc;
	
	
	

	
	//getters e setters
	
	public int getCodFunc() {
		return codFunc;
	}
	public void setCodFunc(int codFunc) {
		this.codFunc = codFunc;
	}
	public Long getCodUsu() {
		return codUsu;
	}
	public void setCodUsu(Long codUsu) {
		this.codUsu = codUsu;
	}
	public int getCpfCnpjUsuario() {
		return cpfCnpjUsuario;
	}
	public void setCpfCnpjUsuario(int cpfCnpjUsuario) {
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
	public int getTelefoneUsuario() {
		return telefoneUsuario;
	}
	public void setTelefoneUsuario(int telefoneUsuario) {
		this.telefoneUsuario = telefoneUsuario;
	}
	
	

}