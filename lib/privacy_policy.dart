import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Privacy Policy'),
      ),
      body:const SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Your privacy is important to us. This Privacy Policy explains how we collect, use, and disclose your personal information when you use our app.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Information We Collect:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '- Personal Information: We may collect personal information such as your name, email address, and phone number when you register an account or make a booking through our app.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              '- Usage Information: We may collect information about how you interact with our app, such as the pages you visit and the actions you take.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'How We Use Your Information:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '- We use your personal information to provide and improve our services, communicate with you, and process your bookings and payments.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              '- We may also use your information to personalize your experience and send you promotional offers and updates.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'How We Share Your Information:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '- We may share your personal information with third-party service providers who help us operate our app and provide our services.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              '- We may also share your information in response to legal requests or to protect our rights and interests.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Your Choices:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '- You can update your account information and communication preferences at any time by logging into your account settings.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              '- You can also opt out of receiving promotional emails and notifications from us.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Contact Us:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'If you have any questions or concerns about our Privacy Policy, please contact us at support@huuja.com.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
