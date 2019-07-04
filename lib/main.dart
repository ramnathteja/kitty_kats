import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(KittyKat());

class KittyKat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _KittyKatState();
  }
}

class _KittyKatState extends State<KittyKat> {
  List<String> _strachPost = ['Kan a kat Kan!!'];
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("KuteKitty"),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Add more kitties!!'),
              onPressed: () {
                setState(() {
                  _strachPost.add('A kat is only a kat when its sarcastic !!');
                  print(_strachPost);
                  print('Hey mr.Tails!!');
                });
              },
            ),
            Column(
              children: _strachPost
                  .map((iteam) => Card(
                        child: Column(
                          children: <Widget>[
                            // Image.asset('assets/funny.jpg'),
                            Text(iteam),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

//stateless and statefull
