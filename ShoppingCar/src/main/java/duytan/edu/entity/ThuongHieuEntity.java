package duytan.edu.entity;

import java.util.List;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="thuonghieu")
public class ThuongHieuEntity {

	@Id
	private String id = UUID.randomUUID().toString();
	
	@Column(name="ten_thuonghieu")
	private String name;
	
	@Column(name="diachi")
	private String diachi;
	
	@Column(name="hinhanh")
	private String hinhanh;
	
	@OneToMany(mappedBy="thuonghieu")
	private List<SanPhamEntity> sanpham;

	
	public List<SanPhamEntity> getSanpham() {
		return sanpham;
	}

	public void setHotels(List<SanPhamEntity> sanpham) {
		this.sanpham = sanpham;
	}

	public ThuongHieuEntity( String name, String diachi, String hinhanh) {
		super();
		this.name = name;
		this.diachi = diachi;
		this.hinhanh = hinhanh;
	}

	public ThuongHieuEntity() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}
	
	
	
}
