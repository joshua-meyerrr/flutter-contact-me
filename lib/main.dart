import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:contact_joshua_app/constants.dart' as constants;
import 'package:contact_joshua_app/cv_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _launchURL(target) async {
      if (await canLaunch(target)) {
        await launch(target);
      } else {
        throw 'Could not launch $target';
      }
    }

    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        backgroundColor: constants.bgPrimary,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: constants.bgSecondary,
                  backgroundImage:
                      AssetImage('assets/images/picture-joshua.png'),
                  radius: 50.0,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Joshua Meyer',
                  style: GoogleFonts.lato(
                      fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text('Aspiring Flutter Dev',
                    style: GoogleFonts.lato(
                        fontSize: 20,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 42,
                  width: 150,
                  child: Divider(
                    color: Colors.white60,
                  ),
                ),
                Card(
                  color: constants.bgSecondary,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                  child: ListTile(
                      horizontalTitleGap: 0,
                      leading: const Icon(
                        Icons.phone_rounded,
                        color: constants.accentSecondary,
                      ),
                      title: Text(
                        '+49 1786948837',
                        style: GoogleFonts.lato(fontSize: 14),
                      ),
                      onTap: () => launch('tel://01786948837')),
                ),
                Card(
                  color: constants.bgSecondary,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  child: ListTile(
                    horizontalTitleGap: 0,
                    leading: const Icon(Icons.email_rounded,
                        color: constants.accentPrimary),
                    title: Text('joshua.meyer.personal@gmail.com',
                        style: GoogleFonts.lato(fontSize: 14)),
                    onTap: () =>
                        launch('mailto:joshua.meyer.personal@gmail.com'),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.github),
                      onPressed: () =>
                          _launchURL('https://github.com/joshua-meyerrr'),
                    ),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.linkedin),
                      onPressed: () => _launchURL(
                          'https://www.linkedin.com/in/joshua-meyer-44888a197/'),
                    ),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.youtube),
                      onPressed: () => _launchURL(
                          'https://www.youtube.com/channel/UChLSGGaVoLoAERoAec4OH9g'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        floatingActionButton: const CVButton(),
      ),
    );
  }
}
