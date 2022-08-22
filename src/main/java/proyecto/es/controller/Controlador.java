package proyecto.es.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/proyectoLUIS")
public class Controlador {

	@RequestMapping("/primeraPagina")
	public String proyecto() {

		return "primera-pagina";
	}

}
