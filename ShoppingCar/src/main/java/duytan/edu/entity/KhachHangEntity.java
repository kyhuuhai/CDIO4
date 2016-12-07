package duytan.edu.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.UUID;

import javax.persistence.*;


@Entity
@Table(name = "khachhang")
public class KhachHangEntity implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "idkhachhang")
	private String id = UUID.randomUUID().toString();
	
	@Column(name = "name")
	private String name;

	@Column(name = "ngaysinh")
	private Date ngaysinh;

	@Column(name = "email")
	private String email;

	@Column(name = "sdt")
	private String sdt;

	@OneToOne(cascade = CascadeType.ALL, optional = false, fetch = FetchType.EAGER, orphanRemoval = true)
    @PrimaryKeyJoinColumn
	private UserEntity user;

	public KhachHangEntity(String name, Date ngaysinh, String email, String sdt) {
		super();
		this.name = name;
		this.ngaysinh = ngaysinh;
		this.email = email;
		this.sdt = sdt;
	}

	public KhachHangEntity() {
		super();
	}

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity use) {
		this.user = use;
		this.setId(use.getId());
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

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
	
}
