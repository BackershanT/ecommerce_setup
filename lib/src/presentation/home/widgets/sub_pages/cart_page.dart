import 'package:ecommerce_setup/src/core/constants/size/kheight.dart';
import 'package:ecommerce_setup/src/presentation/home/widgets/sub_pages/check_out_screen.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_back_button.dart';
import 'package:ecommerce_setup/src/presentation/main_widget/main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: MainBackButton(),
          title: Text('Your Cart'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    _cartItem('Sportwear Set', '\$80.00', 'L', 'Cream',
                        'https://example.com/sportwear.jpg'),
                    kHeight20,
                    _priceDetails(),
                    kHeight20,
                    _checkoutButton(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget _cartItem(
      String name, String price, String size, String color, String imageUrl) {
    return Column(children: [
      MainCard(
        radius: 15.r,
        height: 99.h,
        width: 310.w,
        padding: EdgeInsets.symmetric(),
        image: '',
        backgroundColor: Colors.blueGrey,
        child: Row(
          children: [
            Container(
              width: 90.w,
              height: 99.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      bottomLeft: Radius.circular(15.r)),
                  color: Colors.red),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp,
                    ),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp,
                    ),
                  ),
                  Text(
                    'Size: $size | Color: $color',
                    style: TextStyle(fontSize: 10.sp),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.remove,
                          size: 10.sp,
                        ),
                        onPressed: () {
                          setState(() {
                            if (_quantity > 1) _quantity--;
                          });
                        }),
                    Text(
                      '$_quantity',
                      style: TextStyle(fontSize: 10.sp),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.add,
                          size: 10.sp,
                        ),
                        onPressed: () {
                          setState(() {
                            _quantity++;
                          });
                        }),
                  ],
                ),
              ],
            )
          ],
        ),
      )
      // MainCard(
      //   image: '',
      //   padding: EdgeInsets.symmetric(),
      //   height: 99.h,
      //   radius: 20.r,
      //   width: 310.w,
      //   backgroundColor: Colors.blueGrey,
      //   child: ListTile(
      //     leading:MainCard(
      //       height: 99.h,
      //       image: imageUrl,
      //       width: 99.w,
      //       child: null,radius: 15.r,
      //       padding: EdgeInsets.all(0),
      //     ),
      //    title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      //     subtitle: Text('Size: $size | Color: $color'),
      //     trailing: Row(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         IconButton(icon: Icon(Icons.remove), onPressed: () {
      //           setState(() {
      //             _quantity--;
      //           });
      //
      //         }),
      //         Text('$_quantity'),
      //         IconButton(icon: Icon(Icons.add), onPressed: () {
      //           setState(() {
      //             _quantity++;
      //           });
      //         }),
      //       ],
      //     ),
      //   ),
      // ),
      ,
      kHeight10,
    ]);
  }

  Widget _priceDetails() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Product price', style: TextStyle(fontSize: 16)),
            Text('\$110',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping', style: TextStyle(fontSize: 16)),
            Text('Freeship',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('\$110',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }

  Widget _checkoutButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CheckOutScreen()));
        },
        child: Text('Proceed to checkout', style: TextStyle(fontSize: 16.sp)),
      ),
    );
  }
}
