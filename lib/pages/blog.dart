import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blog_web/pages/merge.dart';
import 'package:blog_web/pages/cherrypick.dart';
import 'package:blog_web/pages/push.dart';
import 'package:blog_web/pages/pull.dart';
import 'package:blog_web/pages/rebase.dart';
import 'package:blog_web/pages/log.dart';

// Import block content widgets

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Blog Page'),
      // ),
      body: Column(
        children: [
          // First row occupying 20% of the height
          Expanded(
            flex: 2,
            child: Container(
              color: Color(0xFF1c1818), // Custom color for the header section
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'GIT BLOG',
                        style: GoogleFonts.alikeAngular(
                          fontSize: 72,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // GitHub Icon using SvgPicture
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: SvgPicture.asset(
                          'assets/Icons/github.svg', // Path to your SVG file
                          width: 72,
                          height: 72,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Second row occupying 80% of the height
          Expanded(
            flex: 8,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildBlock(context, Merge()), // Block 1

                      _buildBlock(context, CherryPick()), // Block 2
                    ],
                  ),
                  SizedBox(height: 16), // Spacer between rows
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildBlock(context, Pull()),
                      _buildBlock(context, Push()), // Block 3
                      // Block 4
                    ],
                  ),
                  SizedBox(height: 16), // Spacer between rows
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildBlock(context, Log()), // Block 5
                      _buildBlock(context, Rebase()), // Block 6
                    ],
                  ),
                  SizedBox(height: 16), // Spacer between rows
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBlock(BuildContext context, Widget contentWidget) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Container(
        width: MediaQuery.of(context).size.width / 2 -
            32, // Adjusted width with padding
        height: 570,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: contentWidget, // Use contentWidget passed as parameter
      ),
    );
  }
}
