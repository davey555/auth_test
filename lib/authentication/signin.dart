import 'package:authfortest/authentication/forgotpassword.dart';
import 'package:authfortest/authentication/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,


        body: SingleChildScrollView(
              reverse: true , 
          child: Column(
            children: [
              Container(
               width:double.infinity,
            height:290,
                alignment: Alignment.center,
                child: ClipPath(
          child: Container(
         
            decoration: BoxDecoration( 
              
               image: DecorationImage(
                 
                 scale:4 , fit: BoxFit.scaleDown,image:const AssetImage("assets/images/icon.png",), alignment: Alignment.center, ),
               color: Color(0xff3a3458),), 


            width:double.infinity,
            height:290,
          
          ),
          clipper: CustomClipPath(),
        ),
              ),

              Padding(
                padding:EdgeInsets.only(left: 20, right: 20), 
                child: Column(children: [

             Text("Sign in",


               style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  )),
              Divider(
                thickness: 1,
                color: Colors.white.withOpacity(.5),
              ),

              SizedBox(height: 30), 
            
              Container(
                height: 50, 
                padding: EdgeInsets.only(left: 10),
decoration: BoxDecoration(

    color: Colors.white.withOpacity(.6), 

    
), 
              
                child: TextFormField(
                    decoration: InputDecoration(

            
                  label: Text("Username"),
                  labelStyle: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  hintText: "Email/Phone",
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )),
              ),

              SizedBox(height:20), 
              Container(
                height: 50, 
                padding: EdgeInsets.only(left: 15),
decoration: BoxDecoration(

    color: Colors.white.withOpacity(.6), 

    
), 
              
                child: TextFormField(
                    decoration: InputDecoration(

            
                  label: Text("Username"),
                  labelStyle: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  hintText: "Email/Phone",
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )),
              ),
              SizedBox(height: 10),
              GestureDetector(

                onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount())),
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18, 
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    padding: EdgeInsets.all(8.0),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff028f86),
                    )),
              ),
              SizedBox(height: 20, )
, 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [
                  Text("Create Account",style: TextStyle(color: Colors.white, )), 
                  Text ("Forgot Password?",style: TextStyle(color: Colors.white, )), 


                ]
              )
              ],)),
 
            ],
          ),), 
       
        );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}



class CustomClipPath extends CustomClipper<Path> {
  var radius=40.0;
 
@override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, 
  size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;


}