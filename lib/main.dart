import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'mainscreen.dart';

void main() => runApp((MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Homepage(),
)));

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()..onTap= (){
    debugPrint('hello its run');
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(

          children: <Widget>[

             Column(
              children: <Widget>[

                SizedBox(height: 15,),

                CircleAvatar(
                  backgroundImage: AssetImage("images/doctor.jpg"),
                  radius: 80,

                ),


                SizedBox(height: 15),

                Text('SIGN IN',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'ArchitectsDaughter',
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,

                ),
                ),

                SizedBox(height: 40,),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                      keyboardType: TextInputType.text,

                      style: TextStyle(
                        fontFamily: 'Raleway',
                      ),
                      decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email,color: Colors.teal,),
                      labelText: ('Email'),
                      hintText: 'Enter your Email',
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock_open,color: Colors.teal,),
                      labelText: ('Password'),
                      hintText: 'Enter your Password',
                    ),

                  ),
                ),

                SizedBox(height: 15,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: RichText(
                    text: TextSpan(
                      text: 'I have read and accept your ',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                          text: 'term and conditions Forget Password?',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                          recognizer: _gestureRecognizer,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15,),

                RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> mainscreen()));
                  },
                  padding: EdgeInsets.symmetric(horizontal: 115,vertical: 10),
                  child: Text('Sign In',
                    style:TextStyle(
                      color: Colors.white,

                      fontSize: 30,
                    ),
                  ),
                  color: Colors.teal,
                ),

              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[

                  Divider(thickness: 0,color: Colors.black54,),

                ],
              ),
            ),
            SizedBox(height: 20),

            Center(child: Text('Sign in with',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontFamily: 'GochiHand',

            ),
            ),

            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                thickness: 0,
                color: Colors.black54,
              ),
            ),

            SizedBox(height: 50,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 1),

                  child: Text('Dont have an account?',
                  style: TextStyle(
                    fontSize: 15,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                  child: Text('CREATE ACCOUNT',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color:Colors.teal,
                  ),

                  ),

                ),
                SizedBox(height: 20,)
              ],
            ),
          ],



        ),
      )

    );
  }
}


