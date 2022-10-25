import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CanData extends StatefulWidget {
  const CanData({super.key});

  @override
  State<CanData> createState() => _CanDataState();
}

class _CanDataState extends State<CanData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ข้อมูลสายพันธุ์กัญชา'),
        backgroundColor: Colors.green[100],
      ),
      body: SafeArea(
        child: Container(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Image.asset(
                  "assets/sqTail.jpg",
                  scale: 5.0,
                ),
                Text('กัญชานะ')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
