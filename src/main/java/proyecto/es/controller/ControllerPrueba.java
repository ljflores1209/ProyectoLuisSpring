package proyecto.es.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("prueba")
public class ControllerPrueba {
	
	@RequestMapping("/prueba1")
	public String nuevoMetodoPrueba() {
		
		return "pagina-prueba";
	}

}
