import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text('Home'),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      Text('Hanoi, Vietnam')
                    ],
                  ),
                ),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                CircleAvatar(),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 15,
          child: Placeholder(),
        ),
      ],
    );
  }
}
