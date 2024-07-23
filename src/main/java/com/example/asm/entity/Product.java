package com.example.asm.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "products")
public class Product implements Serializable{
	@Id
	@NotBlank
	@Size(min = 3, max = 20, message = "Size must be between 3 and 20")
	String product_id;
	@NotBlank
	@Size(min = 3, max = 20, message = "Size must be between 3 and 20")
	String product_name;
	String description;
	@NotNull
	@Min(value = 1000, message = "Must be greater than or equal to 1000")
	BigDecimal price;
	@NotNull
	@Min(value = 1, message = "Must be greater than or equal to 1")
	@Max(value = 9999, message = "Must be less than or equal to 9999")
	Integer stock;
	String product_image = "default.png";
	Boolean isdelete = false;
	
	@Temporal(TemporalType.TIMESTAMP)
    @Column(name = "created_at", nullable = false, updatable = false)
    @org.hibernate.annotations.CreationTimestamp // Sử dụng Hibernate để tự động thêm thời gian hiện tại
    private Date created_at;
	
	@ManyToOne
	@JoinColumn(name = "category_id")
	Category category;
	
	@OneToMany(mappedBy = "product")
	List<Cart_item> cart_items;
	
	@OneToMany(mappedBy = "product")
	List<Order_item> order_items;
}
