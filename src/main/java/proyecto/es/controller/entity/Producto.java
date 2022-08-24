package proyecto.es.controller.entity;

import java.sql.Date;

import javax.persistence.*;

@Entity
public class Producto {

	public Producto(String nombre, String tipo, double precio, Date fecha) {

		this.nombre = nombre;
		this.tipo = tipo;
		this.precio = precio;
		this.fecha = fecha;
	}

	public Producto() {

	}

	public int getId_producto() {
		return id_producto;
	}

	public void setId_producto(int id_producto) {
		this.id_producto = id_producto;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	@Override
	public String toString() {
		return "Producto [id_producto=" + id_producto + ", nombre=" + nombre + ", tipo=" + tipo + ", precio=" + precio
				+ ", fecha=" + fecha + "]";
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_producto")
	private int id_producto;
	@Column(name = "nombre")
	private String nombre;
	@Column(name = "tipo")
	private String tipo;
	@Column(name = "precio")
	private double precio;
	@Column(name = "fecha")
	private Date fecha;

}
