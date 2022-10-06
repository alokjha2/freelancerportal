





import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:uifreelanceprofilepage/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        Container(
          height: 320,
          child: Stack(
            children: [
              Container(
                height: 320,
                
                width: MediaQuery.of(context).size.width * .8,
                decoration: BoxDecoration(
                  color: Colors.green.shade900,
                // image: DecorationImage(image: AssetImage("assets/bg6.jpg",),
                
                // fit: BoxFit.cover,
                // ),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(24))
                
                ),
                child: ClipPath(
            clipper: shape(),
            child: Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              color: Colors.green.shade300,
              
            ),
              ),),

              Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .2,
                  child: Column(
                    children: [
                      IconButton(onPressed: (){}, icon: Image.asset("assets/menu1.png"),color: Colors.black45,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.card_giftcard_sharp),iconSize: 29 ,color: Colors.purple,),
                  ],),
                ),
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: contract())
            ],
          ),
        )
      ],),


    );
  }
}



class shape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
  
    var path = Path();
    path.lineTo(0, height-80);
    path.quadraticBezierTo(height/4, width-10, width/2, width-70);
    path.lineTo(width,0);
    path.close();
    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
  
}

class contract extends StatelessWidget {
  const contract({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      // height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(17)),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Themes.bg1,
            Themes.bg2,
          ]
        )
      ),
      child: Container(
      width: MediaQuery.of(context).size.width * .6,
      height: 200,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("DEW Project", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/img4.jpg"),
                )
              ],
            ),
            Text.rich(
              TextSpan(
                style: TextStyle(color: Colors.white,height: 1.5),
                text: "Alok Jha just sent you a contract with all detailed information",
                children: [
                  TextSpan(
                    text: " Sign here",
                    style: TextStyle(
                      color: Colors.blue
                    ),recognizer: TapGestureRecognizer()
                  ),
                  TextSpan(
                    text: " and attach an invoice to send back"
                  )
                ]
              


              ),
              
            ),

            SizedBox(height: 24,)
          ]),
        ),
      ),
    );
  }
}