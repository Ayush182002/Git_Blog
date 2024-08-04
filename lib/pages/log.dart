import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Log extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 40% of the height for the image
        Expanded(
          flex: 4,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Images/git_log.png'), // Path to your image
              ),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(66, 188, 121, 121),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
        ),
        // 60% of the height for the heading and description
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Git Log',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[900],
                  ),
                ),
                SizedBox(height: 8), // Space between heading and description
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '• ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Git log lets you view the commit history.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey[700],
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8), // Space between points
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '• ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blueGrey[700],
                            height: 1.5,
                          ),
                          children: [
                            TextSpan(
                              text: 'Git log prints out\n',
                              style: GoogleFonts.teko(
                                fontSize: 18,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Commit: e346d8\nAuthor: ayush\nDate: Sun 10 Aug 17:30\nbody: ......',
                              style: GoogleFonts.teko(
                                fontSize: 18,
                                color: Colors.blueGrey[700],
                              ),
                            ),
                          ],
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
    );
  }
}
