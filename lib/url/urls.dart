import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLink extends StatefulWidget {
  const UrlLink({super.key});

  @override
  State<UrlLink> createState() => _UrlLinkState();
}

class _UrlLinkState extends State<UrlLink> {
  lunchUrl(anyUrl) async {
    var url = Uri.parse(anyUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url,mode: LaunchMode.externalApplication);
    } else {
      throw "Could not launch $url";
    }
  }

  //conect to phone number
  void _launchPhoneCall() async {
    const phoneNumber = 'tel:+919035707369'; // Replace with the desired phone number
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      // Handle error
      print('Could not launch $phoneNumber');
    }
  }

//conect to email
  void _launchEmail() async {
    final emailAddress = Uri.parse('mailto:smith@example.org?subject=News&body=New%20plugin');
    if (await canLaunchUrl(emailAddress)) {
      await launchUrl(emailAddress);
    } else {
      // Handle error
      print('Could not launch $emailAddress');
    }
  }

//conect to website
  void _launchWebsite() async {
    final Uri url = Uri.parse('http://www.archaid.in/',); // Replace with the desired website URL
    if (await canLaunchUrl(url)) {
      await launchUrl(url,mode: LaunchMode.externalApplication);
    } else {
      // Handle error
      print('Could not launch $url');
    }
  }

  //conect to sms
  void _launchMessage() async {
    const phoneNumber = 'sms:9035707369'; // Replace with the desired phone number
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber,);
    } else {
      // Handle error
      print('Could not launch $phoneNumber');
    }
  }

//connect to whats app
  openWhatsapp({required BuildContext context}) async {
    String whatsapp = '+919853589410';
    String whatsappURlAndroid = "whatsapp://send?phone=$whatsapp&text=Hell0 Every one";
    String whatsappURLIos = "https://wa.me/$whatsapp?type=Hello Every one";
    if (Platform.isIOS) {
      if (await canLaunchUrl(Uri.parse(whatsappURLIos))) {
        await launchUrl(Uri.parse(whatsappURLIos));
      } else {
        // _showToast(text: "whatsapp no installed");
      }
    } else {
      if (await canLaunchUrl(Uri.parse(whatsappURlAndroid))) {
        await launchUrl(Uri.parse(whatsappURlAndroid));
      } else {
        // _showToast(text: "whatsapp no installed");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Url Luncher"),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                lunchUrl("https://indianexpress.com/article/sports/cricket/india-versus-australia-low-key-early-audition-for-next-years-t20-world-cup-9038353/");
              },
              child: Text("Click hear")),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () async {
              const url = 'https://indianexpress.com/article/india/as-rescue-op-gathers-pace-ndrf-steps-in-to-clear-last-minute-hurdle-9038550/';
              if (await canLaunch(url)) {
                await launch(url, forceWebView: true, enableJavaScript: true);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Center(
              child: Text(
                "Want Read Article Tap Here",
                style: TextStyle(color: Colors.green, fontSize: 25, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                _launchPhoneCall();
              },
              child: Text("Tap to Call")),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                _launchEmail();
              },
              child: Text("Tap to Maill me")),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                // lunchUrl('https://indianexpress.com/article/india/as-rescue-op-gathers-pace-ndrf-steps-in-to-clear-last-minute-hurdle-9038550/');
                _launchWebsite();
              },
              child: Text("Tap to open a site")),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                openWhatsapp(context: context);
              },
              child: Text("Tap to open Whats app")),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {
                _launchMessage();
              },
              child: Text("Tap to open SMS")),
        ],
      ),
    );
  }
}

_launchURLdrive(link) async {
  var url = Uri.parse(link);
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
