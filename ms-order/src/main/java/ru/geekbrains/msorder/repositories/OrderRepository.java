package ru.geekbrains.msorder.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.geekbrains.msorder.entities.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {
}
