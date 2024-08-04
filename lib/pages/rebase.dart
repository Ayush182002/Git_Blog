import 'package:flutter/material.dart';

class Rebase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 40% of the height for the image
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('Images/git_rebase.png'), // Path to your image
              ),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(66, 38, 234, 67),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
        ),
        // 60% of the height for the heading and description
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Git Rebase',
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
                        'Git rebase moves a branch from one commit to another.',
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
                        'Rebase is useful for maintaining a linear project history.',
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
                        'It allows you to integrate changes from one branch into another by applying the commits individually.',
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
                        'Rebasing can help you avoid unnecessary merge commits.',
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
