import 'package:flutter/material.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  final List _steps = [
    {
      'title': 'Didihkan air dalam panci (sekitar 400-500ml).',
      'check': Icons.check_box_outlined,
    },
    {
      'title':
          'Masukkan mi ke dalam air mendidih, dan masak selama 3-4 menit hingga mi matang.',
      'check': Icons.check_box_outlined,
    },
    {
      'title':
          'Sambil menunggu mi matang, siapkan bumbu di piring atau mangkuk.',
      'check': Icons.check_box_outlined,
    },
    {
      'title':
          'Setelah mi matang, tiriskan air (untuk varian goreng) atau sisakan sedikit air (untuk varian kuah).',
      'check': Icons.check_box_outlined,
    },
    {
      'title':
          'Campurkan mi dengan bumbu yang sudah disiapkan, aduk hingga merata.',
      'check': Icons.check_box_outlined,
    },
    {
      'Sajikan Indomie dan nikmati!'
          'check': Icons.check_box_outlined,
    },
  ];

  var _favoriteIcon = Icons.favorite_border_outlined;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2718209803.
                Container(
                  width: double.infinity,
                  height: screen.width * 1.3,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 109, 53),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25)),
                            child: Image.asset(
                              'assets/indomie.jpeg',
                              width: double.infinity,
                              height: 300,
                              scale: 2,
                              fit: BoxFit.fitWidth,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Indomie',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Indomie adalah mi instan populer yang dikenal dengan rasa lezat dan bumbu khas. Mudah disajikan dan menjadi favorit di berbagai negara sebagai hidangan cepat dan nikmat.',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        )
                      ]),
                ),
                Positioned(
                  top: 272,
                  left: 28,
                  child: SizedBox(
                    width: 360,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('4.7/5'),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18)),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (_favoriteIcon == Icons.favorite) {
                                  _favoriteIcon =
                                      Icons.favorite_border_outlined;
                                } else {
                                  _favoriteIcon = Icons.favorite;
                                }
                              });
                            },
                            icon: Icon(
                              _favoriteIcon,
                              color: Colors.pink,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 510,
                  left: 81,
                  child: Container(
                    width: 250,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18)),
                    child: const Text(
                      'TO-DO',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _steps.length,
                itemBuilder: (context, index) => Container(
                  height: 100,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)),
                  child: ListTile(
                    leading: Text(
                      '${index + 1}',
                      style: const TextStyle(fontSize: 18),
                    ),
                    title: Text(
                      _steps[index][''],
                      style: const TextStyle(fontSize: 12),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.check_box,
                          color: Color.fromARGB(255, 244, 203, 156),
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
