package duytan.edu.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class UserEntity implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "iduser")
	private String id = UUID.randomUUID().toString();

	@Column(name = "username")
	private String username;

	@Column(name = "password")
	private String password;

	@OneToMany(mappedBy = "userEntity",cascade=CascadeType.ALL)
	private List<HoadonEntity> hoadon = new ArrayList<HoadonEntity>();

	
	@OneToOne (cascade=CascadeType.ALL, mappedBy="user")
	 @PrimaryKeyJoinColumn
	private KhachHangEntity khachhang;

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "user_roles", joinColumns = { @JoinColumn(name = "iduser") }, inverseJoinColumns = {
			@JoinColumn(name = "idroles") })
	private Set<RoleEntity> roles = new HashSet<RoleEntity>();

	public UserEntity() {
		super();
	}
	
	public UserEntity(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public UserEntity(String username, String password, List<HoadonEntity> hoadon) {
		super();
		this.username = username;
		this.password = password;
		this.hoadon = hoadon;
	}

	public UserEntity(String username, String password, KhachHangEntity khachhang) {
		super();
		this.username = username;
		this.password = password;
		this.khachhang = khachhang;
		this.khachhang.setUser(this);
	}

	public UserEntity(String id) {
		super();
		this.id = id;
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

	public Set<RoleEntity> getRoles() {
		return roles;
	}

	public void setRoles(Set<RoleEntity> roles) {
		this.roles = roles;
	}
	
	
}
