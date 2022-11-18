class ModelVertical{
  String titel,images;
  String location,catagory;
  int price;

  ModelVertical(
      this.titel, this.images, this.location, this.catagory, this.price);
  static List<ModelVertical> listVertical(){
    return [
      ModelVertical("Ice Cream Yummiii !!", "images/a.png","Buyayuk shop","Ice Cream",456),
      ModelVertical("Sponge Cake", "images/b.png","Buyayuk shop","Sweet Cakes",600),
 ModelVertical("Ice Cream Yummiii !!", "images/a.png","Buyayuk shop","Ice Cream",456),
      ModelVertical("Sponge Cake", "images/b.png","Buyayuk shop","Sweet Cakes",600),
 ModelVertical("Ice Cream Yummiii !!", "images/a.png","Buyayuk shop","Ice Cream",456),
      ModelVertical("Sponge Cake", "images/b.png","Buyayuk shop","Sweet Cakes",600),
      ModelVertical("Ice Cream Yummiii !!", "images/a.png", "Buyayuk shop",
          "Ice Cream", 456),
      ModelVertical(
          "Sponge Cake", "images/b.png", "Buyayuk shop", "Sweet Cakes", 600),
    ];
  }


}