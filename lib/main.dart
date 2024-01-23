
import 'package:login/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:login/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key,});




  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailController = TextEditingController(text: '************@mail.com');
  TextEditingController passwordController = TextEditingController(text: '**********');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Row(
          children: [SizedBox(width: 19),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [ SizedBox(height: 78,),
                Text(
                  'Welcome Back',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                )
                ,SizedBox(height: 8,),
                Text(
                  'Fill in your email and password to continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFA6A6A6),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ), SizedBox(height: 33,),
                Text(
                  'Email Address',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFA6A6A6),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                  ),
                ),SizedBox(height: 8,),
                SizedBox(width: 352,height: 68,child:
                TextField( controller: emailController, style: TextStyle(
                  color: Color(0xFFCFCFCF),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF5F5F5),


                    border: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Color(0xFFA6A6A6)),
                        borderRadius: BorderRadius.circular(4)),



                  ),)),SizedBox(height: 24,),

                Text(
                  'Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFA6A6A6),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                  ),
                ),SizedBox(height: 8,),
        SizedBox(width: 352,height: 40,child:
        TextField( controller: passwordController, style: TextStyle(
          color: Color(0xFFCFCFCF),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: 0.08,
        ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF5F5F5),
            border: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Color(0xFFA6A6A6)),
                borderRadius: BorderRadius.circular(4)),



          ),)),

                Row(children: [
                  Checkbox(value: false, onChanged: null),
                  Text(
                    'Remember password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA6A6A6),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                    ),

                  ),SizedBox(width: 70,),
                  Text(
                    'Forgot Password?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF0560FA),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                    ),
                  )
                ],),
                Spacer(),
                SizedBox(width: 352,height: 40,child:
              OutlinedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => home()));},child: Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  height: 0.06,
                ),
              ), style: OutlinedButton.styleFrom(backgroundColor: Color(0xFF0560FA),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),)
            )), SizedBox(height: 20,), SizedBox(height: 32,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,children: [
                    SizedBox(width: 84),Text(
                      'Not have account? ',
                      style: TextStyle(
                        color: Color(0xFFA6A6A6),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),SizedBox(width: 1,),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => sign()));
                }, child:Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xFF0560FA),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 1,
                      ),
                    )), SizedBox(height: 24,)
              ]),
            )
            ,SizedBox(width: 19),
                ],
        )
    ]));
  }
}
