import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';

class AttendanceCard extends StatelessWidget {
  final String? name;
  final String? id;
  final String? time;
  final String? subscriptionId;

  const AttendanceCard({
    super.key,
    this.name,
    this.time,
    this.id,
    this.subscriptionId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xff11161d),
        borderRadius: BorderRadius.circular(9),
        border: Border.all(color: const Color(0xff202832)),
      ),
      child: Row(
        children: [
          Row(
            children: [
              Gap(10),
              Icon(Icons.check, color: ColorsMenege.white, size: 15),
              Gap(10),
              const Text(
                'حضور',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),

          const Spacer(),

          // =========================
          // Member Information
          // =========================
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Subscription status
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xff075f3c),

                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          subscriptionId ?? "",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(width: 6),

                      Text(
                        name ?? "",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 3),

                  Text(
                    'ID : $id   •   $time',
                    style: const TextStyle(
                      color: Color(0xff687483),
                      fontSize: 11,
                    ),
                  ),
                ],
              ),

              const SizedBox(width: 10),

              // =========================
              // Avatar
              // =========================
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xff202732),
                  border: Border.all(color: const Color(0xff303946)),
                ),
                child: const Icon(
                  Icons.person_outline,
                  color: Color(0xff8993a1),
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
