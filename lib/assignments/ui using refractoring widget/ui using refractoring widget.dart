import 'package:flutter/material.dart';
import 'package:pro_july/assignments/ui%20using%20refractoring%20widget/refractoring%20widget.dart';

void main(){
  runApp(MaterialApp(
    home:Grid_with_refractoring_widget() ,
    debugShowCheckedModeBanner: false,
  ));
}
class Grid_with_refractoring_widget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommended for you', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_circle_left_rounded),
        actions: [const Padding(
          padding: EdgeInsets.all(12.0),
          child: Icon(Icons.settings_input_composite_rounded),
        )],
      ),
      backgroundColor: Colors.black,
      body:
      GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
        children: [
          Custom_Card1(image: const NetworkImage('https://mirzacdns3.s3.ap-south-1.amazonaws.com/cache/catalog/RMW0198/1-800x800.jpg'),
            price: '150\$',
            rating: 4.5,
            icon: Icons.favorite_border,
            sale: '506 sales',
            click: (){},
            name: 'Trendy Sports Running Running Shoes For Men ',),
          Custom_Card1(image: const NetworkImage('https://www.google.com/imgres?imgurl=http%3A%2F%2Ffunkytradition.com%2Fcdn%2Fshop%2Fproducts%2F0_Transparent-Mens-Watches-Mechanical-Automatic-Wristwatch-Leather-Strap-Top-Brand-Steampunk-Self-Winding-Clock-Male-montre_29771024-7137-4114-9470-3fd561f6081e.jpg%3Fv%3D1598346965&tbnid=bZMhoKQrSnWjbM&vet=12ahUKEwiy6rGT2fmBAxVE2jgGHQ8yAoYQMyhbegUIARC3Aw..i&imgrefurl=https%3A%2F%2Ffunkytradition.com%2Fproducts%2Ftransparent-mens-watches-mechanical-automatic-wristwatch-leather-strap-watche-funkytradition&docid=mOJqhIGEoonQaM&w=1000&h=1000&q=mens%20watch%20leather%20strap&ved=2ahUKEwiy6rGT2fmBAxVE2jgGHQ8yAoYQMyhbegUIARC3Aw'),
              name:"Men's watch with leather strap ",
              price: '300\$',
              rating: 4,
              icon: Icons.favorite_border,
              sale: '1156 sales',
              click: (){}),
          Custom_Card1(image: const NetworkImage('https://media.istockphoto.com/id/664440266/photo/black-fashion-woman-clutch-ladies-handbag.jpg?s=2048x2048&w=is&k=20&c=xZMU1Un1lEaqSY2-CM8xFjtfY4-eXhPVWjTJGKVOCgc='),
              name: 'aesthetic chain strap on a womens bag',
              price: '250\$',
              rating: 3.5,
              icon: Icons.favorite_border,
              sale: '336 sales',
              click: (){}),
          Custom_Card1(image: const NetworkImage('https://media.istockphoto.com/id/502257430/photo/closeup-of-perfume-bottle.jpg?s=2048x2048&w=is&k=20&c=twduV378owIOT6BOSUmww9VV1m-hZYWpd_R5GnD4cwY='),
              name: 'THE MAN Black perfume Eau de Toilette 50 ml(Men)',
              price: '299\$',
              rating: 4.5,
              icon: Icons.favorite_border,
              sale: '6548 sales',
              click: (){}),
          Custom_Card1(image: const NetworkImage('https://media.istockphoto.com/id/467533204/photo/mans-legs.jpg?s=2048x2048&w=is&k=20&c=4fj0gNv3JvvSThqlezq-PPd8jZKGKF5Tc6J2PgbSrm0='),
              name: "Men's cargo jeans",
              price: '99\$',
              rating: 4,
              icon: Icons.favorite_border,
              sale: '1854 sales',
              click: (){}),
          Custom_Card1(image: const NetworkImage('https://media.istockphoto.com/id/1324164168/photo/short-sleeve-round-neck-t-shirt.jpg?s=2048x2048&w=is&k=20&c=13wdsvwL4K06THB_Gf2M4jBHQWg_PyzR06_27ONmn-c='),
              name: "Men's T shirt blue",
              price: '99\$',
              rating: 3,
              icon: Icons.favorite_border,
              sale: '3685 sales',
              click: (){})
        ],
      ),
    );
  }
}