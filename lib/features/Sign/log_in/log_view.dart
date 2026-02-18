import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/root.dart';
import 'package:hungry/sharded/customButtom.dart';
import 'package:hungry/sharded/customform.dart';
import 'package:hungry/sharded/customtext.dart';

class LogView extends StatelessWidget {
  LogView({super.key});

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();

  final FocusNode emailfocus = FocusNode();
  final FocusNode passfocus = FocusNode();



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Column(
              children: [
                Gap(150),
                SvgPicture.asset('assets/logo/Hungry_.svg'),
                Gap(10),
                Customtext(
                  text: 'Welcome Back, Discover The Fast Food',
                  color: Colors.white,
                  weight: FontWeight.w500,
                  size: 13,
                ),
                Gap(70),
                ///email
                Customform(
                    text: 'email',
                    ispass: false,
                    controller: emailcontroller,
                    focusNode: emailfocus,
                    nextFocusNode: passfocus,
                    type: TextInputType.emailAddress,
                ),
                Gap(20),
                ///passowrd
                Customform(
                    text: 'password',
                    ispass: true,
                    controller: passcontroller,
                    focusNode: passfocus,
                ),
                Gap(30),
                ///login
                Custombuttom(
                    text: 'login in',
                    width: double.infinity,
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => Root()))
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
