import 'package:flutter/material.dart';
import 'package:learn_flutter/cart.dart';
import 'package:learn_flutter/money.dart';
import 'package:provider/provider.dart';

class MultiProviderMain extends StatelessWidget {
  const MultiProviderMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Money>(
          create: (BuildContext context) => Money(),
        ),
        ChangeNotifierProvider<Cart>(
          create: (BuildContext context) => Cart(),
        ),
      ],
      child: Scaffold(
        floatingActionButton: Consumer<Money>(
          builder: (context, money, _) => Consumer<Cart>(
            builder: (context, cart, _) => FloatingActionButton(
              onPressed: () {
                if (money.balance >= 500) {
                  cart.quantity += 1;
                  money.balance -= 500;
                }
              },
              child: Icon(Icons.add_shopping_cart),
              backgroundColor: Colors.lime,
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Multi Provider"),
          backgroundColor: Colors.lime,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Balance"),
                  Container(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Consumer<Money>(
                        builder: (context, money, _) => Text(
                          money.balance.toString(),
                          style: TextStyle(
                            color: Colors.lime,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    height: 30,
                    width: 150,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lime[100],
                        border: Border.all(
                          color: Colors.lime,
                          width: 2,
                        )),
                  ),
                ],
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Consumer<Cart>(
                    builder: (context, cart, _) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Apple (500) x " + cart.quantity.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          (500 * cart.quantity).toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                height: 30,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
