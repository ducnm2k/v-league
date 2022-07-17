import 'package:flutter/material.dart';
import 'package:v_leauge/repositoty/implement/news.id.implement.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:v_leauge/screens/home_screen/compoment/appbar.dart';

import '../../network/api/model/news.id.model.dart';
import '../../network/api/model/pagination_model.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails({Key? key}) : super(key: key);

  @override
  State<NewsDetails> createState() => _NewDetailsState();
}

class _NewDetailsState extends State<NewsDetails> {
  //late Future<PaginationModel<NewsIDModel>> fetchNewDetails;

  // @override
  // void initState() {
  //   super.initState();
  //   fetchNewDetails =  NewsIDImplement().getNewsDetails();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
          return Scaffold(
            appBar: buildAppBar(),
            body: SingleChildScrollView(
              child: Html(data: """<h2><span style=\"color: rgb(117, 117, 117); font-size: 12px;\">HÀ NỘI</span><strong>Trong cuộc phỏng vấn với VnExpress, trợ lý HLV Lee Young-jin tiết lộ về lời đề nghị dẫn dắt U23 Việt Nam, sự thương quý dành cho Hà Đức Chinh và lòng trung thành với đàn anh Park Hang-seo.</strong></h2><p class=\"ql-align-center\"><img src=\"https://i1-thethao.vnecdn.net/2022/07/06/Lee-1-4130-1657081464.png?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=WyPX457JEsQhUVoG0aNcaA\">Trợ lý HLV Lee Young-jin chia sẻ trong cuộc giao lưu ở toà soạn VnExpress chiều 5/7. Ảnh:&nbsp;<em>Giang Huy</em></p><blockquote><strong style=\"color: rgb(153, 0, 0);\">\"Tôi muốn cầu thủ Việt Nam phát triển hơn, kiếm được nhiều tiền hơn để báo hiếu gia đình\".</strong></blockquote><p><em>- Đã bao lâu rồi ông chưa về Hàn Quốc thăm gia đình?</em></p><p>- Tôi mới về Hàn Quốc tổ chức đám cưới cho con trai trưởng hồi tháng 6. Ngay sau đó HLV Park Hang-seo về nước, nên tôi trở lại Việt Nam.</p><p><em>- Gia đình cảm thấy thế nào về cuộc sống của ông ở Việt Nam?</em></p><p>- Bên này tôi sống một mình, còn vợ và hai con trai vẫn ở Hàn Quốc. Ở quê nhà, tôi còn mẹ và chị gái. Họ không quá lo lắng về tôi. Nhưng là gia đình nên mọi người vẫn thường hỏi thăm về mấy chuyện kiểu như ăn - ngủ - nghỉ, sinh hoạt thế nào... vậy thôi.</p><p>Hồi trước Covid-19, vợ con từng sang Việt Nam thăm tôi. Chúng tôi cùng nhau đi Vịnh Hạ Long. Cả nhà đều thích ẩm thực Việt Nam. Vợ tôi ấn tượng nhất với phở, còn khoái khẩu của tôi là bún chả. Tôi cũng thích cà phê Việt Nam lắm, nhất là nâu đá. Hôm vừa rồi đi Nha Trang, tôi tranh thủ mang về một đống.</p><p><br></p>""",
              ),
            )

          );
        }
  }
