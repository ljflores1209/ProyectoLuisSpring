package proyecto.es.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import proyecto.es.controller.dao.ProductoDAO;
import proyecto.es.controller.entity.Producto;

@Controller
@RequestMapping("")
public class Controlador {

	@RequestMapping("/primeraPagina")
	public String proyecto() {

		return "primera-pagina";
	}
	
	@RequestMapping("/calculadora")
	public String calculadora() {
		
		return "calculadora";
	}
	
	@RequestMapping("/tienda")
	public String tienda() {
		
		return "tienda";
	}
	
	@RequestMapping("/funciones")
	public String funciones() {
		
		return "funciones";
	}
	
	@RequestMapping("/proyectoCricoin")
	public String proyectoCricoin() {
		
		
		return "";
	}
	
	
	
	@RequestMapping("/productoNuevo")
	public String nuevo() {
		
		return "pagina-prueba";
	}
	

	
	
}
