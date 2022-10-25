import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CanData extends StatefulWidget {
  CanData({Key? key}) : super(key: key);
  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'ภาษาไทย', 'locale': Locale('th', 'TH')},
  ];

  updatelanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  builddialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
              title: Text('lang'.tr),
              content: Container(
                  width: double.maxFinite,
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                              onTap: () {
                                print(locale[index]['name']);
                                updatelanguage(locale[index]['locale']);
                              },
                              child: Text(locale[index]['name'])),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemCount: locale.length)));
        });
  }

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
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/CAN.jpg",
                      scale: 5.0,
                    ),
                    Text(
                      'กัญชาพันธุ์หางกระรอก (Thai Stick) เป็นกัญชาสายพันธุ์ไทย ว่ากันว่าเป็นหนึ่งในสายพันธุ์กัญชาที่ดีที่สุดในโลก เพราะมีค่า THC (Tetrahydrocannabinol) หรือสารที่ทำให้เคลิ้มและใช้ในการรักษานั้นมีอยู่สูงมาก จากเว็บไซต์ของต่างประเทศที่หาข้อมูลชี้ว่ามีราวๆ 18-22% เลยทีเดียว \n ส่วนชื่อ Thai Stick นั้นมาจากช่วงปลายยุค 60 ถึงต้น 70 ช่วงสงครามเวียดนาม ทหารอเมริกันจำนวนมากได้ถูกส่งมาประจำการในประเทศไทย กัญชาหางกระรอก ถูกนำไปม้วน ขึ้นรูปเป็นแท่ง เจ้าสิ่งที่ทำขึ้นมานี้ได้รับความนิยมอย่างมาก จนมีการลักลอบส่งออกไปอยู่บ่อยครั้ง ด้วยลักษณะรูปร่างและที่มาเลยถูกเรียกว่า Thai Stick หลังจากช่วงสงครามยุติลง การส่งออกก็ถูกห้ามและกวาดล้างจนหายไปในที่สุด Thai Stick เองก็หายไปด้วยเช่นกัน ปัจจุบันมีหลายคนพยายามส่งเสริมและพลักดันให้ กัญชาหางกระรอก รวมถึงการทำ Thai Stick ให้กลับมาอีกครั้ง เพราะเชื่อว่าสิ่งนี้จะเป็นสิ่งที่สร้างมูลค่าทางเศรษฐกิจได้ ในอีกด้าน Thai Stick ก็ถูกนำไปพัฒนาต่อและนิยมใช้เพื่อสันทนาการในหลายประเทศ เว็บไซต์ด้านกัญชาในต่างประเทศ ได้กล่าวว่า Thai Stick ได้ถูกพัฒนาให้คล้ายกับซิการ์กัญชาจนทำให้หลายที่ ให้ความสนใจเมื่อกัญชาเสรี มีการคุมตามระเบียบ ทุกคนพร้อมให้ความร่วมมือ หางกระรอก กัญชาสายพันธุ์ไทยก็เป็นหนึ่งในสิ่งที่ควรผลักดัน ไม่แน่ว่าอนาคตอาจจะกลายเป็นหนึ่งในสินค้าที่ได้การยอมรับในระดับสากลและสร้างมูลค่าอันมหาศาลให้กับประเทศได้'
                          .tr,
                      style: TextStyle(fontSize: 20),
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