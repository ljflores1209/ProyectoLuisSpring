package proyecto.es.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/prueba")
public class ControladorPrueba {
	
	@RequestMapping("/pepe")
	public String prueba() {
		
		
		return"pagina-prueba";
	}

}
