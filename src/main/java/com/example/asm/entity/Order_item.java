package com.example.asm.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "order_items")
public class Order_item implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer order_item_id;
	
	Integer quantity;
	
	Double price;
	
	@ManyToOne
	@JoinColumn(name = "order_id")
	Order order;
	
	@ManyToOne
	@JoinColumn(name = "product_id")
	Product product;
}
