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
        color: Color(0xFF2DD15B),
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
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Container(
            color: Colors.white70,
            height: 50,
            width: 250,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            child: Text(
              'Search for more tips & faqs...',
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            width: 350,
            height: 90,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tip of the Day',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  )
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                  textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    )
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFF0071BF),
            ),
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