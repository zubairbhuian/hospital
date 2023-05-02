import 'package:flutter/material.dart';
import 'package:hospital/common/models/service_data.dart';


import '../../utils/app_color.dart';
import '../regular_text.dart';

class OurServices extends StatelessWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var serviceData = ServiceData();

    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: serviceData.data.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 5 / 6,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2),
      itemBuilder: (contex, index) => Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: InkWell(
          child: Container(
            height: 210,
            width: 182,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(
                        Color.fromRGBO(0, 0, 0, 0.56), BlendMode.darken),
                    image: AssetImage("${serviceData.data[index]['imgUrl']}"))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RegularText(
                  text: "${serviceData.data[index]['text']}",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColor.white,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          // onTap: () => Get.to(const ServiceDetailScreen()),
        ),
      ),
    );
  }
}
