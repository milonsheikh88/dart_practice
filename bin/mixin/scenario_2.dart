/**
 * 2) Creating a new base class for shareable classes
 */

abstract class Model {}

abstract class ShareableModel extends Model {
  void share(String content) {
    print('Share the $content');
  }
}

class User extends Model {}

class Post extends ShareableModel {
  @override
  void share(String content) {
    print('Share the $content');
  }
}

class Comment extends ShareableModel {
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

/**  This solution works fine for this class hierarchy.
 *
 *   However, if a class that is in another class hierarchy wants to reuse the share() method, it’s not possible.
 */
