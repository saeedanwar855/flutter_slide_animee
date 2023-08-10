import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ParallaxCarousel extends StatefulWidget {
  @override
  State<ParallaxCarousel> createState() => _ParallaxCarouselState();
}

class _ParallaxCarouselState extends State<ParallaxCarousel> {
  final CarouselController _carouselController = CarouselController();
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
      appBar: AppBar(
        title: Text('Parallax Carousel'),
      ),
      body: CarouselSlider.builder(
        carouselController: _carouselController,
        itemCount: imageUrls.length,
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            // Trigger rebuild when the page changes
            setState(() {});
          },

          aspectRatio: 5,
          // Adjust the carousel settings as needed
          height: 300.0,
          viewportFraction: .8,
          enableInfiniteScroll: true,
        ),
        itemBuilder: (BuildContext context, int index, int realIndex) {
          final url = imageUrls[index];
          double offset = (index == realIndex) ? 0.0 : 100.0;

          return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Transform.translate(
              offset: Offset(offset, 0.0),
              child: CachedNetworkImage(
                imageUrl: url,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          );
        },
      ),
    );
  }
}
