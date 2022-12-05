package br.edu.unoesc.springboot.insideprovider.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

/**Classe para objetos do tipo Funcionario, onde serão contidos, valores e métodos para o mesmo.
* @author InsideProvider
* @version 1.00
* @since Release da aplicação
*/

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

	
	/** 
	 * @return Long
	 */
	//getters e setters
	public Long getCodFun() {
		return codFun;
	}
	
	/** 
	 * @param codFun
	 */
	public void setCodFun(Long codFun) {
		this.codFun = codFun;
	}
	
	/** 
	 * @return String
	 */
	public String getCarFun() {
		return carFun;
	}
	
	/** 
	 * @param carFun
	 */
	public void setCarFun(String carFun) {
		this.carFun = carFun;
	}
	
	/** 
	 * @return int
	 */
	public int getSetFun() {
		return setFun;
	}
	
	/** 
	 * @param setFun
	 */
	public void setSetFun(int setFun) {
		this.setFun = setFun;
	}
}