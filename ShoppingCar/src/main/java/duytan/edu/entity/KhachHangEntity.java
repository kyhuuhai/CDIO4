package duytan.edu.entity;

import java.util.Date;
import java.util.UUID;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="khachhang")
public class KhachHangEntity {
	
	@Id
	@Column(name="idkhachhang")
	private String id = UUID.randomUUID().toString();
	
	@Column(name="name")
	private String name;
	
	@Column(name="ngaysinh")
	private Date ngaysinh;
	
	@Column(name="email")
	private String email;
	
	@Column(name="sdt")
	private int sdt;
    
	@OneToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL,mappedBy="khachhang")
	private UserEntity use;
	
	
	
	public KhachHangEntity(String id, String name, Date ngaysinh, String email, int sdt, UserEntity use) {
		super();
		this.id = id;
		this.name = name;
		this.ngaysinh = ngaysinh;
		this.email = email;
		this.sdt = sdt;
		this.use = use;
	}

	public UserEntity getUse() {
		return use;
	}

	public void setUse(UserEntity use) {
		this.use = use;
	}

	public KhachHangEntity() {
		super();
		// TODO Auto-generated constructor stub
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

	public Date getNgaysinh() {
		return ngaysinh;
	}

	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getSdt() {
		return sdt;
	}

	public void setSdt(int sdt) {
		this.sdt = sdt;
	}

	@Override
	public String toString() {
		return "KhachHangEntity [id=" + id + ", name=" + name + ", ngaysinh=" + ngaysinh + ", email=" + email + ", sdt="
				+ sdt + "]";
	}
	
	
	
	
	

}
