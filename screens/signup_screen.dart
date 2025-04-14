import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Section - Image & Form
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
              child: Row(
                children: [
                  // Left Image
                  Expanded(
                    child: Image.asset(
                      "assets/images/signup_illustration.png", // Replace with your image
                      fit: BoxFit.contain,
                    ),
                  ),

                  // Right Form Section
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Create an account",
                            style: GoogleFonts.poppins(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Enter your details below",
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                          SizedBox(height: 20),

                          // Name Input
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Name",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),

                          // Email Input
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Email or Phone Number",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),

                          // Password Input
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 20),

                          // Signup Button
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              minimumSize: Size(double.infinity, 50),
                            ),
                            child: Text("Create Account", style: TextStyle(color: Colors.white)),
                          ),
                          SizedBox(height: 10),

                          // Google Signup Button
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/google.png", // Add Google icon to assets
                              height: 24,
                            ),
                            label: Text("Sign up with Google"),
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(double.infinity, 50),
                              side: BorderSide(color: Colors.grey),
                            ),
                          ),

                          SizedBox(height: 10),
                          // Login Navigation
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account? "),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/login");
                                },
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Footer Section
            Container(
              width: double.infinity,
              color: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Exclusive",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Subscribe and get 10% off your first order",
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Enter your email",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        child: Text("Subscribe"),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Footer Sections
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _footerColumn("Support", [
                        "chandigarh university, mohali",
                        "vishalthakur.kang@gmail.com",
                        "+7814335905/7009299359",
                      ]),
                      _footerColumn("Account", [
                        "My Account",
                        "Login / Register",
                        "Cart",
                        "Wishlist",
                        "Shop",
                      ]),
                      _footerColumn("Quick Link", [
                        "Privacy Policy",
                        "Terms of Use",
                        "FAQ",
                        "Contact",
                      ]),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Download App",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset("assets/images/playstore.png", height: 40),
                              SizedBox(width: 10),
                              Image.asset("assets/images/appstore.png", height: 40),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              IconButton(
                                icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                                onPressed: () {},
                              ),
                              SizedBox(width: 10),
                              IconButton(
                                icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
                                onPressed: () {},
                              ),
                              SizedBox(width: 10),
                              IconButton(
                                icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                                onPressed: () {},
                              ),
                              SizedBox(width: 10),
                              IconButton(
                                icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.white70),
                  Center(
                    child: Text(
                      "© Copyright RimeL 2022. All rights reserved",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _footerColumn(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        for (var item in items)
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(item, style: TextStyle(color: Colors.white70)),
          ),
      ],
    );
  }
}
