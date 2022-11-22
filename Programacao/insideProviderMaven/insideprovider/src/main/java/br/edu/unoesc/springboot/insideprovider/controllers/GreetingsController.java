package br.edu.unoesc.springboot.insideprovider.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import br.edu.unoesc.springboot.insideprovider.model.Funcionario;
import br.edu.unoesc.springboot.insideprovider.model.Usuario;
import br.edu.unoesc.springboot.insideprovider.repository.FuncionarioRepository;

/**
 *
 * A sample greetings controller to return greeting text
 */
@RestController
public class GreetingsController {
    /**
     *
     * @param name the name to greet
     * @return greeting text
     */
    @RequestMapping(value = "/{name}", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public String greetingText(@PathVariable String name) {
        return "Hello " + name + "!";
    }
    
    @Autowired // injeção de dependência
	private FuncionarioRepository funcionarioRepository;
	
	@RequestMapping(value = "testeGravar/{nome}", method = RequestMethod.GET)
    	@ResponseStatus(HttpStatus.OK)
   	 public String testeGravar(@PathVariable double Codigo, String Cargo, double Setor){
    		Funcionario funcionario = new Funcionario(Codigo,Cargo,Setor);
    		funcionarioRepository.save(funcionario);
    		return "Gravado";    	
    	}
    
}
