class Story {
  final String userImage, storyImage, userName;

  Story({
    required this.userImage,
    required this.userName,
    required this.storyImage,
  });
}

List<Story> stories = [
  Story(userImage: 'images/user1.jpg', userName: 'Abigail', storyImage: 'images/story1.jpg'),
  Story(userImage: 'images/user2.jpg', userName: 'Kristy', storyImage: 'images/story1.jpg'),
  Story(userImage: 'images/user3.webp', userName: 'ivan', storyImage: 'images/story1.webp'),
];
