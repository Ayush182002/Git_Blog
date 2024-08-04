import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Push extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 60% of the height for the image
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Images/git_push.png'), // Path to your image
              ),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(66, 18, 237, 156),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
        ),
        // 40% of the height for the heading and description
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Git Push',
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
                        'Git push updates the remote repository with your local commits.',
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
                      child: Text(
                        'It transfers commits from your local repository to a remote repository.',
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
                        fontSize: 16,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Git push is often used to share changes with other developers or to deploy updates.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey[700],
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
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
                        'git push origin branch-name',
                        style: GoogleFonts.teko(
                          fontSize: 20,
                          color: Colors.blueGrey[700],
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 16), // Space before command
                // Text(
                //   'How to do it:',
                //   style: TextStyle(
                //     fontSize: 12,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.blueGrey[900],
                //   ),
                // ),
                // SizedBox(height: 8), // Space between points
                // Text(
                //   '```bash\n'
                //   'git push origin branch-name\n'
                //   '```',
                //   style: TextStyle(
                //     fontSize: 12,
                //     fontFamily:
                //         'Courier New', // Using a monospaced font for code
                //     color: Colors.blueGrey[800],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
