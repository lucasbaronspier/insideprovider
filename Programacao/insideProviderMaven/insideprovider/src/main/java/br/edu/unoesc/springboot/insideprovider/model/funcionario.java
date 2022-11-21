import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
@SequenceGenerator(name = "seq_funcionario", sequenceName = "seq_usuario", allocationSize = 1, initialValue = 1)
public class funcionario implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "cod_fun")
	private Long id;
	
	private String nome;
	private int idade;
	//getters e setters
	
}

