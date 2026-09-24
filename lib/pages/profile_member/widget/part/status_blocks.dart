import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';

class StatusBlocks extends StatelessWidget {
  const StatusBlocks({super.key, required this.text, required this.value, required this.des});
final String text;
final String value;
 
final String des;
  
  @override
  Widget build(BuildContext context) {
    return customContaner(
                          hight: 100,
                          width: 150,
                          backcolor: ColorsMenege.back_color2,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.import_contacts,
                                    size: 12,
                                    color: ColorsMenege.grey,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    text,
                                    style: const TextStyle(
                                      fontSize: 8,
                                      color: ColorsMenege.grey,
                                    ),
                                  ),
                                ],
                              ),

                              const Spacer(),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    value,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: ColorsMenege.white,
                                    ),
                                  ),

                                  const SizedBox(width: 4),
                                  Text(
                                    des,
                                    style: const TextStyle(
                                      fontSize: 8,
                                      color: ColorsMenege.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),);
  }
}