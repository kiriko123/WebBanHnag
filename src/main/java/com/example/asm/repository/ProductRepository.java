package com.example.asm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.asm.entity.Category;
import com.example.asm.entity.Product;
@Repository
public interface ProductRepository extends JpaRepository<Product, String>{
	List<Product> findByCategory(Category category);
}
