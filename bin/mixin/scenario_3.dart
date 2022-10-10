/**
 * 3) Creating a new interface
 */

abstract class Model {}

abstract class Shareable {
  void share(String $content);
}

class User extends Model {}

class Post extends Model implements Shareable {
  @override
  void share(String content) {
    print('Share the $content');
  }
}

class Comment extends Model implements Shareable {
  @override
  void share(String content) {
    print('Share the $content');
  }
}

void main() {
  var post = Post();
  post.share('The first post.');

  var comment = Comment();
  comment.share('My first comment.');
}

/**
 *  This solution works fine
 *
 *  However, this option causes duplicate code in the Post and Comment class.
*/
