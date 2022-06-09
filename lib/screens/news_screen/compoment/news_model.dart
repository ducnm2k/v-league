class News {
  final String title;
  final String time;
  final String image;
  final String author;


  News({
    required this.author,
    required this.image,
    required this.time,
    required this.title,
  });
}

List<News> popularList = [
  News(author: "Thanh Nhã",
      image: "assets/images/DinhTrong.jpg",
      time: "Thứ Ba, 03/05/2022",
      title: "Đình Trọng trở lại tập luyện cùng CLB Bình Định")
];
List<News> hotList = [
News(
author: "Nick Chong",
time: "4 hours ago",
title:
"Beware of an Android Spyware Mandrake that went Undetected for Last 4 Years",
image:
"https://i2.wp.com/1.bp.blogspot.com/-eJLbaED73Q0/XsiYfSJ-paI/AAAAAAAAJA4/lDvgPb3NfX8QhkR4Qp79rfua5LXxW4q9QCLcBGAsYHQ/s1600/mandrake%2Bmalware.png?ssl=1",)

];
