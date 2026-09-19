import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/pages/daliyLogin/tt.dart';
import 'package:systeam_gym/pages/daliyLogin/view/dialy_login_screen.dart';
import 'package:systeam_gym/test_widgets/header.dart';
import 'package:systeam_gym/test_widgets/oage.dart';
import 'package:systeam_gym/test_widgets/dashbord_screen.dart';
import 'package:systeam_gym/pages/membersScreens/view/members_screen.dart';
import 'package:systeam_gym/test_widgets/profile.dart'; 

class mainSidebar extends StatefulWidget {
  const mainSidebar({super.key});

  @override
  State<mainSidebar> createState() => _SidebarState();
}

class _SidebarState extends State<mainSidebar> {
  late final SidebarXController controller;

  final List<Widget> screens = [const MemberDetailsPage (), const MembersScreen(),DialyLoginScreen()  ,const MyWidget()];

  @override
  void initState() {
    super.initState();

    controller = SidebarXController(selectedIndex: 0, extended: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsMenege.back_color2,
      body: Row(
        children: [
             
        
          SidebarX(
            controller: controller,
            items: [
              SidebarXItem(icon: Icons.dashboard, label: 'لوحة التحكم'),

              SidebarXItem(icon: Icons.people, label: 'المشتركين'),

              SidebarXItem(icon: Icons.card_membership, label: 'الاشتراكات'),

              SidebarXItem(icon: Icons.settings, label: 'الإعدادات'),
            ],

            extendedTheme: SidebarXTheme(
              width: 280,
              decoration: BoxDecoration(color: ColorsMenege.back_color,
              borderRadius: BorderRadius.circular(15),
              ),
            ),

            theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),

        decoration: BoxDecoration(
          color: ColorsMenege.back_color,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: ColorsMenege.border,
          ),
        ),

        // Hover
        hoverColor: ColorsMenege.hover_gray,

        // Text
        textStyle: TextStyle(
          color:ColorsMenege.txt_gray,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),

        // Selected Text
        selectedTextStyle: TextStyle(
          color: ColorsMenege.white ,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),

        // Hover Text
        hoverTextStyle: TextStyle(
          color: ColorsMenege.white,
          fontSize: 15,
        ),
          hoverIconTheme: IconThemeData(
            color: ColorsMenege.red,
          ),
        // Icons
        iconTheme:  IconThemeData(
          color: ColorsMenege.txt_gray,
          size: 21,
        ),

        // Selected Icons
        selectedIconTheme:  IconThemeData(
          color: ColorsMenege.white,
          size: 21,
        ),

        // Space between icon and text
        itemTextPadding: const EdgeInsets.only(
          left: 20,
        ),

        selectedItemTextPadding: const EdgeInsets.only(
          left: 20,
        ),

        // Normal Item
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),

        // Selected Item
        selectedItemDecoration: BoxDecoration(
          color: ColorsMenege.red,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: ColorsMenege.red
                  .withOpacity(0.25),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
        ),
      ),

          headerBuilder: (context, extended) {
        return SizedBox(
          height: 90,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: Row(
              children: [
                // Logo
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: ColorsMenege.red,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child:  Icon(
                    Icons.fitness_center,
                    color: ColorsMenege.white,
                    size: 27,
                  ),
                ),

                // Logo name
                if (extended) ...[
                  const SizedBox(width: 12),

                  const Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SYSTEM GYMAWY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),

                      SizedBox(height: 5),

                      Row(
                        children: [

                          Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 7,
                          ),

                          SizedBox(width: 5),
                          Text(
                            'Gym Management System',
                            style: TextStyle(
                              color: Color(0xff7d8798),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        );
      },


      footerBuilder: (context, extended) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(
            8,
            10,
            15,
            1,
          ),
          child: Column(
            children: [
               Divider(
                color: ColorsMenege.border,
              ),

              const SizedBox(height: 12),

              // =====================
              // ADMIN PROFILE
              // =====================
              Row(
                mainAxisAlignment: extended
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: ColorsMenege.red

                          .withOpacity(0.15),
                      borderRadius:
                          BorderRadius.circular(10),
                      border: Border.all(
                        color: ColorsMenege.red
                            .withOpacity(0.4),
                      ),
                    ),
                    child:  Icon(
                      Icons.person,
                      color: ColorsMenege.red,
                    ),
                  ),

                  if (extended) ...[
                    const SizedBox(width: 10),

                     Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            'مدير النظام',
                            style: TextStyle(
                              color: ColorsMenege.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 3),

                          Text(
                            'Kerolos Nag7',
                            style: TextStyle(
                              color: ColorsMenege.txt_gray,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),

              const SizedBox(height: 12),

              // =====================
              // LOGOUT
              // =====================
              SizedBox(
                width: double.infinity,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),

                    onTap: () {
                  
                    },

                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 11,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xff202631),
                        borderRadius:
                            BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xff303846),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: extended
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 12),

                           Icon(
                            Icons.logout,
                            color: ColorsMenege.red,
                            size: 20,
                          ),

                          if (extended) ...[
                            const SizedBox(width: 12),

                            const Text(
                              'Logout',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
          ),
          
          Expanded(
            child: AnimatedBuilder(
              animation: controller,

              builder: (context, child) {
                return screens[controller.selectedIndex];
              },
            ),
          ),
        ],
      ),
    );
  }
}
