import 'package:flutter/material.dart';

import 'package:argon_flutter/constants/Theme.dart';

//widgets
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:argon_flutter/widgets/card-horizontal.dart';
import 'package:argon_flutter/widgets/card-small.dart';
import 'package:argon_flutter/widgets/card-square.dart';
import 'package:argon_flutter/widgets/drawer.dart';



class Home extends StatelessWidget {
  // final GlobalKey _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ArgonColors.bgColorScreen,
        // key: _scaffoldKey
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 18.0, right: 18.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0, left: 5.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Your tasks",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: ArgonColors.text)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            title: Text('Replace air filter',
                              style: TextStyle(fontSize: 18)),
                            subtitle: Text('Air Conditioning | Every year'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('Details'),
                                onPressed: () {/* ... */},
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      )
                    )
                  ),
                ],
            ),
          ),
        )
      )
    );
  }
}
