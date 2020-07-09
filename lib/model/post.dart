class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });
  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: '制服诱惑',
    author: '苍井空',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594299121172&di=6e72a413805baf00c281e2146cc31364&imgtype=0&src=http%3A%2F%2Fimg.improve-yourmemory.com%2Fpic%2F21a546fe0dbcc6cec5404b4a4bb81545-0.jpg',
  ),
  Post(
    title: '异域风情',
    author: '波多野结衣',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594299121171&di=f48852a92f892481f462f7b7c00649b1&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2F0%2F02%2Fc573763901.jpg',
  ),
  Post(
    title: '高冷御姐',
    author: '雷峰',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594298263460&di=83cc0f3c5d221014986e68873143cc77&imgtype=0&src=http%3A%2F%2Fpic.feizl.com%2Fupload%2Fallimg%2F170615%2F133S56264-0.jpg',
  ),
  Post(
    title: '清纯学妹',
    author: '佚名',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594299121166&di=0a549e8dd72035870a16af36adb18e68&imgtype=0&src=http%3A%2F%2Fpic.feizl.com%2Fupload%2Fallimg%2F170614%2F1923054Y4-0.jpg',
  ),
  Post(
    title: '日韩风情',
    author: '佚名',
    imageUrl:
        'https://img.tupianzj.com/uploads/allimg/200423/30-200423113T7.jpg',
  ),
  Post(
    title: '中式古典',
    author: '佚名',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594304661927&di=e578964f7eff294088622f795becd29d&imgtype=0&src=http%3A%2F%2Fimg.ewebweb.com%2Fuploads%2F20190926%2F11%2F1569468220-XCDnNhOWoF.jpg',
  ),
  Post(
    title: '欧美狂野',
    author: '佚名',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594304767994&di=7e990d082176e2663199a5d580f6ee61&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fd%2Ff9%2Fdf131428286.jpg',
  ),
];
