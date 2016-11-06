package duytan.edu.entity;

import java.util.List;
import java.util.UUID;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class UserEntity {

	@Id
	@Column(name="iduser")
	private String id = UUID.randomUUID().toString();
	
	@Column(name="username")
	private String username ;
	
	@Column(name="password")
	private String password;

	@OneToMany(mappedBy="userEntity")
	private List<HoadonEntity> hoadon;
	
	@OneToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@PrimaryKeyJoinColumn
	private KhachHangEntity khachhang;
	
	
	
	public UserEntity(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	
	public UserEntity(String username) {
		super();
		this.username = username;
	}


	public List<HoadonEntity> getHoadon() {
		return hoadon;
	}


	public KhachHangEntity getKhachhang() {
		return khachhang;
	}


	public void setKhachhang(KhachHangEntity khachhang) {
		this.khachhang = khachhang;
	}


	public void setHoadon(List<HoadonEntity> hoadon) {
		this.hoadon = hoadon;
	}


	public UserEntity() {
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public UserEntity(String username, String password, List<HoadonEntity> hoadon) {
		super();
		this.username = username;
		this.password = password;
		this.hoadon = hoadon;
	}
	
	
}
