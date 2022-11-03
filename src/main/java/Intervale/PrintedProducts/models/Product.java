package Intervale.PrintedProducts.models;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Product {
    private Long id;
    private String title;
    private String description;
    private int publicationDate ;
    private String publicationHouse;
    private String author;
}