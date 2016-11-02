package duytan.edu.entity;

import java.util.List;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="hoadon")
public class HoadonEntity {
	
	@Id
	@Column(name="idhoadon")
	private String id = UUID.randomUUID().toString();
	
	@Column(name="ngayban")
	private String ngayban;
	
	@ManyToOne
	@JoinColumn(name="iduser")
	private UserEntity userEntity;
	
	@ManyToMany(mappedBy="hoadons", fetch = FetchType.EAGER)
	private List<SanPhamEntity> sanphams;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}


	public String getNgayban() {
		return ngayban;
	}

	public void setNgayban(String ngayban) {
		this.ngayban = ngayban;
	}

	public UserEntity getUserEntity() {
		return userEntity;
	}

	public void setUserEntity(UserEntity userEntity) {
		this.userEntity = userEntity;
	}

	

	public List<SanPhamEntity> getSanphams() {
		return sanphams;
	}

	public void setSanphams(List<SanPhamEntity> sanphams) {
		this.sanphams = sanphams;
	}

	public HoadonEntity() {
		super();
	}

	public HoadonEntity(String ngayban, UserEntity userEntity) {
		super();
		this.ngayban = ngayban;
		this.userEntity = userEntity;
	}

	
	
	
	
}
