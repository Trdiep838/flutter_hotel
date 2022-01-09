
import 'package:flutter/material.dart';
class Payment extends StatefulWidget {
  Payment({Key key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Payment'),
       // child: DefaultBackButton(),
      ),
      body: Column(
        children: [

        Text( 'Choose your payment method'),

          Expanded(
            child: ListView.separated(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Radio(
                    activeColor: Colors.white,
                    value: index,
                    groupValue: value,
                    onChanged: (i) => setState(() => value = i),
                  ),
                  title:   Text("Continue with social media", style: TextStyle(color: Colors.redAccent),),
                 // trailing: Icon(paymentIcons[index], color: kPrimaryColor),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();

              },

            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue
            ),
            child: Center(
              child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          ),

        ],
      ),
    );
  }
}