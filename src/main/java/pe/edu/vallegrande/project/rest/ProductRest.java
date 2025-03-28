package pe.edu.vallegrande.project.rest;

import pe.edu.vallegrande.project.model.Product;
import pe.edu.vallegrande.project.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;


@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/v1/api/product")
public class ProductRest {

    private final ProductService service;

    @Autowired
    public ProductRest(ProductService service) {
        this.service = service;
    }

    @GetMapping
    public List<Product> findAll() {
        return service.findAll();
    }

    @GetMapping("/{id}")
    public Optional<Product> findById(@PathVariable Long id) {
        return service.findById(id);
    }
}
