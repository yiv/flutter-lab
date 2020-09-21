

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MyImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Image.asset("assets/graphics/loading.gif"),
      ),
    );
  }
}



class MyImageFadeIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Table(
          children: [
            TableRow(
                children: [
                  FadeInImage.assetNetwork(
                    placeholder: 'assets/graphics/loading.gif',
                    // image: 'graphics/loading.gif',
                    image: 'https://cn.bing.com/th?id=OHR.IcelandicRettir_ZH-CN7738923773_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp',
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}


class MyImageNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("image"),
        ),
        body: Column(
          children: [
            Image.network('https://cn.bing.com/th?id=OHR.IcelandicRettir_ZH-CN7738923773_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp'),
            Image.network('https://cn.bing.com/th?id=OHR.IcelandicRettir_ZH-CN7738923773_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp'),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600422470778&di=4e0ded7bc84e294395d40e0037ac2a31&imgtype=0&src=http%3A%2F%2Fimg.ui.cn%2Fdata%2Ffile%2F9%2F3%2F4%2F1918439.gif%3FimageMogr2%2Fauto-orient%2Fstrip'),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600422470778&di=4e0ded7bc84e294395d40e0037ac2a31&imgtype=0&src=http%3A%2F%2Fimg.ui.cn%2Fdata%2Ffile%2F9%2F3%2F4%2F1918439.gif%3FimageMogr2%2Fauto-orient%2Fstrip'),
          ],
        ),
      ),
    );
  }
}


class MyImageNetworkInGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("image"),
        ),
        body: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisSpacing:2,
          mainAxisSpacing: 2,
          crossAxisCount: 1,
          children: [
            Image.network('https://cn.bing.com/th?id=OHR.IcelandicRettir_ZH-CN7738923773_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp'),
            Image.network('https://cn.bing.com/th?id=OHR.IcelandicRettir_ZH-CN7738923773_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp'),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600422470778&di=4e0ded7bc84e294395d40e0037ac2a31&imgtype=0&src=http%3A%2F%2Fimg.ui.cn%2Fdata%2Ffile%2F9%2F3%2F4%2F1918439.gif%3FimageMogr2%2Fauto-orient%2Fstrip'),
            Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600422470778&di=4e0ded7bc84e294395d40e0037ac2a31&imgtype=0&src=http%3A%2F%2Fimg.ui.cn%2Fdata%2Ffile%2F9%2F3%2F4%2F1918439.gif%3FimageMogr2%2Fauto-orient%2Fstrip'),
          ],
        ),
      ),
    );
  }
}
