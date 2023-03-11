import 'package:ego_asistan/screens/Announcements/announcements_screen.dart';
import 'package:ego_asistan/screens/NearMe/near_me.dart';
import 'package:ego_asistan/screens/ReportBug/report_bug.dart';
import 'package:ego_asistan/screens/Routes/routes_screen.dart';
import 'package:ego_asistan/screens/WhereBus/where_bus.dart';
import 'package:ego_asistan/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 60),
            Image.asset(
              'lib/assets/images/logo.png',
              height: 100,
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(6)),
              child: Text(
                'Engelsiz Toplu Ulaşım \nMobil Uygulaması',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6)),
                          hintText: 'Otobüsüm Nerede?',
                          contentPadding: EdgeInsets.only(left: 10),
                        ),
                        readOnly: true,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WhereBus()));
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: Icon(Icons.search),
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ReportBug()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/images/caution.png',
                            height: 40,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Sorun Bildir & Yardım',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AnnouncementsScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/images/announcement.png',
                            height: 40,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Duyurular',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          )
                        ],
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NearMe()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/images/id.png',
                            height: 40,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Yakınımdaki Duraklar',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RoutesScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/images/bus.png',
                            height: 40,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Hat & Sefer',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
