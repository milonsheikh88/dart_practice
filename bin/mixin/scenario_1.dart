
/**
 *  Suppose you want to implement a shareable function for the Post and Comment classes but not for the User class.
 *  To do that, you’ll have a number of options.
 */

/**
 * 1) Add the share() method to the Model class
 */

abstract class Model {
  void share(String content) {
    print('Share the $content');
  }
}

class User extends Model {
  @override
  void share(String content) {
    print('Share the $content');
  }
}

class Post extends Model {
  @override
  void share(String content) {
    print('Share the $content');
  }
}

class Comment extends Model {
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
 *  Also, all the future classes that inherit from the Model class will be able to access the share() method
 *  which may not what you expected
 *
 *  However, this option is not ideal.
 */