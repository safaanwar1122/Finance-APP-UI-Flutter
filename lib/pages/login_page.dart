
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController =
  TextEditingController(text: " Username@gmail.com");
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 160,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYVa_0MHBcMxMiWvLrJI6h43nNXLu4PCRpdg&usqp=CAU",
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: grey.withOpacity(.03),
                    spreadRadius: 3,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 15,
                  bottom: 5,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff67727d),
                      ),
                    ),
                    TextFormField(
                      controller: _emailController,
                      cursorColor: black,
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.w500,
                        color: black,
                      ),
                      decoration: InputDecoration(
                        prefix: Icon(
                          Icons.email,
                          size: 17,
                        ),
                        prefixIconColor: black,
                        hintText: '  Email',
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: grey.withOpacity(.03),
                    spreadRadius: 3,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 15,
                  bottom: 5,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff67727d),
                      ),
                    ),
                    TextFormField(
                      controller: _password,
                      cursorColor: black,
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.w500,
                        color: black,
                      ),
                      decoration: InputDecoration(
                        prefix: Icon(
                          Icons.password,
                          size: 17,
                        ),
                        prefixIconColor: black,
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        hintText: '  Password',
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: buttoncolor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(padding: EdgeInsets.only(
                left: 26.0,
                right: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sign Up',style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),),
                  Text('Forgot Password',style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),),
                ],
              ),
            ),
          ],
        ));
  }
}
