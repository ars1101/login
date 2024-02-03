import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/home.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class sign extends StatefulWidget {
  const sign({
    super.key,
  });

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  TextEditingController emailController =
      TextEditingController(text: '************@mail.com');
  TextEditingController passwordController =
      TextEditingController(text: '**********');
  TextEditingController nameController =
      TextEditingController(text: 'Ivan Ivanov');
  TextEditingController phoneController =
      TextEditingController(text: '+7(999)999-99-99');
  var password = '**********';
  var email = '************@mail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      SizedBox(width: 19),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 78,
          ),
          Text(
            'Create Account',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF3A3A3A),
              fontSize: 24,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Complete the sign up process to get started',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFA6A6A6),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
          SizedBox(
            height: 33,
          ),Text(
            'Full name',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFA6A6A6),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.08,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
              width: 340,
              height: 68,
              child: TextField(
                controller: nameController,
                style: TextStyle(
                  color: Color(0xFFCFCFCF),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF5F5F5),
                  border: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 1, color: Color(0xFFA6A6A6)),
                      borderRadius: BorderRadius.circular(4)),
                ),
              )),
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
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
              width: 352,
              height: 40,
              child: TextField(
                controller: passwordController,
                style: TextStyle(
                  color: Color(0xFFCFCFCF),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF5F5F5),
                  border: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 1, color: Color(0xFFA6A6A6)),
                      borderRadius: BorderRadius.circular(4)),
                ), onChanged: (value) => setState(() => password = value),
              )), SizedBox(height: 24,),
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
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
              width: 352,
              height: 40,
              child: TextField(
                controller: emailController,
                style: TextStyle(
                  color: Color(0xFFCFCFCF),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF5F5F5),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xFFA6A6A6)),
                      borderRadius: BorderRadius.circular(4)),
                ), onChanged: (value) => setState(() => email = value),
              )),
          SizedBox(
            height: 24,
          ),
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
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
              width: 352,
              height: 40,
              child: TextField(
                controller: passwordController,
                style: TextStyle(
                  color: Color(0xFFCFCFCF),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF5F5F5),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xFFA6A6A6)),
                      borderRadius: BorderRadius.circular(4)),
                ),
              )),SizedBox(
            height: 24,
          ),
          Text(
            'Confirm password',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFA6A6A6),
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.08,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
              width: 352,
              height: 40,
              child: TextField(
                controller: passwordController,
                style: TextStyle(
                  color: Color(0xFFCFCFCF),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF5F5F5),
                  border: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 1, color: Color(0xFFA6A6A6)),
                      borderRadius: BorderRadius.circular(4)),
                ),
              )),
          Row(children: [
            Checkbox(value: false, onChanged: null),
            SizedBox(
              width: 320,
              height: 28,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'By ticking this box, you agree to our',
                      style: TextStyle(
                        color: Color(0xFFA6A6A6),
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                    TextSpan(
                      text: 'Terms and conditions and private policy',
                      style: TextStyle(
                        color: Color(0xFFEABC2D),
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],)

          ,Spacer(),
          SizedBox(
              width: 352,
              height: 40,
              child: OutlinedButton(
                  onPressed: () async {var res = await supabase.auth.signUp(password: password, email: email, );
                  final Session? session = res.session;
                  final User? user = res.user;
                  if(user != null){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => home(email: email,)));
                  }
                  },
                  child: Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      height: 0.06,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xFF0560FA),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ))),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 32,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 84),
                  Text(
                    'Already have account? ',
                    style: TextStyle(
                      color: Color(0xFFA6A6A6),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  GestureDetector(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));},
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Color(0xFF0560FA),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                      )),
                  SizedBox(
                    height: 24,
                  )
                ]),
          ),
          SizedBox(width: 19),
        ],
      )
    ]));
  }
}
