class Video {

  final int id;
  final String categories;
  final String img;
  final String video;

  Video({
    required this.id,
    required this.categories,
    required this.img,
    required this.video,
  });

}


List<Video> videos = <Video>[

  Video(id: 1, categories: 'Funny Video', img: 'assets/images/v1.jpg',video: 'assets/video/krishna-flute-music-mobile-status.mp4'),
  Video(id: 2, categories: 'Education Video', img: 'assets/images/v2.jpg',video: 'assets/video/krishna-flute-music-mobile-status.mp4'),
  Video(id: 3, categories: 'Gaming Video', img: 'assets/images/v3.jpg',video: 'assets/video/krishna-flute-music-mobile-status.mp4'),
  Video(id: 4, categories: 'Travel & Events Video', img: 'assets/images/v4.jpeg',video: 'assets/video/krishna-flute-music-mobile-status.mp4'),
  Video(id: 5, categories: 'Animals Video', img: 'assets/images/v5.jpg',video: 'assets/video/krishna-flute-music-mobile-status.mp4'),
  Video(id: 6, categories: 'Music Video', img: 'assets/images/v6.jpg',video: 'assets/video/krishna-flute-music-mobile-status.mp4'),
  Video(id: 7, categories: 'News Video', img: 'assets/images/v7.jpg',video: 'assets/video/krishna-flute-music-mobile-status.mp4'),
  Video(id: 8, categories: 'Blogs Video', img: 'assets/images/v8.jpg',video: 'assets/video/krishna-flute-music-mobile-status.mp4'),
  Video(id: 9, categories: 'Science & Technology Video', img: 'assets/images/v9.jpg',video: 'assets/video/krishna-flute-music-mobile-status.mp4'),
  Video(id: 10, categories: 'Sports Video', img: 'assets/images/v10.png',video: 'assets/video/krishna-flute-music-mobile-status.mp4'),

];


String? videoLink;
String? categoriesName;