import 'package:flutter/material.dart';
import 'package:flutter_basic/utils/routes.dart';
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get child => null;
  String name ="";
  bool buttonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView (
        child: Column(
          children:[
            Image.asset("assets/images/Login_Image.png",fit: BoxFit.cover,),
            SizedBox(
              height : 20.0,
            ),
            Text("Welcome"+ name,style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
                onChanged:(value){
                  name = " " +  value;
                  setState(() {
                    
                  });
                } ,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
              height: 40.0,
            ),
            InkWell  (
              onTap: () async {
                setState(() {
                  buttonPressed=true;   
                });
                await Future.delayed(Duration(seconds: 1) );
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: buttonPressed?50:150,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  //shape: buttonPressed?BoxShape.circle:BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(buttonPressed?50.0:8.0),
                ),
                child: Center(
                  child: buttonPressed?Icon(
                    Icons.done,
                    color : Colors.white
                  ): Text("LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  ),
                ),
              ),
            ),
            /*ElevatedButton(
              child: Text("Login"),
              style:  TextButton.styleFrom(
                minimumSize : Size(150,40),
              ) ,
              onPressed: (){
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
      
            ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}