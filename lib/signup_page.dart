import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/provider.Button.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';



class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = ["g.png","t.png", "f.png"];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: <String>[
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );

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
          Container(
            child: Column(
              children: [

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
              child: Text("Sign up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                ),),
            ),


          ),
          /////////////////////////////////////////////////////////////////////////
          SizedBox(height: 10,),
          RichText(text: TextSpan(
            recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
            text: "already  have an account",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 15,
            ),


          ),
          ),
          ////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: w*0.05),
          RichText(text: TextSpan(
              text: "Sign Up using one of the following methods",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 15,
              ),


          ),
          ),
          ///////////////////////////////////////////////////////////////////////
          SizedBox(height: 20,),
          // Wrap(
          //   children: List<Widget>.generate(
          //     3,
          //       (index){
          //       return Padding(
          //         padding: const EdgeInsets.all(10.0),
          //         child: CircleAvatar(
          //           radius :28,
          //           backgroundColor: Colors.grey[500],
          //           child: CircleAvatar(
          //             radius :25,
          //             backgroundImage: AssetImage(
          //               "assets/images/"+images[index]
          //             ),
          //           ),
          //         ),
          //       );
          //
          //       }
          //   ),
          // ),
          // Row(
          //   children: [
          //     ProviderButton(
          //       context : context,
          //         signInType :"Google",
          //     ),
          //     ProviderButton(
          //       context : context,
          //       signInType :"Facebook",
          //     ),
          //     ProviderButton(
          //       context : context,
          //       signInType :"Twitter",
          //     ),
          //   ],
          // ),
          // InkWell(
          //   child: Container(
          //     padding: const EdgeInsets.all(12.0),
          //     alignment: Alignment.center,
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       border: Border.all(color: Colors.black26
          //       ),
          //     ),
          //     child: LitAuthIcon.google(size: const Size (30,30),),
          //   ),
          // )

          SignInButton(
            Buttons.Google,

            onPressed: (){}
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SignInButton(
                  Buttons.Facebook,
                  mini: true,
                  onPressed: () {
                    // _showButtonPressDialog(context, 'LinkedIn (mini)');
                  },
                ),
                SignInButton(
                  Buttons.Twitter,
                  mini: true,
                  onPressed: () {
                    // _showButtonPressDialog(context, 'LinkedIn (mini)');
                  },
                ),

            ]
          ),

        ],
      ),
    );
  }
}
