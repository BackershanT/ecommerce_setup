import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket_material/ticket_material.dart';

class VoucherScreen extends StatelessWidget {
  const VoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final String title = "Voucher";


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: MainBackButton(),
        title: Text(title),
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child:

              TicketMaterial(

                height: 88.h,
                leftChild: _buildLeft(),
                rightChild: _buildRight(),
                colorBackground: Colors.white,
                radiusBorder: 15,
              ))
        ],
      ),
    );
  }

  Widget _buildLeft() {
    final String title1 = "Black Friday";
    final String title2 = "Sale off 50%";
    final String title3 = "Code: fridaysale";
    return Container(
      child: Row(
        children: [
          MainCard(
            height: 60.h,
            width: 60.w,
            elevation: 8,
            radius: 10,
            backgroundColor: Color(0XFF777E90),
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Center(
              child: 
              Text('data'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(title1,style: TextStyle(fontSize: 16.sp,
              fontWeight: FontWeight.bold),),
              Text(title2,style: TextStyle(
                fontSize: 12.sp,
              ),),
              Text(title3,style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold
              ),),

            ],
          )

        ],
      )

    );
  }

  Widget _buildRight() {
    final String title4 = "Exp";
    final String title5 = "20";
    final String title6 = "Dec";
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(title4,style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
          Column(
            children: [
              Text(title5,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold),),
              Text(title6,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold),)

            ],
          )

        ],
      )
    );
  }
}
