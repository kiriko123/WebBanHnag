package com.example.asm.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.lang.NonNull;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "users")
public class User implements Serializable{
	@Id
	@NotBlank(message = "User ID cannot be blank")
    @Size(min = 4, max = 9, message = "User ID must be between 4 and 9 characters")
	String user_id;
	
	@NotBlank(message = "Password cannot be blank")
	@Size(min = 4, max = 19, message = "Password must be between 4 and 19 characters")
	String password;
	
	@Email
	String email;
	
	@NotBlank(message = "Fullname cannot be blank")
	@Size(min = 4, max = 20, message = "Fullname must be between 4 and 20 characters")
	String full_name;
	
	Boolean gender = true;
	
	@Temporal(TemporalType.TIMESTAMP)
    @Column(name = "created_at", nullable = false, updatable = false)
    @org.hibernate.annotations.CreationTimestamp // Sử dụng Hibernate để tự động thêm thời gian hiện tại
    private Date created_at;
	
	Boolean role = false;
	
	@OneToMany(mappedBy = "user")
	List<Cart> carts;
	
	@OneToMany(mappedBy = "user")
	List<Order> orders;
}
