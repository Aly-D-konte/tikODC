import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

class  UserHomePage extends StatelessWidget {
   UserHomePage ({super.key});

  final List<Map> tiktokItems =[
    {
      "video": "assets/videos/video_1.mp4.mp4",
    },
    {
      "video": "assets/videos/video_2.mp4.mp4",
    },
    {
      "video": "assets/videos/video_3.mp4.mp4",
    },
    {
      "video": "assets/videos/video_4.mp4.mp4",
    },
    {
      "video": "assets/videos/video_5.mp4.mp4",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
  options: CarouselOptions(
    height: double.infinity,
    scrollDirection: Axis.vertical,
    viewportFraction: 1.0
    ),
  items: tiktokItems.map((item) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          color: const Color(0xFF141518),
          child: Stack(
            children: [
              VideoWidget(videoUrl: item['video'],),
              const PostContent()
            ],
          ),
          );
      },
    );
  }).toList(),
);
  }
}

class VideoWidget extends StatefulWidget {
   const VideoWidget({super.key ,required this.videoUrl});
  final String videoUrl;

  @override
  _VideoWidgetState createState() => _VideoWidgetState(this.videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
   late VideoPlayerController _controller;
   final String videoUrl;
   _VideoWidgetState(this.videoUrl);


  @override
   void initState(){
    super.initState();
     _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
       _controller.play();
         setState(() {});
      });
   }
  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}

class PostContent extends StatelessWidget {
  const PostContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
        height: 100, 
        padding: const EdgeInsets.only(top: 40),
      //color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.live_tv_outlined,),
          SizedBox(
            width: 50,
          ),
          Text(
            'Abonnement',
            style: TextStyle(
            color:  Colors.white60,
            fontWeight: FontWeight.w600),
             ),
             SizedBox(width: 20),
          Text(
            'Pour moi',
            style: TextStyle(
            color:  Colors.white,
            fontWeight: FontWeight.w600),
             ),
              SizedBox(
            width: 50,
          ),
              Icon(Icons.search_outlined,),
         
        ],),
      ),
      Expanded(child: Row(
        children: [
          Expanded(
            child: Container(
             // color: Colors.red.withOpacity(0.5),
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    '@KONTE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                   const SizedBox(height: 10),
                   const Text(
                    'Nul ne pourra jamais égaler le #Prophète Mohammed (sws) en @générosité',
                    style: TextStyle(
                      color: Colors.white
                    ),
                   ),
                   const SizedBox(height: 10),
                   Row(
                    children: const  [
                      Icon(
                        Icons.music_note,
                        color: Colors.white,
                        size: 15,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Silence des mosquées',
                        style:  TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                   )
                ],
              ),
              ),
              ),
              
          SizedBox(
            width:80, 
            //color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 80, 
                  //color: Colors.blue,
                   child:  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children:  [
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                     child: const CircleAvatar(
                        radius: 35,
                        backgroundImage: 
                        AssetImage('assets/images/m.png'),
                        ),
                    ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                  ),

                  //Icon de favorite
                  SizedBox(
                  height: 80, 
                 // color: Colors.red,
                  child: Column(
                  children: [
                    Icon(Icons.favorite, color: Colors.white.withOpacity(0.85),
                    size: 35,
                    ),
                    Text(
                      '20.0K',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ]),
                  ),

                  //Icon de messagerie
                  SizedBox(
                    height: 80,
                    child: Column(
                  children: [
                    Icon(Icons.message, color: Colors.white.withOpacity(0.85),
                    size: 35,
                    ),
                    Text(
                      '20.0K',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ]),
                  ),

                  //Icon de partager(share)
                  SizedBox(
                  height: 80, 
                 // color: Colors.yellow,
                  child: Column(
                  children: [
                    Icon(Icons.bookmark, color: Colors.white.withOpacity(0.85),
                    size: 35,
                    ),
                   const Text(
                      '20.0K',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ]),
                  ),
                  

                   SizedBox(
                  height: 80, 
                 // color: Colors.yellow,
                  child: Column(
                  children: [
                    Icon(Icons.shortcut_sharp, color: Colors.white.withOpacity(0.85),
                    size: 35,
                    ),
                    Text(
                      '20.0K',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ]),
                  ),
                  

                const AnimatedLogo(),
              ],),
            ),
      ]))
    ],);
  }
}

//la rotation de logo de tiktok

class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({super.key});

  @override
  State<AnimatedLogo> createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 45,
        width: 45,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(
            image: AssetImage('assets/images/disc.pgn.png'),
          ),
        ),
        child: Image.asset('assets/images/tiktok.png'),
      ),
    );
  }
}

