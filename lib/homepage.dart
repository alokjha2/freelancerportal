




import 'package:flutter/material.dart';
import 'package:uifreelanceprofilepage/profile_page.dart';
import 'package:uifreelanceprofilepage/theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(""),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: 
            
            InkWell(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfilePage()));

            },child: 
            CircleAvatar(
              backgroundImage: AssetImage("assets/myimage.jpg"),
            ),
          ))
        ],
        leading: IconButton(onPressed: (){},icon: Image.asset("assets/hamburger.png"),color: Colors.white,),
      ),
      

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(children: [
          Text.rich(
            TextSpan(text: "Find ",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            children: [
              TextSpan(
                text: "iOS Developers",style: TextStyle(color: Themes.textColor)
              )

            ]),
            
            // TextSpan(text: "Find"),
          ),

          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset("assets/freelance.png", height: 150,)
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .6,
                    
                    child: Text("Why you need an iOS Developers & what will you want from contractor ?", style: TextStyle(color: Colors.black54),)),
            
            
              ElevatedButton(
                onPressed: (){},
                child: Text("About Position"),
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Themes.textColor),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)
                    )
                  )
                ),
              )
                    ],
                  ),
            )
    ],
  ),
  TextField(
    decoration: InputDecoration(
        hintText: "Search by skills...",
        hintStyle: TextStyle(
          color: Colors.black54,
          fontStyle: FontStyle.italic),
        suffixIcon: Icon(
          Icons.search,
          color: Colors.black54,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(color: Colors.black38),
            gapPadding: 1
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16
          )
        ),
    ),
  SizedBox(height: 24,),

    Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children: [
        Text(
          "Featured Developers", 
          style: TextStyle(
            fontWeight: FontWeight.bold
            ),
            ),
        Text(
          "View More", 
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Themes.textColor
            ),
            ),
    ],),
  SizedBox(height: 24,),

    GridView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio : 1,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16
          ),
          children: [
            freelancerImage(image: "assets/myimage.jpg",name: "Alok Jha",),
            freelancerImage(image: "assets/img1.jpg",name: "Bunny",),
            freelancerImage(image: "assets/img2.jpg",name: "Sid Garg",),
            freelancerImage(image: "assets/img4.jpg",name: "Raaz",),

          ],
        ),
        SizedBox(height: 16,),
        Container(
          // height: 70,
        decoration: const BoxDecoration(
          color: Colors.green,
          image: DecorationImage(
            image: AssetImage(
              "assets/bg2.jpg"
              ,),
              fit: BoxFit.fill
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16)
          )
        ),
        child: 
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Tips to hire right person",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

             Text("Why you need an iOS Developers & what will you want from contractor ?", style: TextStyle(color: Colors.white),)
            

          ],),
        )
        
        
    ),
  ]
),
      ),
      );
  }
}

class freelancerImage extends StatelessWidget {
  const freelancerImage({
    Key? key, required this.name, required this.image,
  }) : super(key: key);
  final String name;
  final String image;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image
            ,),
            fit: BoxFit.fill
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16)
        )
      ),
      child: Align(alignment: Alignment.bottomCenter,child: Text(name, style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),),)
    );
  }
}
