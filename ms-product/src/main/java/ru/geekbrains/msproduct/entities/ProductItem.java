package ru.geekbrains.msproduct.entities;


import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@Entity
@Table(name = "product_items")
public class ProductItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product productID;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order orderID;

    @Column(name = "price")
    private Long price;


}
