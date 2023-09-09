import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_info/presentation/profile_webview.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Personal Details',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
            color: Colors.black
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const FractionallySizedBox(
              widthFactor: 0.5,
              child: CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 90.0,
                  foregroundImage: AssetImage('assets/profile_image.jpeg',),
                ),
              ),
            ),

            Text(
              'Ugwuta Kingsley',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 25.0.sp,
                  color: Colors.black
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Mobile Track',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0.sp,
                  color: Colors.black87
              ),
              textAlign: TextAlign.center,
            ),

            Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 20.0),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'A simple dude who likes staring at screens '
                            'and trying to figure out why things aren\'t '
                            'working 🧑‍💻',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Colors.black87
                        ),
                      ),
                      ElevatedButton.icon(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ProfileWebView()));
                          },
                          icon: SvgPicture.asset(
                              'assets/github_icon.svg',
                            width: 24, height: 24, color: Colors.white,
                          ),
                          label: Text('Github'),
                          style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
            )),
          ],
        ),
      ),
    );
  }
}
