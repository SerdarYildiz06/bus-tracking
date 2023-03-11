import 'package:ego_asistan/screens/RouteDetail/route_detail.dart';
import 'package:ego_asistan/widgets/my_list_tile.dart';
import 'package:ego_asistan/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class RoutesScreen extends StatefulWidget {
  const RoutesScreen({Key? key}) : super(key: key);

  @override
  State<RoutesScreen> createState() => _RoutesScreenState();
}

class _RoutesScreenState extends State<RoutesScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('Otobüs Hatları'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Ara',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  contentPadding: EdgeInsets.only(left: 10),
                ),
                onTap: () {},
              ),
              SizedBox(height: 10),
              MyListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RouteDetail(title: '536')));
                },
                color: Colors.white.withOpacity(0.3),
                child: Row(
                  children: [
                    Image.asset(
                      'lib/assets/images/bus.png',
                      height: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Süvari-Ulus',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '536',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              MyListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RouteDetail(title: '533')));
                },
                color: Colors.white.withOpacity(0.3),
                child: Row(
                  children: [
                    Image.asset(
                      'lib/assets/images/bus.png',
                      height: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Elvankent - İst. Yolu - Sıhhiye',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '533',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              MyListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RouteDetail(title: '535')));
                },
                color: Colors.white.withOpacity(0.3),
                child: Row(
                  children: [
                    Image.asset(
                      'lib/assets/images/bus.png',
                      height: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Etimesgut - Ulus',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '535',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              MyListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RouteDetail(title: '523')));
                },
                color: Colors.white.withOpacity(0.3),
                child: Row(
                  children: [
                    Image.asset(
                      'lib/assets/images/bus.png',
                      height: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Sinacn - Polatlı Cd. - Ulus',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '523',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              MyListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RouteDetail(title: '531')));
                },
                color: Colors.white.withOpacity(0.3),
                child: Row(
                  children: [
                    Image.asset(
                      'lib/assets/images/bus.png',
                      height: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Eryaman - Fatih - Sincan - Etimesgut',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '531',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
