package com.example.asm.entity;

import java.io.Serializable;
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
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "orders")
public class Order implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer order_id;
	
	
	
	@Temporal(TemporalType.TIMESTAMP)
    @Column(name = "order_date", nullable = false, updatable = false)
    @org.hibernate.annotations.CreationTimestamp // Sử dụng Hibernate để tự động thêm thời gian hiện tại
    private Date order_date;
	
	
	
	String status;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	User user;
	
	@OneToMany(mappedBy = "order")
	List<Order_item> order_items;
}
