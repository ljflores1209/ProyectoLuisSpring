package proyecto.es.controller.dao;

import java.util.List;

import proyecto.es.controller.entity.Producto;



public interface ProductoDAO {

	List<Producto> getProductos();

	void insertaProducto(Producto producto);

	Producto getProducto(int id);

	void eliminaProducto(int id);
	
	

}
