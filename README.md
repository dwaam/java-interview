# 🚀 Spring Boot Technical Challenge: Inventory Manager
Congratulations! We are thrilled to have you move forward in our interview process. You have been selected to complete this technical assessment because your background and experience stood out to our team.

This test is designed to evaluate your proficiency with Spring Boot, Java, and REST API design. We value clean code, thoughtful architecture, and attention to detail over speed.

# 📋 The Scenario
You are building the backbone of a Warehouse Inventory System. We have provided a skeleton project with the basic entity and repository setup. Your goal is to implement the core business logic that allows warehouse staff to manage products and update stock levels.

We have one entity product for now:

```java
@Entity
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // Technical id

    private String name; // Name of the product, cannot be null or empty

    private String sku; // Stock Keeping Unit, must be unique and non-empty

    private Integer quantity; // Must be zero or positive

    private Double price; // Cannot be negative
}
```

Requirements
* Create Product: Implement a POST endpoint to save a new product (Name, SKU, Quantity, Price).
  * Validation:
    * Products must have a non-empty SKU.
    * Price cannot be a negative value.
    * Quantity must be zero or a positive integer.

* Restock Logic: Implement a PATCH endpoint to increase the quantity of an existing product by its ID.
  * Validation:
    * The restock amount must be a positive integer.

* Error Handling: Ensure the API returns a meaningful error message and status.

* Testing: Write at least one test (using what you feel necessary) to verify the logic behind the restocking.
