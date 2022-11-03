package Intervale.PrintedProducts.services;

import Intervale.PrintedProducts.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(++ID, "Гарри Поттер", "Серия Книг", 2001, "Махаон", " Джоан Роулинг"));
        products.add(new Product(++ID, "Игромания", "Журнал", 1997, "Игромедиа", " Евгений Пекло"));
        products.add(new Product(++ID, "Из рук в руки", "Газета", 1992, "Пронто-медиа", " Йело Вёрмин"));

    }

    public List<Product> listProducts() {
        return products;
    }

    public void saveProduct(Product product) {
        product.setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id) {
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        for (Product product : products) {
            if (product.getId().equals(id)) return product;
        }
        return null;
    }
}
