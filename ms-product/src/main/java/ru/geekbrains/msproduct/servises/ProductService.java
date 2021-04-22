package ru.geekbrains.msproduct.servises;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.geekbrains.msproduct.repositories.ProductRepository;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductService {

    @Autowired
    ProductRepository productRepository;

    public List<ProductDto> findAll(){
        List<ProductDto> productDtos = null;
        productDtos = (productRepository.findAll().stream().map(ProductDto::new)).collect(Collectors.toList());
        return productDtos;
    }

    public ProductDto findByID(Long id){
        ProductDto productDto = null;
        productDto = (productRepository.findById(id).map(ProductDto::new)).get();
        return productDto;
    }

}
