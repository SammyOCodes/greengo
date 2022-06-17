import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TipsScreen extends StatefulWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  State<TipsScreen> createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add_alert))],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  hintStyle: TextStyle(
                      color: Color(0xFF4D86C6), fontWeight: FontWeight.bold),
                  hintText: 'search for more tips & faqs...',
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.transparent))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Color(0xFF0071BF),
            height: 120,
            width: 500,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Tip of The Day',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Not everything all items belong in the recycling bin.\n                       Please consider recycling ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'FAQs',
            style: TextStyle(
                color: Color(0xFF154C8A),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'What items can be recycled around campus?',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xFF154C8A)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'How do I check my contributions?',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xFF154C8A)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Where can I find recycling locations?',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xFF154C8A)),
          ),
          SizedBox(
            height: 13,
          ),
          Image(
            image: AssetImage('lib/assets/FAQ-Assets.png'),
            height: 240,
          )
        ],
      ),
    );
  }
}
