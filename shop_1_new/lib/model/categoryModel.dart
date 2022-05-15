
class Category{
  var id;
  var name;
  var avatar;


  Category({required this.id,required this.name,required this.avatar});

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'avatar': this.avatar,

    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      name: map['name'] as String,
      id: map['id'] as int,
      avatar: map['original_language'] as String,

    );
  }
}