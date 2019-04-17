pragma solidity >=0.4.24 <0.6.0;

contract ProductStorage {

    struct Product {
        string name;
        uint price;
    }

    Product[] public products;

    function setProduct(string memory name, uint price) public {
        products.push(Product(name, price));
    }

    function getProduct(uint index) public view returns (string memory name, uint price) {
        return (products[index].name, products[index].price);
    }

    function getCountProduct() public view returns (uint) {
        return products.length;
    }
}