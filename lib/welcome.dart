import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/objects/language_selector.dart';
import 'package:shopping_app/signing/signin.dart';
import 'package:shopping_app/signing/signup.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(
          actions: [
          LanguageSelector()
          ],
          backgroundColor: Colors.black,
          title: Text(tr("welcome"), style:TextStyle(color:Colors.white ,fontWeight:FontWeight.bold  ),),
        ) ,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical:  50),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                  Text(
                  "ShopProject",
                  style: GoogleFonts.suwannaphum(textStyle:TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                 Text(tr("welcome_text"),
                     textAlign: TextAlign.center,
                     style:
                     GoogleFonts.suwannaphum(textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w400, fontSize: 20, ), )
                    ),
                   SizedBox(height: 90),
                   Container(
                          height:170 ,
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 150,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child:Image.network("https://icons.veryicon.com/png/o/application/wq/shopping-16.png") ,
                                ),
                              ),
                              Container(
                                width: 160,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child:Image.asset("assets/shoping.jpg") ,
                                ),
                              )
                            ],
                          ) ,

                        ),
                   SizedBox(height: 90),
                   Column(
                       children:<Widget> [
                        MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                          },
                          shape: RoundedRectangleBorder(
                            side: BorderSide( color: Colors.black),
                            borderRadius: BorderRadius.circular(12)
                          ),

                          child: Text(
                            tr("Sign in"),
                            style: TextStyle(fontWeight: FontWeight.w700,color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                          ),
                        ),

                        SizedBox(height: 20),

                        MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                          },
                           color: Color.fromARGB(255, 0, 0, 0),
                           shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                          ),

                        child: Text(tr("Sign up"),
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),)
                                       ),
                       ],
                    )
                  ],

                ),

          ),
         ),
    );

  }
}