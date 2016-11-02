package duytan.edu.entity;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="cthoadon")
public class CTHoaDonEntity {

	@Id
	@Column(name="idcthoadon")
	private String id = UUID.randomUUID().toString();
	
	@Column(name="soluong")
	private int soluong;
	
	@Column(name="chietkhau")
	private float chietkhau;
	
	@Column(name="giaban")
	private float giaban;
	
	 @ManyToOne(fetch=FetchType.EAGER)
	    @JoinColumn(name="id_sp")
	private SanPhamEntity sanPham;
	
	 @ManyToOne(fetch=FetchType.EAGER)
	    @JoinColumn(name="id_hoadon")
	private HoadonEntity hoaDon;
	
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public float getChietkhau() {
		return chietkhau;
	}

	public void setChietkhau(float chietkhau) {
		this.chietkhau = chietkhau;
	}

	public float getGiaban() {
		return giaban;
	}

	public void setGiaban(float giaban) {
		this.giaban = giaban;
	}

	public SanPhamEntity getsanPham() {
		return sanPham;
	}

	public void setsanPham(SanPhamEntity sanPham) {
		this.sanPham = sanPham;
	}

	public HoadonEntity getHoadon() {
		return hoaDon;
	}

	public void setHoadon(HoadonEntity hoadon) {
		this.hoaDon = hoadon;
	}

	public CTHoaDonEntity() {
		super();
	}

	public CTHoaDonEntity(int soluong, float chietkhau, float giaban, SanPhamEntity sanPham, HoadonEntity hoadon) {
		super();
		this.soluong = soluong;
		this.chietkhau = chietkhau;
		this.giaban = giaban;
		this.sanPham =sanPham;
		this.hoaDon = hoadon;
	}

	public CTHoaDonEntity(String id, int soluong, float chietkhau, float giaban) {
		super();
		this.id = id;
		this.soluong = soluong;
		this.chietkhau = chietkhau;
		this.giaban = giaban;
	}
	
	public CTHoaDonEntity(String id, int soluong, float chietkhau, float giaban, SanPhamEntity sanPham,
			HoadonEntity hoaDon) {
		super();
		this.id = id;
		this.soluong = soluong;
		this.chietkhau = chietkhau;
		this.giaban = giaban;
		this.sanPham = sanPham;
		this.hoaDon = hoaDon;
	}

	public void IncreSoLuong(){
		soluong = soluong+1;
	}
	
	
	
}
