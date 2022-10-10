abstract class Model {}

mixin Shareable {
  void share(String content) {
    print('Share the $content');
  }
}

class User extends Model {}

class Post extends Model with Shareable {}

class Comment extends Model with Shareable {}

class Video with Shareable {}

void main() {
  var post = Post();
  post.share('The first post.');

  var comment = Comment();
  comment.share('My first comment.');

  var video = Video();
  video.share('Share the video');
}