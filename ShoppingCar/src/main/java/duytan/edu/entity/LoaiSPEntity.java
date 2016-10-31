package duytan.edu.entity;

import java.util.List;
import java.util.UUID;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="loaisp")
public class LoaiSPEntity {

	@Id
	@Column(name="idloaisp")
	private String id = UUID.randomUUID().toString();
	
	@Column(name="ten_loaisp")
	private String tenloai;

	@OneToMany(mappedBy="loaiSPEntity",fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<SanPhamEntity> sanpham;
	
	public List<SanPhamEntity> getSanpham() {
		return sanpham;
	}

	public void setSanpham(List<SanPhamEntity> sanpham) {
		this.sanpham = sanpham;
	}

	public LoaiSPEntity( String tenloai) {
		super();
		this.tenloai = tenloai;
	}

	public LoaiSPEntity() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTenloai() {
		return tenloai;
	}

	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	
	
}
