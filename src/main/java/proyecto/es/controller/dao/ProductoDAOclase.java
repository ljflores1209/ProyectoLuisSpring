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

		Session miSession = sessionFactory.getCurrentSession();

		Query<Producto> miProducto = miSession.createQuery("from Producto", Producto.class);

		List<Producto> productos = miProducto.getResultList();

		return productos;
	}

	@Override
	@Transactional
	public void insertaProducto(Producto producto) {

		Session miSession = sessionFactory.getCurrentSession();

		miSession.saveOrUpdate(producto);

	}

	@Override
	@Transactional
	public Producto getProducto(int id) {

		Session miSession = sessionFactory.getCurrentSession();

		Producto producto = miSession.get(Producto.class, id);

		return producto;
	}

	@Override
	@Transactional
	public void eliminaProducto(int id) {

		Session miSession = sessionFactory.getCurrentSession();
		
		Query consulta=miSession.createQuery("delete from Producto where id_producto=:idProducto");
		
		consulta.setParameter("idProducto", id);
		
		consulta.executeUpdate();
		

	}

	@Autowired
	private SessionFactory sessionFactory;

}
