import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            "assets/images/loginimg.png"
          ),
              fit: BoxFit.cover
        )
      ),


    ),
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    Container(
      child: Column(
        children: [
          Text("Hello",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),),
          //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          Text("Sign into your Account",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[500],
            ),),
          //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 50,),
          //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              boxShadow:[ BoxShadow(
                  blurRadius:10,
                spreadRadius: 7,
                offset: Offset(1,1),
                color: Colors.grey.withOpacity(0.2)
              )]
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email,color: Colors.deepOrangeAccent,),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.deepOrangeAccent,
                    width: 1.0,
                  )
                ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.deepOrangeAccent,
                        width: 1.0,
                      )
                  ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),

                )
              ),
            ),
          ),
          //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 20,),
          //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow:[ BoxShadow(
                    blurRadius:10,
                    spreadRadius: 7,
                    offset: Offset(1,1),
                    color: Colors.grey.withOpacity(0.2)
                )]
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.password,color: Colors.deepOrangeAccent,),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.deepOrangeAccent,
                        width: 1.0,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.deepOrangeAccent,
                        width: 1.0,
                      )
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),

                  )
              ),
            ),
          ),
          //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 20,),
          //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          Row(
            children: [
              Expanded(child: Container(),),
              Text("Forget Your Password?",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[500],
                ),),
            ],
          ),
          //////////////////////////////////////////////////////////////////////////////////////////////////////////////////

          //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        ],
      ),
    ),
    /////////////////////////////////////////////////////////////////////////////////////////////////////////
    SizedBox(height: 30,),
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
        child: Text("Sign in",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            
          ),),
      ),


    ),
    ////////////////////////////////////////////////////////////////////////////////////
    SizedBox(height: w*0.05),
    RichText(text: TextSpan(
      text: "Don\'t have an Account?",
      style: TextStyle(
        color: Colors.grey[500],
        fontSize: 15,
      ),

      children: [
        TextSpan(
        text: " Create",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),
          recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUp())
        ),
      ]
    )
    )

  ],
),
    );
  }
}
