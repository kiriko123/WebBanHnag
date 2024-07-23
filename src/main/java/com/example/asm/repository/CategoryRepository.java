package com.example.asm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.asm.entity.Category;

import jakarta.transaction.Transactional;

import java.util.List;
import java.util.Optional;

@Repository
public interface CategoryRepository extends JpaRepository<Category, String> {

    // ... (other methods)

    /*@Query(value = "SELECT c FROM Category c WHERE c.category_name = :categoryName")
    @Transactional // Add @Transactional if modifying data
    Optional<Category> findByCategoryName(@Param("categoryName") String categoryName);*/
}
