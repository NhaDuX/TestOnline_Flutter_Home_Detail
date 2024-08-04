import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                padding: const EdgeInsets.only(
                    bottom:
                        120), // To avoid overlapping content with bottom bar
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://s3-alpha-sig.figma.com/img/c0b5/b84e/e1d4028e9f2ad18d455cc20f8f30bcce?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JzIUQzFFvR08qwpKGbXfD2-UcOnbMcU30kPGUDDI2NB-oMOPBYmRp6vVWn9VvYfW6PKNkIYh9Z9YxnT9aBUkw3MFvu-nbjG7lwbxL0PcplbogsCUjV1VUQ-qed4KvhRLrD~9KPFCiL0wYGryYkRXYsNYnet6VDyr9tw5mdxtlbz6TP-tydqzi1B09kVHuY~bGUiHZZ1Y5GvpPAMevDHRYOShsq5K2aDS0bkQ1Uz~cIwfnUpxW4V5O2fScWfc2h2lQazOcBK-MRb-StEhISeq1-kJZDI4KjJD4Om-l8EPpCmNk0kg~MYKjuguaVENKdKHg5CWGcy9Ehwgwhy3RwN81g__',
                          height: 304,
                          width: 370,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 16,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(0.24),
                                  Colors.black.withOpacity(0.24)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(
                                'assets/vector/arrow.svg',
                                width: 8,
                                height: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 16,
                        top: 16,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.24),
                                Colors.black.withOpacity(0.24)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SvgPicture.asset(
                              'assets/vector/bookmark.svg',
                              width: 12,
                              height: 15,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        top: 180,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.transparent, Colors.black54],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(20),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Dreamsville House',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'JL Sultan Iskandar Muda, Jakarta Selatan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white.withOpacity(0.2),
                                          Colors.white.withOpacity(0.2)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(0.0),
                                      child: ImageIcon(
                                        AssetImage('assets/icons/bed.png'),
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    '6 Bedroom',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.white.withOpacity(0.2),
                                          Colors.white.withOpacity(0.2)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(0.0),
                                      child: ImageIcon(
                                        AssetImage(
                                            'assets/icons/bath_icon.png'),
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    '4 Bathroom',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: const TextSpan(
                      text:
                          'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... ',
                      style: TextStyle(color: Color(0xff858585), fontSize: 12),
                      children: [
                        TextSpan(
                          text: 'Show More',
                          style:
                              TextStyle(color: Color(0xff43ABE6), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/ebd1/f255/26652d4ef5745a41a8c6cceaaa96ffac?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MEkuTEjDiJIkIf7NN17fL2dVhrc5ukBzJdUua5KsybfcyA3AI6izalZ~yV6cLpcDkOI77fASQ5me2fKQjnrMpmBbPINznu-Gr2CjGjmCXwCGSSJNZjl4XRIDCHzIsi0mtkpjBU0G8YWS1QSpfMmKx54FO9rVcSebgpaN3l0EWWN9ufQ6awxyWCEGNryuI9EI6UMmvbJQBIEeK-Ya2yLPmq5XOq5Z7QEw0HxTVv29m7tvufMwAIa49zUYGbECFYspZ~rcGOYrEIoSj5pyqeI6OH9CWrYDaWQiyTyGIH6ZWI0T8uSg1TmrKmR417BJi0-LauQU~zx4AKMKtpQ3shJbpQ__',
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Garry Allen',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Owner',
                              style: TextStyle(color: Color(0xff858585))),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xff0A8ED9).withOpacity(0.5),
                              const Color(0xff0A8ED9).withOpacity(0.5)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'assets/vector/phone.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xff0A8ED9).withOpacity(0.5),
                              const Color(0xff0A8ED9).withOpacity(0.5)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'assets/vector/mess.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Gallery',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/0682/1532/d5809aa9ac94ac1f23aa7f090ac62c4b?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YSP88LBdwqX1sfJYo9z1lUy~lhJ~ex6Gi0753EJJXAFOMB-2sqoWS4V4Y~XaOurHldnWeev1yt40sReSUHJbcjSSAcM4yWl6ejKFz9MoO7IU9vSWCiPIXZCROXlvgVNCT~9MHwoFeJYgAmIK75~VMX6riO9s8xfeKwIpV9I~iqHZYyDp6SANRjm4T33aKOqP6x~~6sG8mg~TlknAfSCBzyG52OWJQbwt3hW6tB45sy5H18D1MA08Fo1~8aYLTP8MYhN7SINiKiL1IfO6cMNvCc-LsJ55vPg~Z38ApUzA0TMWSc0Hor2mImN-4X3wxPyVuy8ZpJPJQedzRDeA1ncW9A__',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/b63e/f9e2/335b2715fb1ccc3611772d4967a699b3?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YgY3HGUr62a8KWqKKQA53IURzA9AS79kQPf4sclZIfCAH~ebvdGANlnePyeYfW2rFbdvorlno20A2VR1AH-LntBGqFJfgdDBnpy5ppWvaz8kEB-pxP0XjZDfUycpA23Hw2XHjMzmk9qoZZ8br46Hw~D8k1riiD2AYz89SWCbk0tW2xCNLw3PvOOi9xnITpLXXLcTX9X17Cw0-ywZIiOQeJLw7qgoo~IYD8CHcm0pWwrbRtCi9VvqzLBimg-gk-06Dh9lRM9jU-gpGecj8jBPy3oQ3TRnk8KBJLk~qceInAvlH~BYrxhtM9c6x1kRDE5jnPSbhaURGJ1EFHmsqqhIig__',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/51ba/ef7e/36b38a5a5033616306a80c632fd1cc57?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RCMIs-VoJxMD4cm0GuL-7VipPlkkfMOc9Sc66JA~vgoCM89Etid-jH~36oyTOND1SFSODCaSpNLks8mu0iG54rlZ-7ffpHybzIe7k0Mnyo3wKXvod04iXxdNOxPq4HsgORuckhADcCqL1-jWwuzVchGO6fI-ho20Vi3y1lpRd9sMVRYfWI3yLGFQlr8pakWLu-K~0vgGaMnRmlN4B~TWxSGreY5-IKPiTCrHW~t0eT05ep5y3Qxgqb-Ad2N-PTe7AO7Yljq~K4I2kBNL3MCYPxHqpEYqUjptUcCOOEPkIgXvvRcOqQpLsUTKd5VpnZTHX5n2OsMmdPl8x3fqAI2mCA__',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Stack(
                              children: [
                                Image.network(
                                  'https://s3-alpha-sig.figma.com/img/5040/914e/838ea2fcef1e5d03a06fbba226a82c4a?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SgcvnT5ehD5Y9qLZiW73hRLgktsO5UHIuyWn-eU6Wmorv-TNvM0DBAYcvmTbBA-d7NGgA0ny3-htuS-n5tUsBh-FE81Jvv1rsr60VWBlj1WnBiMcpBtVf~HEVRqnWX48AO1RA00lPZonD4ll1HoerYEQGdzwCWRU~~3j8uCQE3uJKX5hl-r1hNTuoC7VVTdvUh1rztK52IvNB6zsJNrM5FOd4JI8qUsr4fQhLvrNQpbN7cyAlFW5PtVmwf4Y~Zfk4xa87UmTCGSbj9Xu10PaK7P7K~8Dpfy3wjyP3noQDcwvyVmOdO370pencnQXatKRnPrZKB5aWXHTSPCtIykZ6Q__',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [Colors.black45, Colors.black45],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '+5',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://cdn.discordapp.com/attachments/728486003051987035/1269497391908917248/image.png?ex=66b04714&is=66aef594&hm=b1027da13368503afcd8fc05de7406a16ddd4a8234279d4e453dfb461ab38b35&',
                      width: 375,
                      height: 161,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xffFFFFFF).withOpacity(0.62),
                      const Color(0xffFFFFFF).withOpacity(0.28),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff858585)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Rp. 2.500.000.000 / Year',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Card(
                      shadowColor: const Color(0xffA0DAFB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 122,
                        height: 43,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xffA0DAFB),
                              Color(0xff0A8ED9),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          color: const Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "Rent Now",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
