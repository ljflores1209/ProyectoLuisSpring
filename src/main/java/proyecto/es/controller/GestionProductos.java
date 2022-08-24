package proyecto.es.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import proyecto.es.controller.dao.ProductoDAO;
import proyecto.es.controller.entity.Producto;

@Controller
@RequestMapping("/producto")
public class GestionProductos {
	
	@RequestMapping("/pepe")
	public String prueba() {
		
		
		return"pagina-prueba";
	}

	@RequestMapping("/primeraPagina")
	public String prueba2() {
		
		
		return "pagina-prueba2";
	}
	
	@RequestMapping("/listaProductos")
	public String listaProductos(Model modelo) {
		
		List<Producto> misProductos=productoDAO.getProductos();
		
		modelo.addAttribute("misProductos", misProductos);
		
		return "productos";
	}
	
	@RequestMapping("/nuevo")
	public String nuevo() {
		
		return "producto_nuevo";
	}
	
	
	@Autowired
	private ProductoDAO productoDAO;
	
	
}
