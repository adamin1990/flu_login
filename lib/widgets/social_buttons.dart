import 'package:flutter/material.dart';

///
/// @author adam
/// @site  https://www.lixiaopeng.top
/// @create 2021/9/2 11:37
 class SocialButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       IconButton(onPressed: (){}, icon: Image.asset("assets/images/twitter.png")),
       IconButton(onPressed: (){}, icon: Image.asset("assets/images/fb.png")),
       IconButton(onPressed: (){}, icon: Image.asset("assets/images/linkedin.png")),
     ],
   );
  }

 }