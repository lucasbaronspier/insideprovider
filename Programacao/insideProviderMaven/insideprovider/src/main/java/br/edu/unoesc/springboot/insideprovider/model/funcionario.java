package br.edu.unoesc.springboot.insideprovider.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Funcionario implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	private Long codFun;
	private String carFun;
	private int setFun;
	
	//Construtores
	public Funcionario(Long codFun, String carFun, int setFun) {
		this.codFun = codFun;
		this.carFun = carFun;
		this.setFun = setFun;
	}

	public Funcionario() {
	}

	//getters e setters
	public Long getCodFun() {
		return codFun;
	}
	public void setCodFun(Long codFun) {
		this.codFun = codFun;
	}
	public String getCarFun() {
		return carFun;
	}
	public void setCarFun(String carFun) {
		this.carFun = carFun;
	}
	public int getSetFun() {
		return setFun;
	}
	public void setSetFun(int setFun) {
		this.setFun = setFun;
	}
}