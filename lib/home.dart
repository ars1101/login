import 'package:login/main.dart';
import 'package:flutter/material.dart';
import 'package:login/sign_up.dart';

var a = '';
class home extends StatefulWidget {
  home({super.key, required final String email}){
    a = email;
  }





  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {


  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

   Widget myListTile(IconData icona, String title,subtitle) {
    return Container(width: 342, decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 5,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )]),
        height: 62,child: ListTile(leading: Icon(icona),title: Text(title,style: TextStyle(
          color: Color(0xFF3A3A3A),
          fontSize: 16,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: 0.06,
        )),subtitle: Text(
          subtitle,
          style: TextStyle(
            color: Color(0xFFA6A6A6),
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 0.11,
          ),
        ),
          trailing: Icon(Icons.arrow_forward_ios),));
    }


  List<Widget> _widgetOptions = <Widget>[Expanded(child: Container(color: Colors.white)), Expanded(child: Container(color: Colors.white)), Expanded(child: Container(color: Colors.white)),
  Row(
    children: [SizedBox(width: 24,),
      Column(children: [SizedBox(height: 78,),
        Row(children: [Container(width: 60,height: 60,decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Color(0xFFCFCFCF)),child: Icon(Icons.person),),
          SizedBox(width: 12,),
        Column(crossAxisAlignment: CrossAxisAlignment.start,children: [SizedBox(
          width: 132.43,
          child: Text(
            'Hello ' + a,
            style: TextStyle(
              color: Color(0xFF3A3A3A),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
          ),
        ),
        Row(children: [Text(
          'Current balance:',
          style: TextStyle(
            color: Color(0xFF3A3A3A),
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 1,
          ),
        ),Text(
          'N10,712:00',
          style: TextStyle(
            color: Color(0xFF0560FA),
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            height: 1,
          ),
        )],)],mainAxisAlignment: MainAxisAlignment.start,)
        ],),
        SizedBox(width: 12,),
        Container(width: 342, decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 5,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )]),
            height: 62,child: ListTile(leading: Icon(Icons.person),title: Text('Edit Profile',style: TextStyle(
              color: Color(0xFF3A3A3A),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.06,
            )),subtitle: Text(
              'Name, phone no, address, email ...',
              style: TextStyle(
                color: Color(0xFFA6A6A6),
                fontSize: 12,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
              trailing: Icon(Icons.arrow_forward_ios),)), SizedBox(width: 12,),
        SizedBox(height: 12,),
        Container(width: 342, decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 5,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )]),
            height: 62,child: ListTile(leading: Icon(                           Icons.newspaper
            ),title: Text(
                                                                                'Statements & Reports'
                ,style: TextStyle(
              color: Color(0xFF3A3A3A),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.06,
            )),subtitle: Text(
                                                                                'Download transaction details, orders, deliveries',
              style: TextStyle(
                color: Color(0xFFA6A6A6),
                fontSize: 12,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
              trailing: Icon(Icons.arrow_forward_ios),)),
        SizedBox(height: 12,),
        Container(width: 342, decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 5,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )]),
            height: 62,child: ListTile(leading: Icon(                           Icons.notifications
            ),title: Text(
                'Notification Settings'
                ,style: TextStyle(
              color: Color(0xFF3A3A3A),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.06,
            )),subtitle: Text(
              'mute, unmute, set location & tracking setting',
              style: TextStyle(
                color: Color(0xFFA6A6A6),
                fontSize: 12,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
              trailing: Icon(Icons.arrow_forward_ios),)),
        SizedBox(height: 12,),
        Container(width: 342, decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 5,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )]),
            height: 62,child: ListTile(leading: Icon(                           Icons.credit_card
            ),title: Text(
                'Card & Bank account settings'
                ,style: TextStyle(
              color: Color(0xFF3A3A3A),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 1,
            )),subtitle: Text(
              'change cards, delete card details',
              style: TextStyle(
                color: Color(0xFFA6A6A6),
                fontSize: 12,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
              trailing: Icon(Icons.arrow_forward_ios),)),
        SizedBox(height: 12,),
        Container(width: 342, decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 5,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )]),
            height: 62,child: ListTile(leading: Icon(                           Icons.man
            ),title: Text(
                'Referrals'
                ,style: TextStyle(
              color: Color(0xFF3A3A3A),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.06,
            )),subtitle: Text(
              'check no of friends and earn',
              style: TextStyle(
                color: Color(0xFFA6A6A6),
                fontSize: 12,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
              trailing: Icon(Icons.arrow_forward_ios),)),
        SizedBox(height: 12,),
        Container(width: 342, decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 5,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )]),
            height: 62,child: ListTile(leading: Icon(                           Icons.image
            ),title: Text(
                'About Us'
                ,style: TextStyle(
              color: Color(0xFF3A3A3A),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.06,
            )),subtitle: Text(
              'know more about us, terms and conditions',
              style: TextStyle(
                color: Color(0xFFA6A6A6),
                fontSize: 12,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
              trailing: Icon(Icons.arrow_forward_ios),))
        ,SizedBox(height: 12,),
      Container(width: 342, decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 5,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )]),
          height: 62,child: ListTile(leading: Icon(                           Icons.image
          ),title: Text(
              'About Us'
              ,style: TextStyle(
            color: Color(0xFF3A3A3A),
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            height: 0.06,
          )),subtitle: Text(
            'know more about us, terms and conditions',
            style: TextStyle(
              color: Color(0xFFA6A6A6),
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0.11,
            ),
          ),
            trailing: Icon(Icons.arrow_forward_ios),)),

        SizedBox(height: 12,),
        Container(width: 342, decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 5,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )]),
            height: 62,child: ListTile(leading: Icon(                           Icons.logout, color: Colors.red,
            ),title: Text(
                'Log out'
                ,style: TextStyle(
              color: Color(0xFF3A3A3A),
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.06,
            )),
              trailing: Icon(Icons.arrow_forward_ios),)),




      ])
    ],
  )
  ];






  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions[_selectedIndex],

        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.car_crash), label: 'Track'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
            currentIndex: _selectedIndex,
              selectedItemColor: Color(0xFF0560FA),
            onTap: _onItemTapped,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
         )

        );
  }
}