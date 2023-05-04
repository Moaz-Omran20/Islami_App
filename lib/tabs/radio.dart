import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            child: Container(
                alignment: Alignment.center,
                height: 220,
                child: Image.asset(
                  "assets/images/radio_background.png",
                  fit: BoxFit.fill,
                )),
          ),
          Text(
            "اذاعه القرآن الكريم",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/Icon metro-next.png",
                  ),
                  color: Theme.of(context).primaryColor,
                ),

              ),
              SizedBox(width: 20,),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/Icon awesome-play.png",
                  ),
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(width: 20,),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/icon_next.png",
                  ),
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
