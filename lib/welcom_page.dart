import 'package:flutter/material.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/signup.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: [
                SizedBox(
                  height: h*0.16,),
                CircleAvatar(radius: 50,
                  backgroundColor: Colors.white70,
                  backgroundImage: AssetImage(
                      "assets/images/userprofile.jpg"
                  ),)
              ],
            ),

          ),
          ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 30,),
          Column(
            children: [
              Text (
                "Welcom",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                ),
              ),
              Text (
                "rafaalkhameri@gmail.com",
                style: TextStyle(
                    fontSize: 20,

                    color: Colors.grey[500]
                ),
              ),
            ],
          ),
          ////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 300,),
          Container(
            width: w*0.70,
            height: h*0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/loginbtn.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Center(
              child: Text("Sign Out",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                ),),
            ),


          ),//Sign OUT
          ////////////////////////////////////////////////////////////////////////////////////


          ///////////////////////////////////////////////////////////////////////


        ],
      ),
    );
  }
}
