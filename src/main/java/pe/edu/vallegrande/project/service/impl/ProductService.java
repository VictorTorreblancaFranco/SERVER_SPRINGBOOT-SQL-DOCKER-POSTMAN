package pe.edu.vallegrande.project.service.impl;

import pe.edu.vallegrande.project.model.Product;
import java.util.List;
import java.util.Optional;

public interface ProductService {
    List<Product> findAll();
    Optional<Product> findById(Long id);
}

