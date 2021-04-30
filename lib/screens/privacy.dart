import 'package:flutter/material.dart';

class privacyPage extends StatefulWidget {
  @override
  privacyPageState createState() => privacyPageState();

  }

class privacyPageState extends State<privacyPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text("Privacy",style: TextStyle(color: Colors.grey[800]),)
      ),
      body: Center(
        child: Container(
               margin: EdgeInsets.all(75.0),
            child:
            Text("INTRODUCTION TodoApp (“we” or “us” or “our”) respects the privacy of our users (“user” or “you”). This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website [name of website.com] [and our mobile application], including any other media form, media channel, mobile website, or mobile application related or connected thereto (collectively, the “Site”). Please read this privacy policy carefully.  If you do not agree with the terms of this privacy policy, please do not access the site.We reserve the right to make changes to this Privacy Policy at any time and for any reason.  We will alert you about any changes by updating the “Last Updated” date of this Privacy Policy.  Any changes or modifications will be effective immediately upon posting the updated Privacy Policy on the Site, and you waive the right to receive specific notice of each such change or modification.You are encouraged to periodically review this Privacy Policy to stay informed of updates. You will be deemed to have been made aware of, will be subject to, and will be deemed to have accepted the changes in any revised Privacy Policy by your continued use of the Site after the date such revised Privacy Policy is posted.This privacy policy was created using Termly.",
              style: TextStyle(color: Colors.red[800],fontSize: 13.0,fontStyle: FontStyle.italic) ,))

           ),
        );

  }
  }
