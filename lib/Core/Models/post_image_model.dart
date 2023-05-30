class PostImage {
  String? imgUrl;
  String? userId;
  String? postImageId;
  String? imageDescription;
  String? postImageDate;

  PostImage({
    this.imgUrl,
    this.userId,
    this.postImageId,
    this.imageDescription,
    this.postImageDate,
  });

  PostImage.fromJson(json) {
    imgUrl = json['imgUrl'];
    userId = json['userId'];
    postImageId = json['postImageId'];
    imageDescription = json['imageDescription'];
    postImageDate = json['postImageDate'];
  }

  toJson() {
    return {
      'userId': userId,
      'postImageId': postImageId,
      'imgUrl': imgUrl,
      'imageDescription': imageDescription,
      'postImageDate': postImageDate,
    };
  }
}
