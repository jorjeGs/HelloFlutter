import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 40,
              bottom: 20
            ),
            child: Image.asset('lib/images/cover.png'),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Sanrio x Yu-Gi-Oh!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
                ),
            ),
          ),
        
        Text(
          'Get ready to duel with your favorite Sanrio characters!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),

          //get started button, using container to add padding and style
        const Spacer(),

          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context, MaterialPageRoute(
                  builder: (context) => const HomePage() 
                )
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),

          const Spacer()
        ],
      )
    );
  }
}