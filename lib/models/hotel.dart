class Hotel {
  String imageUrl;
  String title;
  String description;
  int price;
  double rating;

  Hotel({this.description, this.imageUrl, this.price, this.rating, this.title});
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/Hilton.jpg',
    title: 'Hilton',
    description: 'United States',
    price: 2846110,
    rating: 4.5,
  ),
  Hotel(
    imageUrl: 'assets/images/novotel.jpg',
    title: 'Novotel',
    description: 'Nha trang',
    price: 180,
    rating: 4.5,
  ),
  Hotel(
    imageUrl: 'assets/images/muongthanh.jpg',
    title: 'MuongThanh',
    description: 'Hue',
    price: 799000,
    rating: 4.5,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel03.jpg',
    title: 'sultans',
    description: 'kingdom Tower, Brazile',
    price: 180,
    rating: 4.5,
  ),
  Hotel(
    imageUrl: 'assets/images/sheraton.jpg',
    title: 'Sheraton',
    description: 'kingdom Tower, Brazile',
    price: 180,
    rating: 4.5,
  )

];
