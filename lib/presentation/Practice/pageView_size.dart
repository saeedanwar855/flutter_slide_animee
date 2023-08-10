import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PageViewPractice extends StatefulWidget {
  const PageViewPractice({Key? key}) : super(key: key);

  @override
  State<PageViewPractice> createState() => _PageViewPracticeState();
}

class _PageViewPracticeState extends State<PageViewPractice> {
  PageController _pageController = PageController();
  double pageOffset = 0.0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.5);
    _pageController.addListener(() {
      setState(() => pageOffset = _pageController.page!);
      // _pageController.addListener(() => setState(() {}));
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<String> imageUrls = [
    'https://images.unsplash.com/photo-1682687219800-bba120d709c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
    'https://images.unsplash.com/photo-1682685794761-c8e7b2347702?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
    'https://plus.unsplash.com/premium_photo-1681819542543-2ae77de189eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
    'https://plus.unsplash.com/premium_photo-1689801528344-79ba41dc3f23?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1978&q=80',
    'https://images.unsplash.com/photo-1682685797898-6d7587974771?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: PageView.builder(
                padEnds: false,
                pageSnapping: true,
                controller: _pageController,
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  final url = imageUrls[index];

                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      // width: MediaQuery.of(context).size.width * 1.0,
                      imageUrl: url,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  );
                  // double offset = (index == realIndex) ? 0.0 : 100.0;
                  // return ClipRRect(
                  //   borderRadius: BorderRadius.circular(8.0),
                  //   child: Container(
                  //     margin: const EdgeInsets.symmetric(
                  //       vertical: 32,
                  //       horizontal: 16,
                  //     ),
                  //     child: Transform.scale(
                  //       scale: 1.0,
                  //
                  //       // offset: Offset(offset, 0.0),
                  //       child: CachedNetworkImage(
                  //         imageUrl: url,
                  //         fit: BoxFit.cover,
                  //         placeholder: (context, url) =>
                  //             const Center(child: CircularProgressIndicator()),
                  //         errorWidget: (context, url, error) =>
                  //             const Icon(Icons.error),
                  //       ),
                  //     ),
                  //   ),
                  // );
                }),
          )
        ],
      ),
    );
  }
}
