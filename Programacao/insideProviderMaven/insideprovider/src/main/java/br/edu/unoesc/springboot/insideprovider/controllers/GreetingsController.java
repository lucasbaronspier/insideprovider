package br.edu.unoesc.springboot.insideprovider.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import br.edu.unoesc.springboot.insideprovider.model.Funcionario;
import br.edu.unoesc.springboot.insideprovider.model.Usuario;
import br.edu.unoesc.springboot.insideprovider.repository.FuncionarioRepository;
import br.edu.unoesc.springboot.insideprovider.repository.UsuarioRepository;

@RestController
public class GreetingsController {

    //
    ////
    ////
    //
    @Autowired // injeção de dependência
	private FuncionarioRepository funcionarioRepository;
    
    @Autowired
    private UsuarioRepository usuarioRepository;
	
    //
    //teste para gravar funcionario
    //
	@RequestMapping(value = "testeGravar/{nome}", method = RequestMethod.GET)
    	@ResponseStatus(HttpStatus.OK)
   	 public String testeGravar(@PathVariable String nome){
    		Funcionario funcionario = new Funcionario();
    		funcionario.setCarFun(nome);
    		funcionarioRepository.save(funcionario);
    		return "Gravado";    	
    	}
	
	//
	//teste gravar usuario
	//
	@RequestMapping(value = "gravausu/{nome}", method = RequestMethod.GET)
	@ResponseStatus(HttpStatus.OK)
	 public String gravausu(@PathVariable String nome){
		Usuario usuario= new Usuario();
		usuario.setNomUsu(nome);
		usuarioRepository.save(usuario);
		return "Gravado";    	
	}
	//
	//listar funcionarios
	//
	@GetMapping(value="listatodos")	
	   @ResponseBody
	    public ResponseEntity<List<Funcionario>>listaUsuario(){
	    	List<Funcionario> funcionarios = funcionarioRepository.findAll();
	    	return new ResponseEntity<List<Funcionario>>(funcionarios, HttpStatus.OK) ;
	    }
	
	//
	//listar usuarios
	//
	@GetMapping(value="listausuarios")
	   @ResponseBody
	    public ResponseEntity<List<Usuario>>listaUsuarios(){
	    	List<Usuario> usuarios = usuarioRepository.findAll();
	    	return new ResponseEntity<List<Usuario>>(usuarios, HttpStatus.OK) ;
	    }
	
	
	//
	//salvar dados com formato json para funcionario
	//
	@PostMapping(value = "salvar")
    @ResponseBody
    public ResponseEntity<Funcionario> salvar(@RequestBody Funcionario funcionario){
    	Funcionario user = funcionarioRepository.save(funcionario);
    	return new ResponseEntity<Funcionario>(user, HttpStatus.CREATED);
    }
	
	//
	//salvar dados com formato json para usuario
	//
	@PostMapping(value = "salvarUsuario")
    @ResponseBody
    public ResponseEntity<Usuario> salvar(@RequestBody Usuario usuario){
    	Usuario user = usuarioRepository.save(usuario);
    	return new ResponseEntity<Usuario>(user, HttpStatus.CREATED);
    }
	
	//
	//teste excluir registros
	//
	@DeleteMapping(value = "delete")
	@ResponseBody
	public ResponseEntity<String> delete(@RequestParam Long iduser) {
		funcionarioRepository.deleteById(iduser);
		return new ResponseEntity<String>("Usuario excluido com sucesso", HttpStatus.OK);
	}
	
	//
	//teste buscar  funcionario
	//
	@GetMapping(value = "buscaruserid")
	@ResponseBody
	public ResponseEntity<Funcionario> buscaruserid(@RequestParam(name = "iduser") Long iduser){
		Funcionario funcionario= funcionarioRepository.findById(iduser).get();
		return new ResponseEntity<Funcionario>(funcionario, HttpStatus.OK);
	}
	
	//
	//teste para atualizar funcionario
	//
	@PutMapping(value = "atualizar")
	@ResponseBody
	public ResponseEntity<?> atualizar(@RequestBody Funcionario funcionario){
		if(funcionario.getCodFun()==null) {
			return new ResponseEntity<String>("Id não informado para atualizar", HttpStatus.OK);
		}
		Funcionario func = funcionarioRepository.saveAndFlush(funcionario);
		return new ResponseEntity<Funcionario>(funcionario, HttpStatus.OK);
	}
	
	//
	
}
