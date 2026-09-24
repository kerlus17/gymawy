import 'package:flutter/material.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';
import 'package:systeam_gym/test_widgets/profile.dart';

class SupInfo extends StatelessWidget {
  const SupInfo({super.key, required this.packagetype, required this.firstdate, required this.enddate});
final String packagetype; 
 final DateTime firstdate;
 final DateTime enddate;
  @override
  Widget build(BuildContext context) {
    return customContaner(
                          hight: 250,
                          width: 300,
                          backcolor: ColorsMenege.back_color2,

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'الاشتراك الحالي',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),

                                  const Spacer(),

                                  StatusBadge(
                                    text: 'نشط',
                                    color: AppColors.green,
                                  ),
                                ],
                              ),

                              const SizedBox(height: 8),

                               Text(
                                packagetype,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 4),

                               Text(
                               ' $firstdate',
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 8,
                                ),
                              ),

                               Text(
                              '$enddate',
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 8,
                                ),
                              ),

                              const Spacer(),

                              SizedBox(
                                width: double.infinity,
                                height: 29,
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.refresh, size: 13),
                                  label: const Text(
                                    'تجديد الاشتراك',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.red,
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ) ;
  }
}