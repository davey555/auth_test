import 'package:authfortest/authentication/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(

      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        reverse: true , 
        child: Column(
          children: [
            if(!isKeyboard)
            Container(
              width: double.infinity,
              height: 250,
              alignment: Alignment.center,
              child: ClipPath(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      scale: 5,
                      fit: BoxFit.scaleDown,
                      image: const AssetImage(
                        "assets/images/icon.png",
                      ),
                      alignment: Alignment.center,
                    ),
                    color: Color(0xff3a3458),
                  ),
                  width: double.infinity,
                  height: 290,
                ),
                clipper: CustomClipPath(),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Text("Create Account",
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
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 8),
                          alignment: Alignment.topLeft,
                          child: Text("Surname",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14,
                              )),
                        ),
                        SizedBox(width: 145),
                        Container(
                          padding: EdgeInsets.only(bottom: 8),
                          alignment: Alignment.topLeft,
                          child: Text("Other names",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14,
                              )),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.6),
                      ),
                      child: TextFormField(
                          decoration: InputDecoration(
                        label: Row(
                          children: [
                            Text("Surname"),
                            SizedBox(width: 200),
                            Text("OtherNames"),
                          ],
                        ),
                        labelStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      )),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 8),
                          alignment: Alignment.topLeft,
                          child: Text("Phone",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14,
                              )),
                        ),
                        SizedBox(width: 167),
                        Container(
                          padding: EdgeInsets.only(bottom: 8),
                          alignment: Alignment.topLeft,
                          child: Text("Email",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14,
                              )),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.6),
                      ),
                      child: TextFormField(
                          decoration: InputDecoration(
                        label: Row(
                          children: [
                            Text("Phone"),
                            SizedBox(width: 160),
                            Text("Email"),
                          ],
                        ),
                        labelStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      )),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 8),
                          alignment: Alignment.topLeft,
                          child: Text("Password",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14,
                              )),
                        ),
                        SizedBox(width: 145),
                        Container(
                          padding: EdgeInsets.only(bottom: 8),
                          alignment: Alignment.topLeft,
                          child: Text("Confirm Password",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14,
                              )),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.6),
                      ),
                      child: TextFormField(
                          decoration: InputDecoration(
                        label: Row(
                          children: [
                            Text("password"),
                            SizedBox(width: 139),
                            Text("Confirm Password"),
                          ],
                        ),
                        labelStyle: TextStyle(
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )),
                    ),
                    SizedBox(height: 15),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateAccount())),
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Sign Up",
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
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              child: Text("Sign In",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  )),
                              onPressed: () => debugPrint("resetting password"))
                        ])
                  ],
                )),
          ],
        ),
      ),
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
  var radius = 40.0;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
