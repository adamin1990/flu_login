import 'dart:html';

import 'package:flu_login/constants.dart';
import 'package:flutter/material.dart';

///
/// @author adam
/// @site  https://www.lixiaopeng.top
/// @create 2021/9/1 17:40
class LoginForm extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width*0.13
        ),
    child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            TextFormField(
              decoration: InputDecoration(
                hintText: "用户名",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: defaultPadding,

              ),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "密码",
                ),
              ),
            ),
            TextButton(onPressed: (){},
                child: Text("忘记密码？",
                style: TextStyle(color: Colors.white),)),
            Spacer(flex: 2,),
          ],
        )),);
  }
  
}
 