import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TipsScreen extends StatefulWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  State<TipsScreen> createState() => _TipsScreenState();
}

class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Container(
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
/*const SizedBox(
            width: 389.0,
            height: 300.0,
            child: Card(child: Text('Hello World!')),
          ) */
class _TipsScreenState extends State<TipsScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Insert App Bar Here"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Tip of the Day',
            textAlign: TextAlign.center,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
            textAlign: TextAlign.center,
          ),
          Text(
            'FAQS',
            textAlign: TextAlign.center,
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('Tip Number 1'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('Tip Number 2'),
          ),
          new ListTile(
            leading: new MyBullet(),
            title: new Text('Tip Number 3'),
          ),
        ],

      ),
    );
  }
}