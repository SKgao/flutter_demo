class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: '千与千寻',
    author: '宫崎骏',
    imageUrl: 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2557517741.jpg'
  ),
  Post(
    title: '疯狂动物城',
    author: '拜伦·霍华德',
    imageUrl: 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2315672647.jpg'
  ),
  Post(
    title: '你的名字',
    author: '新海诚',
    imageUrl: 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2395733377.jpg'
  ),
  Post(
    title: '飞屋环游记',
    author: '彼特·道格特',
    imageUrl: 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p485887754.jpg'
  ),
  Post(
    title: '寻梦环游记',
    author: '李·昂克里奇',
    imageUrl: 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2503997609.jpg'
  ),
  Post(
    title: '白蛇：缘起',
    author: '黄家康',
    imageUrl: 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544313786.jpg'
  ),
  Post(
    title: '大鱼海棠',
    author: '梁旋',
    imageUrl: 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2361744534.jpg'
  ),
  Post(
    title: '天空之城',
    author: '宫崎骏',
    imageUrl: 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1446261379.jpg'
  )
];