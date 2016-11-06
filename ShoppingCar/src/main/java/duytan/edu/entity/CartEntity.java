package duytan.edu.entity;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class CartEntity {

	@Id
	@Column(name="idcart")
	private String id = UUID.randomUUID().toString();
	
	@Column(name="username")
	private String username;
	
	@Column(name="soluong")
	private String soluong;
	
	@Column(name="giaban")
	private float giaban;
	
	@ManyToOne
	@JoinColumn(name="idproduct")
	private SanPhamEntity sanPhamEntity;

	public CartEntity(String username, String soluong, float giaban, SanPhamEntity sanPhamEntity) {
		super();
		this.username = username;
		this.soluong = soluong;
		this.giaban = giaban;
		this.sanPhamEntity = sanPhamEntity;
	}

	public CartEntity() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getSoluong() {
		return soluong;
	}

	public void setSoluong(String soluong) {
		this.soluong = soluong;
	}

	public float getGiaban() {
		return giaban;
	}

	public void setGiaban(float giaban) {
		this.giaban = giaban;
	}

	public SanPhamEntity getSanPhamEntity() {
		return sanPhamEntity;
	}

	public void setSanPhamEntity(SanPhamEntity sanPhamEntity) {
		this.sanPhamEntity = sanPhamEntity;
	}

	
	
	
}
