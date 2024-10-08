import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class InstaReels extends StatefulWidget {
  @override
  _InstaReelsState createState() => _InstaReelsState();
}

class _InstaReelsState extends State<InstaReels> {
  late List<VideoPlayerController> _videoControllers;

  // Sample list of video URLs (replace with actual video URLs)
  final List<String> _videoUrls = [
    'https://videos.pexels.com/video-files/853889/853889-hd_1920_1080_25fps.mp4',
    'https://videos.pexels.com/video-files/853910/853910-hd_1920_1080_25fps.mp4',
    'https://videos.pexels.com/video-files/1903270/1903270-uhd_1920_1440_30fps.mp4',
    'https://videos.pexels.com/video-files/1338593/1338593-hd_1920_1080_30fps.mp4',
    'https://videos.pexels.com/video-files/2048206/2048206-hd_1920_1080_30fps.mp4',
    'https://videos.pexels.com/video-files/2795168/2795168-uhd_1440_2560_25fps.mp4',
  ];

  @override
  void initState() {
    super.initState();
    _videoControllers = _videoUrls
        // ignore: deprecated_member_use
        .map((url) => VideoPlayerController.network(url))
        .toList();

    // Initialize all video controllers
    for (var controller in _videoControllers) {
      controller.initialize();
    }
  }

  @override
  void dispose() {
    // Dispose of the controllers when no longer needed
    for (var controller in _videoControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reels'),
        backgroundColor: Colors.white,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(4.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of items per row
          mainAxisSpacing: 4.0, // Spacing between rows
          crossAxisSpacing: 4.0, // Spacing between columns
        ),
        itemCount: _videoUrls.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to video player page on tap
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPlayerScreen(controller: _videoControllers[index]),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Center(
                child: Icon(
                  Icons.play_circle_fill,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class VideoPlayerScreen extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerScreen({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playing Video'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: VideoPlayer(controller),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Toggle play/pause
          controller.value.isPlaying ? controller.pause() : controller.play();
        },
        child: Icon(
          controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: InstaReels(),
  ));
}
