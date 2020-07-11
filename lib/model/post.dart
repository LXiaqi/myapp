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
    title: '一剑破甲两千六',
    author: '总管',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594483526238&di=955fd5976bf60f83145b04c1b160ce15&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201808%2F14%2F20180814104129_fcmmi.jpg',
  ),
  Post(
    title: '白衣返北凉',
    author: '总管',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594483614948&di=31ce24898976b9e9b7015526e4d7c51b&imgtype=0&src=http%3A%2F%2Fpic.rmb.bdstatic.com%2F5447908534e557539e29feb4a5d27270.jpeg',
  ),
  Post(
    title: '骑鹤下江南',
    author: '总管',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594483526239&di=37f32218459bee58dcfe073ff4e85c00&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181123%2Ff642ead6b0e147c8929b3bdb5ab35cf7.jpeg',
  ),
  Post(
    title: '柿子战拓跋',
    author: '总管',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594483526240&di=95a14cf7b2658e3f35575da0af766a6a&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181104%2F955838380269460cacd8b6e587f8116e.jpeg',
  ),
  Post(
    title: '双刀舞风雪',
    author: '总管',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594483205639&di=05ff0092ee5476f354f624ae748645e4&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201808%2F14%2F20180814103950_ptsbo.jpg',
  ),
  Post(
    title: '姓陈名芝豹',
    author: '总管',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594483180135&di=461d4d82225b262f6ed21530133eea63&imgtype=0&src=http%3A%2F%2Fpic.rmb.bdstatic.com%2F86a9b207d58979961d5686cbea1733e8.jpeg',
  ),
  Post(
    title: '剑气满天下',
    author: '总管',
    imageUrl:
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594483135476&di=dce4f0ba533bebe5db78fc40853b8dce&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FCci6eAsBVlT%3DPcD8%3Dw35Vab937KINLZXhODu9NRLnQ1sR1542674216700compressflag.jpg',
  ),
];
