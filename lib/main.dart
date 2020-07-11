import 'package:flutter/material.dart';
import 'package:flutterapp7/main_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('コリアンダー')
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
              return Center(
                child: Column(
                  children: <Widget>[
                    Text(
                     model.KboyText,
                      style: TextStyle(
                        fontSize: 24,
                        ),
                      ),
                    RaisedButton(
                        child: Text('セット'),
                        onPressed: () {
                          //　ここで何かをする
                          model.changeKboyText();
                        },
                    ),
                    RaisedButton(
                      child: Text('リセット'),
                      onPressed: () {
                        //　ここで何かをする
                        model.resetKboytext();
                      },
                    )
                  ],
                ),
              );
            }
          ),
          ),
      ),
      );
    }
}

