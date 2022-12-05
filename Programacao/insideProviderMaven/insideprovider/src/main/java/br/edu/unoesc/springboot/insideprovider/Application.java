package br.edu.unoesc.springboot.insideprovider;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

/**Classe para rodar a aplicacao.
* @author InsideProvider
* @version 1.00
* @since Release da aplicação
*/

@EntityScan(basePackages = "br.edu.unoesc.springboot.insideprovider.model")
@SpringBootApplication
public class Application {
    
    /**  Metodo Main da aplicacao
     * @param args - inicia aplicacao
     */
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
