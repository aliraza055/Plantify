class Types {
  String image;
  String price;
  String name;
  String des;
  Types({required this.image,required this.name,required this.price,required this.des});
static  List<Types> itmes(){
  return[
    Types(image: "images/image_1.png", name: "Rose", price: '50', des: 'important'),
    Types(image: "images/image_1.png", name: "Rose", price: '50', des: 'important'),
    Types(image: "images/image_1.png", name: "Rose", price: '50', des: 'important'),
    Types(image: "images/image_1.png", name: "Rose", price: '50', des: 'important'),
    Types(image: "images/image_1.png", name: "Rose", price: '50', des: 'important'),

  ];
}
}