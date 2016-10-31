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
	private float dongiasp;
	
	@Column(name="hinhanh")
	private String image;
	
	@Column(name="description")
	private String description;
	
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

	public float getdongiasp() {
		return dongiasp	;
	}

	public void setdongiasp(float dongiasp) {
		this.dongiasp = dongiasp;
	}

	public String getimage() {
		return image;
	}

	public void setimage(String image) {
		this.image = image;
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
	
	

	public float getDongiasp() {
		return dongiasp;
	}

	public void setDongiasp(float dongiasp) {
		this.dongiasp = dongiasp;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public SanPhamEntity(String name, float dongiasp, String image,String Description, ThuongHieuEntity thuongHieuEntity,
			LoaiSPEntity loaiSPEntity) {
		super();
		this.name = name;
		this.dongiasp = dongiasp;
		this.image = image;
		this.description = Description;
		this.thuongHieuEntity = thuongHieuEntity;
		this.loaiSPEntity = loaiSPEntity;
	}

	public SanPhamEntity() {
		super();
	}
	
	
	
}
