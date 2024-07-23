package com.example.asm.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "categories")
public class Category implements Serializable{
	@Id
	@NotBlank
	@Size(min = 3, max = 20, message = "Size must be between 3 and 20")
	String category_id;
	@NotBlank
	@Size(min = 3, max = 20, message = "Size must be between 3 and 20")
	String category_name;
	Boolean isdelete = false;
	
	@OneToMany(mappedBy = "category")
	List<Product> products;
}
