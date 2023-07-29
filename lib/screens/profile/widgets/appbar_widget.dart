import 'package:banga_rent/constant/app_colors.dart';
import 'package:banga_rent/constant/app_sizes.dart';
import 'package:banga_rent/screens/profile/widgets/hero_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: const BoxDecoration(
                    gradient: AppColor.appBar,
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(AppSizes.appBarRadius))),
                child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  
                  //start Chuyển tài khoản
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.horizontal(right: Radius.circular(10))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Chuyển tài khoản ",
                          style: TextStyle(
                              fontSize: 12,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.w700,
                              color: AppColor.primary),
                        ),
                        SvgPicture.asset("assets/svgs/refresh.svg"),
                      ],
                    ),
                  ), //end Chuyển tài khoản
                  const SizedBox(
                    height: 10,
                  ),
            
                  //start Xin chào, Vũ Anh Tùng
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      //start avatar
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/avatar.jpeg"),
                        radius: 25,
                      ),
                      //end avatar
                      const SizedBox(
                        width: 10,
                      ),
                      //start info
                       const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Xin chào,",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.5,
                                color: Colors.white),
                          ),
                          Text(
                            "Vũ Anh Tùng",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.5,
                                color: Colors.white),
                          ),
                          HeroWidget(
                              img: "assets/images/wallet.png", title: "Ví Renren"),
                              SizedBox(height: 3,),
                          HeroWidget(
                              img: "assets/images/coin.png",
                              title: "100.000 Xu vàng"),
                              SizedBox(height: 3,),
                          HeroWidget(
                              img: "assets/images/coin2.png", title: "0 Xu bạc"),
                        ],
                      ),
                      //end info
            
                      const Spacer(),
            
                      //start music
                      Column(
                        children: [
                          SvgPicture.asset("assets/svgs/Headphone.svg"),
                          const Text(
                            "Trợ giúp",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.5,
                                color: Colors.white),
                          )
                        ],
                      ),
                      //end music
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  //end Xin chào, Vũ Anh Tùng
                  const SizedBox(
                    height: 20,
                  )
                ]),
              )
              ;
  }
}