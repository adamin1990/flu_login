import 'package:flu_login/constants.dart';
import 'package:flu_login/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///
/// @author adam
/// @site  https://www.lixiaopeng.top
/// @create 2021/9/1 17:30
 class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   final _size=MediaQuery.of(context).size;
   return Scaffold(
    body: Stack(
     children: [
      Positioned(
       width: _size.width*0.88, //88%
       height: _size.height,
       child: Container(
        color: login_bg,
        child: LoginForm(),
       ),
      ),
      Positioned(
       top: _size.height*0.1,
          left: 0,
          right: 0,
          child: CircleAvatar(
           child: SvgPicture.asset("assets/images/animation_logo.svg"),
          ))

     ],
    ),
   );
  }

 }