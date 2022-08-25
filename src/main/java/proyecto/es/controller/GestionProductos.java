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

		return "pagina-prueba";
	}

	@RequestMapping("/primeraPagina")
	public String prueba2() {

		return "pagina-prueba2";
	}

	@RequestMapping("/inicio")
	public String index() {

		return "redirect:/primeraPagina";
	}

	@RequestMapping("/listaProductos")
	public String listaProductos(Model modelo) {

		List<Producto> misProductos = productoDAO.getProductos();

		modelo.addAttribute("misProductos", misProductos);

		return "productos";
	}

	@GetMapping("/productoNuevo")
	public String productoNuevoFormulario(Model modelo) {
		
		//Creo el Bin
		Producto producto = new Producto();
		modelo.addAttribute("producto", producto);

		return "producto-formulario";
	}

	@RequestMapping("/productoEditar")
	public String productoEditar(@RequestParam("id_producto") int id, Model modelo) {

		Producto producto = productoDAO.getProducto(id);

		modelo.addAttribute("producto", producto);

		return "producto-formulario";
	}

	@PostMapping("/productoInsertar")
	public String insertaProducto(@ModelAttribute("producto") Producto producto) {

		productoDAO.insertaProducto(producto);

		return "redirect:/producto/listaProductos";
	}
	
	@RequestMapping("/eliminaProducto")
	public String eliminaProducto(@RequestParam("id_producto") int id) {
		System.out.println(id);
		productoDAO.eliminaProducto(id);
		
		return "redirect:/producto/listaProductos";
	}

	@Autowired
	private ProductoDAO productoDAO;
}
