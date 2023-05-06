class News {
  final String id;
  final String title;
  final String content;
  final String imagePath;

  News({
    required this.id,
    required this.title,
    required this.content,
    required this.imagePath,
  });
}

final List<News> newsList = [
  News(
    id: '1',
    title: 'Lorem ipsum dolor sit amet',
    content:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel tincidunt purus, non bibendum tellus. Integer tincidunt nulla non justo sodales bibendum. In eget dolor nec odio euismod tempor. In interdum vitae neque a tristique. Suspendisse laoreet tincidunt velit, sed euismod dolor luctus sit amet. Sed eget risus eros. ',
    imagePath:
        'https://images.unsplash.com/photo-1632469726327-fb5420d05f8e?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1NHx8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  ),
  News(
    id: '2',
    title: 'Sed ac interdum purus',
    content:
        'Sed ac interdum purus, quis efficitur odio. Aliquam tincidunt pretium dolor, auctor tincidunt turpis sagittis vitae. Integer facilisis velit id sapien tincidunt ultricies. Nam vel nisi dictum, interdum ex a, euismod libero. Aliquam at ultricies magna. Sed luctus metus sed purus finibus malesuada. Donec venenatis vehicula ante, ac luctus enim luctus sit amet.',
    imagePath:
        'https://images.unsplash.com/photo-1631022659774-a0a308a69b7c?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2MXx8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  ),
];
