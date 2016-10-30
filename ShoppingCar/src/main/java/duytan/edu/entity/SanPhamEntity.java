package duytan.edu.entity;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="sanpham")
public class SanPhamEntity {

	@Id
	@Column(name="idsanpham")
	private String id = UUID.randomUUID().toString();
	
	@Column(name="tensp")
	private String name;
	
	@Column(name="dongiasp")
	private float diachi;
	
	@Column(name="hinhanh")
	private String hinhanh;
	
	@ManyToOne
	@JoinColumn(name="id_thuonghieu")
	private ThuongHieuEntity thuongHieuEntity;
	
	@ManyToOne
	@JoinColumn(name="id_loaisp")
	private LoaiSPEntity loaiSPEntity;

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

	public float getDiachi() {
		return diachi;
	}

	public void setDiachi(float diachi) {
		this.diachi = diachi;
	}

	public String getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}

	public ThuongHieuEntity getThuongHieuEntity() {
		return thuongHieuEntity;
	}

	public void setThuongHieuEntity(ThuongHieuEntity thuongHieuEntity) {
		this.thuongHieuEntity = thuongHieuEntity;
	}

	public LoaiSPEntity getLoaiSPEntity() {
		return loaiSPEntity;
	}

	public void setLoaiSPEntity(LoaiSPEntity loaiSPEntity) {
		this.loaiSPEntity = loaiSPEntity;
	}

	public SanPhamEntity(String name, float diachi, String hinhanh, ThuongHieuEntity thuongHieuEntity,
			LoaiSPEntity loaiSPEntity) {
		super();
		this.name = name;
		this.diachi = diachi;
		this.hinhanh = hinhanh;
		this.thuongHieuEntity = thuongHieuEntity;
		this.loaiSPEntity = loaiSPEntity;
	}

	public SanPhamEntity() {
		super();
	}
	
	
	
}
