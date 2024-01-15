import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomProfilePageField extends StatelessWidget {
 final String image_address;
 final String title_text;
 final String field_text;
  const CustomProfilePageField({super.key,
  required this.image_address,
  required this.title_text,
  required this.field_text,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: Get.width*0.8,
      decoration: BoxDecoration(

      ),
      child: Card(
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.2),
            borderRadius: BorderRadius.all(
                Radius.circular(20)
            )
        ),
        elevation: 50,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                            image_address
                        ),
                        fit: BoxFit.fill
                    )
                ),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(title_text,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600
                        ),

                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(field_text),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePageCustomButtom extends StatelessWidget {
  final String title_text;
  const ProfilePageCustomButtom({super.key,
  required this.title_text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: Get.width*0.35,
      child: Center(
        child: Text(title_text,
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.blue[400],
          borderRadius: BorderRadius.all(
              Radius.circular(10)
          )
      )
    );

  }
}

