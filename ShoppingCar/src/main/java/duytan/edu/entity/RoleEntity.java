package duytan.edu.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQuery;
import javax.persistence.Table;


@Entity
@Table(name="roles")
@NamedQuery(name="RoleEntity.findAll", query="SELECT r FROM RoleEntity r")
public class RoleEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="idroles")
	private String id = UUID.randomUUID().toString();
	
	@Column(name="name_roles")
	private String name;
	
	@ManyToMany(mappedBy = "roles")
	private Set<UserEntity> users = new HashSet<UserEntity>();

	public RoleEntity() {
	}

    public RoleEntity(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public RoleEntity(String id) {
		super();
		this.id = id;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRole() {
		return this.name;
	}

	public void setRole(String name) {
		this.name = name;
	}
	
	public Set<UserEntity> getUsers() {
		return users;
	}
	
	public void setUsers(Set<UserEntity> users) {
		this.users = users;
	}
	


}

