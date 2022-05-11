class Product{
  String name;
  String des;
  String img;
  double price;
  int id;

  Product(this.id,this.name,this.price,this.des,this.img);
  
 static List<Product>listItem(){
    return[
      Product(1,"Mango",65,"Colombian restaurant from Chef Mark Liberman, nightly changing tasting menu. The cuisine is a contemporary expression of Colombian cuisine, utilizing the","assets/images/mango.jpg"),
      Product(2,"Banana",45,"Bananas are among the world's most commonly consumed fruits. Primarily composed of carbs, they contain decent amounts of several vitamins, minerals, and antioxidants. Potassium, vitamin C, catechin, and resistant starch are among their healthy nutrients.","assets/images/banana.jpg"),
      Product(3,"Coconut",80,"This product is best price in Dhaka","assets/images/coconut.jpg"),
      Product(4,"Onion",40,"This product is best price in Dhaka","assets/images/Onion.jpg"),
      Product(5,"Pear",120,"This product is best price in Dhaka","assets/images/pear.jpg"),
      Product(6,"Pineapple",150,"This product is best price in Dhaka","assets/images/Pineapple.jpg"),
      Product(7,"Plum",67,"This product is best price in Dhaka","assets/images/plum.jpg"),
      Product(8,"Apple",140,"Apples are an incredibly nutritious fruit that offers multiple health benefits. They're rich in fiber and antioxidants. Eating them is linked to a lower risk of many chronic conditions, including diabetes, heart disease, and cancer. Apples may also promote weight loss and improve gut and brain health","assets/images/apple.jpg"),
  ];
}

}