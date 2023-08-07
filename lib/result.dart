import 'package:flutter/material.dart';

class result extends StatelessWidget {
  int reult;
  VoidCallback reset;
  result(this.reult, this.reset);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 110,
          width: 150,
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text('play Again!'),
                ElevatedButton(
                    onPressed: reset, child: Icon(Icons.reset_tv_rounded)),
                Text(
                  'Your Result Is:',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  reult.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
