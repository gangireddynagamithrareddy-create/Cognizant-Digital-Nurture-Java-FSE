package com.cognizant.search;

public class Main {

    public static void main(String[] args) {

        Product[] products = {
                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Phone", "Electronics"),
                new Product(103, "Shoes", "Fashion"),
                new Product(104, "Watch", "Accessories"),
                new Product(105, "Book", "Education")
        };

        Product linearResult = LinearSearch.search(products, 104);

        if (linearResult != null) {
            System.out.println("Linear Search Found: " + linearResult.productName);
        } else {
            System.out.println("Product not found");
        }

        Product binaryResult = BinarySearch.search(products, 104);

        if (binaryResult != null) {
            System.out.println("Binary Search Found: " + binaryResult.productName);
        } else {
            System.out.println("Product not found");
        }
    }
}