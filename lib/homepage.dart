import 'package:bank_ui/card.dart';
import 'package:bank_ui/transaction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 152, 223),
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome! ',
              style: GoogleFonts.raleway(fontSize: 18),
            ),
            Text('SIDDIQUE C A',
                style: GoogleFonts.raleway(fontWeight: FontWeight.bold))
          ],
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.qr_code_scanner_outlined),
          SizedBox(
            width: 7,
          ),
          Text('')
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 170,
              child: Stack(
                children: [
                  Container(
                    height: 80,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 243, 59, 45),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(60)),
                                  child: const CircleAvatar(
                                    radius: 55,
                                    backgroundImage: NetworkImage(
                                        'https://st.adda247.com/https://wpassets.adda247.com/wp-content/uploads/multisite/sites/5/2022/10/11085747/skysports-cristiano-ronaldo_5926790.jpg'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'SIDDIQUE C A',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'INR. 1,00,999.56',
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 16),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.remove_red_eye,
                                          size: 16,
                                          color: Colors.blue,
                                        )
                                      ],
                                    ),
                                    const Text(
                                      '2300000481089',
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/6862/6862356.png',
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'WOULD YOU LIKE TO?',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CardItem(
                    image:
                        "https://cdn-icons-png.flaticon.com/128/1144/1144760.png",
                    category: 'My Account'),
                CardItem(
                    image:
                        'https://cdn-icons-png.flaticon.com/128/5029/5029959.png',
                    category: "Load eSewa"),
                CardItem(
                    image:
                        'https://cdn-icons-png.flaticon.com/128/1019/1019709.png',
                    category: 'Payment'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CardItem(
                    image:
                        'https://cdn-icons-png.flaticon.com/128/5971/5971670.png',
                    category: 'Fund Transfer'),
                CardItem(
                    image:
                        'https://cdn-icons-png.flaticon.com/128/4108/4108841.png',
                    category: 'Schedule Payment'),
                CardItem(
                    image:
                        'https://cdn-icons-png.flaticon.com/128/6084/6084439.png',
                    category: 'Scan to Pay'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/6862/6862356.png',
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'LAST TRANSACTIONS',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Transactions(date: '11-10-2022', amount: '45000'),
            const Transactions(date: '9-10-2022', amount: '80000'),
            const Transactions(date: '1-10-2022', amount: '7000'),
          ],
        ),
      ),
    );
  }
}
