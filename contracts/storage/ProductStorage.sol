pragma solidity ^0.4.24;

contract ProductStorage {

    struct Product {
        string name;
        uint price;
    }

    Product[] public products;

    function setProduct(string name, uint price) public {
        products.push(Product(name, price));
    }

    function getProduct(uint index) public view returns (string name, uint price) {
        return (products[index].name, products[index].price);
    }

    function getCountProduct() public view returns (uint) {
        return products.length;
    }
}