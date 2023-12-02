class OnBoard {
  final String image, title, desctription;

  OnBoard({
    required this.image, 
    required this.title, 
    required this.desctription
  });
}

final List<OnBoard> listOnboard = [
  OnBoard(
    image: "assets/img/ilustrasi1.svg", 
    title: "Choose and customize your Drinks", 
    desctription: "Customize your own drink exactly how you like it by adding any topping you like!!!"
  ),
  OnBoard(
    image: "assets/img/ilustrasi2.svg", 
    title: "Quickly and easly", 
    desctription: "You can place your order quickly and easly without wasting time. You can also schedule orders via your smarthphone."
  ),
  OnBoard(
    image: "assets/img/ilustrasi3.svg", 
    title: "Get and Redeem Voucher", 
    desctription: "Exciting prizes await you! Redeem yours by collecting all the points after purchase in the app!"
  )
];
