import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red[400],
                  foregroundColor: Colors.white,
                  child: Icon(Icons.location_on_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text('Home'),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      Text('Hanoi, Vietnam')
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                CircleAvatar(),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 15,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: SizedBox(
                    height: 200,
                    child: Swiper(
                      outer: false,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.red[400]!,
                                Colors.red[300]!,
                                Colors.red[200]!,
                                Colors.red[100]!,
                              ]),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 8,
                                  top: 16,
                                  bottom: 16,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Up To',
                                        style: GoogleFonts.metrophobic(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        '70% OFF',
                                        style: GoogleFonts.metrophobic(
                                          color: Colors.white,
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'with free delivery',
                                        style: GoogleFonts.metrophobic(
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                      ),
                                      SizedBox(
                                        child: Divider(
                                          color: Colors.white,
                                        ),
                                        width: 64,
                                      ),
                                      Text(
                                        'no COOKing',
                                        style: GoogleFonts.molle(
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'July',
                                            style: GoogleFonts.molle(
                                              color: Colors.white,
                                              fontSize: 24,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            foregroundColor: Colors.black,
                                            radius: 12,
                                            child: Icon(
                                              Icons.arrow_forward,
                                              size: 14,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  child:
                                      Image.asset('assets/fd_main_img_01.png'),
                                  right: 8,
                                  bottom: 0,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                          activeColor: Colors.grey,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text(
                    'Eat what makes you happy',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: SizedBox(
                    height: 84,
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.red[100]!,
                                backgroundImage: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032__340.jpg"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Healthy',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Text(
                        '127 restaurants around you',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.import_export_outlined,
                        size: 18,
                      ),
                      Text(
                        'Popular',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Container(
                    height: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2016/03/09/12/07/meal-1246287_960_720.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          flex: 6,
                        ),
                        Divider(),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Sultan Kacchi Biryani',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      child: Row(
                                        children: [
                                          Text(
                                            '4.3',
                                            style: GoogleFonts.metrophobic(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 12,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Biryani, Desserts, Kacchi',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      'Price Range \$12.00 - \$14.00',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Wrap(
                                  children: [
                                    Text(
                                        'Zomato funds environmental projects to offset delivery carbon footprint'),

                                  ],
                                )
                              ],
                            ),
                          ),
                          flex: 4,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
