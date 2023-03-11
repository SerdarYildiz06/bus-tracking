import 'package:ego_asistan/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class ReportBug extends StatefulWidget {
  const ReportBug({Key? key}) : super(key: key);

  @override
  State<ReportBug> createState() => _ReportBugState();
}

class _ReportBugState extends State<ReportBug> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('Hata Bildir'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                hintText: 'Adınız',
                contentPadding: EdgeInsets.only(left: 10),
              ),
              onTap: () {},
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                hintText: 'Soyadınız',
                contentPadding: EdgeInsets.only(left: 10),
              ),
              onTap: () {},
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                hintText: 'E-posta adresiniz',
                contentPadding: EdgeInsets.only(left: 10),
              ),
              onTap: () {},
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                hintText: 'Hata Açıklaması',
              ),
              maxLines: 3,
              onTap: () {},
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  // show snackbar with success message
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Hata bildirildi.')));
                },
                child: Text('Oluştur'),
              ),
            ),
            SizedBox(height: 10),
          ]),
        ),
      ),
    );
  }
}
