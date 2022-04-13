import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:king_oopers_app/On/CardsCartOn.dart';
import 'package:king_oopers_app/On/HomeOn.dart';

class CartOn extends StatefulWidget {

  @override
  _CartOne createState() => _CartOne();
}

class _CartOne extends State<CartOn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return
            Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child:
              IconButton(
                icon: const Icon(Icons.arrow_back, size: 40),
                onPressed: () {
                  Navigator.pop(context);
                  //Get.to(const HomeOn());
                },
              ),
            );
        }),
        title: const Text("Cart", style: TextStyle(fontSize: 35),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.yellowAccent,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CardsCartOn('assets/images/banana.jpg', '2 Bananas - \$0.46'),
          CardsCartOn('assets/images/apple.jpg', '1 Apple - \$0.80'),
          CardsCartOn('assets/images/turkey.PNG', '1 Turkey - \$4.00'),
          CardsCartOn('assets/images/peperoni.PNG', '5 Pepperoni - \$20.95'),
          CardsCartOn('assets/images/pops.jpg', 'Corn Pops - \$4.79'),
          CardsCartOn('assets/images/LacotoseFree.PNG', 'Corn Pops - \$4.79'),
          CardsCartOn('assets/images/strawYogurt.PNG', 'Corn Pops - \$1.33'),
          Text('Total: \$16.17', style: TextStyle(fontSize: 40),),
          checkoutButton()
        ],
      ),
    );
  }

  void showToast(String text) => Fluttertoast.showToast(
    msg: text,
    fontSize: 30,
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.red,
  );

  Widget checkoutButton() => Padding(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 40),
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.blueAccent),
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  showToast('Checkout successfully');
                },
                child: const Text(
                  'Proceed to Checkout', style:
                TextStyle(fontSize: 35, color: Colors.white),
                )),
          ],
        ),
      ));
}
