import 'package:flutter/material.dart';

class Merge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 50% of the height for the image
        Expanded(
          flex: 7,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Images/git_merge.png'), // Path to your image
              ),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(66, 246, 155, 18),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
        ),
        // 50% of the height for the heading and description
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Git Merge',
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
                        'Git merge incorporates changes into the current branch.',
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
                        'Merge is like having 2 parents and 1 resulting child.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey[700],
                          height: 1.5,
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
