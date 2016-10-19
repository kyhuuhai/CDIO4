package duytan.edu.entity;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class UserEntity {

	@Id
	private String id = UUID.randomUUID().toString();
	
	@Column(name="username")
	private String username ;
	
	@Column(name="password")
	private String password;

	public UserEntity(String username, String password) {
		super();
		this.username = username;
		this.password = password;
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
	
	
}
