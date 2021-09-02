import 'dart:math';

import 'package:flu_login/constants.dart';
import 'package:flu_login/widgets/login_form.dart';
import 'package:flu_login/widgets/sign_up_form.dart';
import 'package:flu_login/widgets/social_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///
/// @author adam
/// @site  https://www.lixiaopeng.top
/// @create 2021/9/1 17:30
class Home extends StatefulWidget {
  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  bool showSignUp = false; //显示注册页面
  late AnimationController _animationController;
  late Animation<double> _animationTextRotate;

  void setUpAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: defaultDuration);
    _animationTextRotate =
        Tween<double>(begin: 0, end: 90).animate(_animationController);
  }

  void upDateView(){
    setState(() {
      showSignUp=!showSignUp;
    });
    showSignUp?_animationController.forward():_animationController.reverse();
  }

  @override
  void initState() {
    setUpAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedBuilder(animation: _animationController,
          builder: (context,_){
        return
          Stack(
            children: [
              ///登录
              AnimatedPositioned(
                duration: defaultDuration,
                curve: defaultCurve,
                width: _size.width * 0.88,
                //88%
                height: _size.height,
                left: showSignUp ? -_size.width * 0.76 : 0,
                child:  Container(
                  color: login_bg,
                  child: LoginForm(),
                ),

              ),

              /// 注册
              AnimatedPositioned(
                  duration: defaultDuration,
                  curve: defaultCurve,
                  width: _size.width * 0.88,
                  height: _size.height,
                  left: showSignUp ? _size.width * 0.12 : _size.width * 0.88,
                  child: Container(
                    color: signup_bg,
                    child: SignUpForm(),
                  )),

              ///logo文件
              AnimatedPositioned(
                  duration: defaultDuration,
                  curve: Curves.linear,
                  top: _size.height * 0.1,
                  left: showSignUp ? _size.width * 0.12 : 0,
                  right: showSignUp ? 0 : _size.width * 0.12,
                  //居中，因为右侧宽度12%
                  child: CircleAvatar(
                    backgroundColor: Colors.white60,
                    child: AnimatedSwitcher(duration: defaultDuration
                    ,child: showSignUp
                          ? SvgPicture.asset(
                        "assets/images/animation_logo.svg",
                        color: signup_bg,
                      )
                          : SvgPicture.asset(
                        "assets/images/animation_logo.svg",
                        color: login_bg,
                      ),),
                  )),

              ///社交
              AnimatedPositioned(
                duration: defaultDuration,
                bottom: _size.height * 0.1,
                child: SocialButtons(),
                left: showSignUp ? _size.width * 0.12 : 0,
                right: showSignUp ? 0 : _size.width * 0.12,
              ),

              /// 登录按钮
              AnimatedPositioned(
                  duration: defaultDuration,
                  bottom: showSignUp ? _size.height / 2-80 : _size.height * 0.3,
                  left: showSignUp ? 0 : _size.width * 0.44 - 80,
                  child: AnimatedDefaultTextStyle(
                    duration: defaultDuration,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: showSignUp ? 20 : 32,
                        fontWeight: FontWeight.bold,
                        color: showSignUp? Colors.white:Colors.white70),
                    child: Transform.rotate(
                      angle: -_animationTextRotate.value * pi / 180,
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: (){
                          if(showSignUp){
                            upDateView();
                          }else{
                            ///登录
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical:
                          defaultPadding*0.6),
                          width: 160,
                          child: Text("登 录"),
                          // color: Colors.red,
                        ),
                      ),
                    ),
                  )),
              /// 注册按钮
              AnimatedPositioned(
                  duration: defaultDuration,
                  bottom: !showSignUp ? _size.height / 2-80 : _size.height * 0.3,
                 right: showSignUp?_size.width * 0.44 - 80:0,
                  child: AnimatedDefaultTextStyle(
                    duration: defaultDuration,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: !showSignUp ? 20 : 32,
                        fontWeight: FontWeight.bold,
                        color: !showSignUp? Colors.white:Colors.white70),
                    child: Transform.rotate(
                      angle: (90-_animationTextRotate.value) * pi / 180,
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: (){
                          if(!showSignUp){
                            upDateView();
                          }else{
                            ///注册
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical:
                          defaultPadding*0.6),
                          width: 160,
                          child: Text("注 册"),
                          // color: Colors.red,
                        ),
                      ),
                    ),
                  ))
            ],
          );

          })


    );
  }
}
