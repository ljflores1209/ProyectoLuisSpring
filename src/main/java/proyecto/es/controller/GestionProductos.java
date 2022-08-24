package proyecto.es.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
	
	@RequestMapping("/inicio")
	public String index() {
		
		
		return "redirect:/primeraPagina";
	}
	
	
	
	@RequestMapping("/productoNuevo")
	public String productoNuevoFormulario() {
		
		return "producto-nuevo";
	}
	
	@GetMapping("/insertaProducto")
	public String insertaProducto(@ModelAttribute("producto") Producto producto) {
		System.out.println("tratando de insertar producto");
		System.out.println(producto.toString());
		System.out.println("producto insertado con exito");
		productoDAO.insertaProducto(producto);
		
		
		return "redirect:/producto/listaProductos";
	}
	
	
	@RequestMapping("/listaProductos")
	public String listaProductos(Model modelo) {
		
		List<Producto> misProductos=productoDAO.getProductos();
		
		modelo.addAttribute("misProductos", misProductos);
		
		return "productos";
	}
	
	@Autowired
	private ProductoDAO productoDAO;
}
