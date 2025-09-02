import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  PageController _pageController = PageController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.network(
              "https://img.freepik.com/premium-vector/pharmacy-logo-design-professional-modern-vector-design_579306-26324.jpg?w=360",
              width: 50,
            ),
            Text('Pharma', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              "Mate",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hint: Text("Search"),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    //borderSide: BorderSide(color: Colors.white, width: 2),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: PageView(
                      controller: _pageController,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://static.vecteezy.com/system/resources/thumbnails/002/133/575/small_2x/learning-illustrations-for-modern-genetics-chemistry-and-health-people-research-drugs-dna-medical-support-can-be-use-for-landing-page-template-ui-ux-web-mobile-app-poster-banner-website-flyer-ads-free-vector.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://img.freepik.com/premium-vector/online-pharmacy-application-concept-hand-person-buying-pills-online-with-smartphone_126283-2433.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://c8.alamy.com/comp/TXF639/healthcare-and-medicine-vector-landing-page-template-medical-instruments-equipment-flat-illustration-drugstore-cartoon-web-banner-layout-design-hospital-clinic-pharmacy-poster-concept-TXF639.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://static.vecteezy.com/system/resources/thumbnails/012/354/660/small_2x/landing-page-of-the-pharmacy-website-the-concept-of-medicine-and-health-illustration-in-a-flat-style-on-a-blue-background-vector.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 4,
                      effect: WormEffect(
                        dotHeight: 15,
                        dotWidth: 15,
                        type: WormType.thinUnderground,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text("Show All", style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),

              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.amber,
                                child: CircleAvatar(
                                  radius: 33,
                                  backgroundImage: NetworkImage(
                                    "https://pubimg.nodacdn.net/images/full/126a902d9aa2d29bba5c5bfed22983d401.png",
                                  ),
                                ),
                              ),
                              Text("Care", style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.amber,
                                child: CircleAvatar(
                                  radius: 33,
                                  backgroundImage: NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/commons/8/81/Simple-heart-symbol.png",
                                  ),
                                ),
                              ),
                              Text("Heart", style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.amber,
                                child: CircleAvatar(
                                  radius: 33,
                                  backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNXsYlcgrC__iLaU-UQ5fuKcuhih_FQK9_gg&s",
                                  ),
                                ),
                              ),
                              Text("Brain", style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.amber,
                                child: CircleAvatar(
                                  radius: 33,
                                  backgroundImage: NetworkImage(
                                    "https://static.vecteezy.com/system/resources/previews/015/306/922/non_2x/stomach-icon-outline-style-vector.jpg",
                                  ),
                                ),
                              ),
                              Text("Stomach", style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.amber,
                                child: CircleAvatar(
                                  radius: 33,
                                  backgroundImage: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/3699/3699480.png",
                                  ),
                                ),
                              ),
                              Text("Lung", style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text("Show All", style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
