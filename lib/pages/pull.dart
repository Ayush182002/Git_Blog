import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pull extends StatefulWidget {
  @override
  _PullState createState() => _PullState();
}

class _PullState extends State<Pull> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _imageOpacity;
  late Animation<Offset> _textOffset;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    )..forward();

    _imageOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _textOffset =
        Tween<Offset>(begin: Offset(0, 0.1), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 60% of the height for the image with animation
        Expanded(
          flex: 5,
          child: FadeTransition(
            opacity: _imageOpacity,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('Images/git_pull.png'), // Path to your image
                ),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            ),
          ),
        ),
        // 40% of the height for the heading and description with animation
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SlideTransition(
              position: _textOffset,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Git Pull',
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
                          'Git pull fetches and integrates changes from a remote repository into your local branch.',
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
                          'It combines `git fetch` and `git merge` into a single command.',
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
                          'Git pull is commonly used to synchronize your local branch with the remote branch.',
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
                          'git pull origin branch-name',
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
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.blueGrey[900],
                  //   ),
                  // ),
                  // SizedBox(height: 8), // Space between points
                  // Text(
                  //   '```bash\n'
                  //   'git pull origin branch-name\n'
                  //   '```',
                  //   style: TextStyle(
                  //     fontSize: 18,
                  //     fontFamily:
                  //         'Courier New', // Using a monospaced font for code
                  //     color: Colors.blueGrey[800],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
