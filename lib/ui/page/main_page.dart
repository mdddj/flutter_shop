import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/ui/page/home_page.dart';
import 'package:flutter_shop/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

import 'guide/guide_page.dart';

///主页面 page
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{

  @override
  void initState() {
    super.initState();
    print("MainPage  initState");
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        // BoxConstraints(
        //     maxWidth: MediaQuery.of(context).size.width,
        //     maxHeight: MediaQuery.of(context).size.height),
        designSize: const Size(1080, 1920));
    return context.watch<UserViewModel>().isFirst ? const GuidePage() : const HomePage();
  }
}
