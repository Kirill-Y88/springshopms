package ru.geekbrains.msproduct.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.geekbrains.msproduct.entities.Product;

public interface ProductRepository extends JpaRepository<Product,Long> {
}
