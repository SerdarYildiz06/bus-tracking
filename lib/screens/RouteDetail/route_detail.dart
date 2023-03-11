import 'package:ego_asistan/widgets/my_list_tile.dart';
import 'package:ego_asistan/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class RouteDetail extends StatefulWidget {
  const RouteDetail({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RouteDetail> createState() => _RouteDetailState();
}

class _RouteDetailState extends State<RouteDetail> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('Hat ${widget.title}'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: MyListTile(
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Sefer Saatleri',
                      style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Hafta İçi',
                                style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '06:00',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '21:00',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Hafta Sonu',
                                style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '08:00',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '22:00',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
