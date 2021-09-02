import 'package:flu_login/constants.dart';
import 'package:flutter/material.dart';

///
/// @author adam
/// @site  https://www.lixiaopeng.top
/// @create 2021/9/2 11:48
class SignUpForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width*0.13,
    ),
    child: Form(
        child: Column(
        children: [
          Spacer(),
          TextFormField(
            decoration: InputDecoration(
              hintText: "用户名",
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "密码",
            ),
          ),),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "确认密码"
            )
          ),
          Spacer(flex: 2,),

        ],
    )),);
  }

}
 