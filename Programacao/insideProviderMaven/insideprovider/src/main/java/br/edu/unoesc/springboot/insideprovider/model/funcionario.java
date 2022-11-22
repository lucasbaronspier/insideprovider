package br.edu.unoesc.springboot.insideprovider.model;

import java.io.Serializable;

public class Funcionario implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private double cod_fun;
	private String car_fun;
	private double set_fun;
	
	public Funcionario(double cod_fun, String car_fun, double set_fun) {
		super();
		this.cod_fun = cod_fun;
		this.car_fun = car_fun;
		this.set_fun = set_fun;
	}

	// Getters and Setters
	public double getCod_fun() {
		return cod_fun;
	}

	public void setCod_fun(double cod_fun) {
		this.cod_fun = cod_fun;
	}

	public String getCar_fun() {
		return car_fun;
	}

	public void setCar_fun(String car_fun) {
		this.car_fun = car_fun;
	}

	public double getSet_fun() {
		return set_fun;
	}

	public void setSet_fun(double set_fun) {
		this.set_fun = set_fun;
	}
	
	
	
}
