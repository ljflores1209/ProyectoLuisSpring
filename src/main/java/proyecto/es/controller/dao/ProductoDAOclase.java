package proyecto.es.controller.dao;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import proyecto.es.controller.entity.Producto;

@Repository
public class ProductoDAOclase implements ProductoDAO {

	@Override
	@Transactional
	public List<Producto> getProductos() {
		
		Session miSession= sessionFactory.getCurrentSession();
		
		Query<Producto> miProducto=miSession.createQuery("from Producto", Producto.class);

		List<Producto> productos=miProducto.getResultList();
		
		return productos;
	}

	@Autowired
	private SessionFactory sessionFactory;
}
