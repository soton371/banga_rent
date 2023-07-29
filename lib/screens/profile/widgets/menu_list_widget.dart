import 'package:banga_rent/constant/app_colors.dart';
import 'package:banga_rent/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class MenuListWidget extends StatelessWidget {
  const MenuListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(AppSizes.cardRadius))),
      child: Column(
        children: [
          ProfileListTile(leading: "assets/images/wallet.png",title: "Quản lý ví Renren",),
          Divider(),
          ProfileListTile(leading: "assets/images/home.png",title: "Quản lý phòng trọ",),
          Divider(),
          ProfileListTile(leading: "assets/images/report.png",title: "Quản lý hóa đơn",),
          Divider(),
          ProfileListTile(leading: "assets/images/management.png",title: "Quản lý hợp đồng",
          extra: Row(
            children: [
              Text("(3)",style: TextStyle(
                fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.5,
                  color: AppColor.seeBlue
              ),),
              Text("(6)",style: TextStyle(
                fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.5,
                  color: AppColor.teaGreen
              ),),
              Text("(5)",style: TextStyle(
                fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.5,
                  color: AppColor.grey
              ),),
            ],
          ),
          ),
          Divider(),
          ProfileListTile(leading: "assets/images/post.png",title: "Quản lý bài đăng",),
          Divider(),
          ProfileListTile(leading: "assets/images/tenant.png",title: "Quản lý người thuê",),
          Divider(),
          ProfileListTile(leading: "assets/images/customer.png",title: "Khách hàng tiềm năng",),
          Divider(),
          ProfileListTile(leading: "assets/images/decentralization.png",title: "Phân quyền quản lý",),
          Divider(),
          ProfileListTile(leading: "assets/images/incident.png",title: "Quản lý sự cố",),
          Divider(),
          ProfileListTile(leading: "assets/images/save.png",title: "Bài đăng đã lưu",),
          Divider(),
          ProfileListTile(leading: "assets/images/schedule.png",title: "Lịch hẹn xem phòng",),
          Divider(),
          ProfileListTile(leading: "assets/images/statistics.png",title: "Báo cáo thống kê",),
          Divider(),
          ProfileListTile(leading: "assets/images/logout.png",title: "Đăng xuất",),
          SizedBox(height: 8,)
        ],
      ),
    );
  }
}

class ProfileListTile extends StatelessWidget {
  const ProfileListTile(
      {super.key, required this.leading, required this.title, this.extra});
  final String leading, title;
  final Widget? extra;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 8,
        ),
        Image.asset(
          leading,
          width: 24,
          height: 24,
        ),
        //end leading
        const SizedBox(
          width: 8,
        ),

        //start title
        Expanded(
          child: Text(title,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.5)),
        ),
        //end title

        //start extra
        extra != null ? const Spacer() : const SizedBox(),
        extra ?? const SizedBox(),
        extra != null ? const Spacer() : const SizedBox(),
        //end extra

        //start trailing
        const Icon(
          Icons.chevron_right,
          size: 25,
          color: AppColor.stroke,
        ),
        //end trailing
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
