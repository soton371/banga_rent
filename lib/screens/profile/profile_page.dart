import 'package:banga_rent/constant/app_colors.dart';
import 'package:banga_rent/constant/app_sizes.dart';
import 'package:banga_rent/screens/profile/widgets/appbar_widget.dart';
import 'package:banga_rent/screens/profile/widgets/menu_list_widget.dart';
import 'package:banga_rent/screens/profile/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //start status bar
          Container(
            height: AppSizes.safeAreaHeight,
            width: double.maxFinite,
            decoration: const BoxDecoration(gradient: AppColor.appBar),
          ),
          //end status bar
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                //start app bar section
                AppBarWidget(),
                //end app bar section
          
                //start summary
                SummaryWidget(),
                //end summary
          
                //start menu list
                MenuListWidget(),
                //end menu list
                SizedBox(height: 15,),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
