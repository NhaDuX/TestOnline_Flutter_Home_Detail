import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testonline/Page/Detail/detail.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _selectedCategoryIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onCategoryTapped(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            _buildDrawerItem(Icons.home, 'Home', 0),
            _buildDrawerItem(Icons.person, 'Profile', 1),
            _buildDrawerItem(Icons.near_me, 'Nearby', 2),
            _buildDrawerItem(Icons.bookmark, 'Bookmark', 3),
            _buildDrawerItem(Icons.notifications, 'Notification', 4),
            _buildDrawerItem(Icons.message, 'Message', 5),
            _buildDrawerItem(Icons.settings, 'Setting', 6),
            _buildDrawerItem(Icons.help, 'Help', 7),
            _buildDrawerItem(Icons.logout, 'Logout', 8),
          ],
        ),
      ),
      body: _selectedIndex == 0
          ? HomeContent(
              selectedCategoryIndex: _selectedCategoryIndex,
              onCategoryTapped: _onCategoryTapped,
            )
          : Center(child: Text("Selected Index: $_selectedIndex")),
    );
  }

  ListTile _buildDrawerItem(IconData icon, String title, int index) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        _onItemTapped(index);
      },
    );
  }
}

class HomeContent extends StatelessWidget {
  final int selectedCategoryIndex;
  final Function(int) onCategoryTapped;

  HomeContent({
    required this.selectedCategoryIndex,
    required this.onCategoryTapped,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                      Row(
                        children: [
                          Text(
                            'Jakarta',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/vector/noti.svg',
                        width: 24,
                        height: 24,
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: const Color(0xffF7F7F7),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          prefixIcon: const Icon(Icons.search),
                          labelText: 'Search address, or near you',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 48,
                    height: 45,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffA0DAFB),
                          Color(0xff0A8ED9),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/vector/filter.svg',
                        width: 16,
                        height: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 20),
            child: Row(
              children: [
                CategoryChip(
                  label: 'House',
                  selected: selectedCategoryIndex == 0,
                  onTap: () => onCategoryTapped(0),
                ),
                const SizedBox(width: 12),
                CategoryChip(
                  label: 'Apartment',
                  selected: selectedCategoryIndex == 1,
                  onTap: () => onCategoryTapped(1),
                ),
                const SizedBox(width: 12),
                CategoryChip(
                  label: 'Hotel',
                  selected: selectedCategoryIndex == 2,
                  onTap: () => onCategoryTapped(2),
                ),
                const SizedBox(width: 12),
                CategoryChip(
                  label: 'Villa',
                  selected: selectedCategoryIndex == 3,
                  onTap: () => onCategoryTapped(3),
                ),
                const SizedBox(width: 12),
                CategoryChip(
                  label: 'Cottage',
                  selected: selectedCategoryIndex == 4,
                  onTap: () => onCategoryTapped(4),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Near from you',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See more',
                    style: TextStyle(fontSize: 12, color: Color(0xff858585)),
                  )),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: 272,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                PropertyCard(
                  imageUrl:
                      'https://s3-alpha-sig.figma.com/img/c0b5/b84e/e1d4028e9f2ad18d455cc20f8f30bcce?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JzIUQzFFvR08qwpKGbXfD2-UcOnbMcU30kPGUDDI2NB-oMOPBYmRp6vVWn9VvYfW6PKNkIYh9Z9YxnT9aBUkw3MFvu-nbjG7lwbxL0PcplbogsCUjV1VUQ-qed4KvhRLrD~9KPFCiL0wYGryYkRXYsNYnet6VDyr9tw5mdxtlbz6TP-tydqzi1B09kVHuY~bGUiHZZ1Y5GvpPAMevDHRYOShsq5K2aDS0bkQ1Uz~cIwfnUpxW4V5O2fScWfc2h2lQazOcBK-MRb-StEhISeq1-kJZDI4KjJD4Om-l8EPpCmNk0kg~MYKjuguaVENKdKHg5CWGcy9Ehwgwhy3RwN81g__',
                  title: 'Dreamsville House',
                  address: 'JL Sultan Iskandar Muda',
                  distance: '1.8 km',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  },
                ),
                PropertyCard(
                  imageUrl:
                      'https://s3-alpha-sig.figma.com/img/fc2a/22eb/77b12515a6310130b669ed3062ff9bd9?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UnZyt-enOGILMJJAcHek0pWMKYsUk1N-31SIZr5~TZO7MaGLTtyfWdlZig9eOgzv1Xgsv2UYVztUrcBQQXPNcmeF03BxcnNoEDauLY~dxw6FPbZ8dAiJyM9nHbETgxyq88rTeLa3ia9VdwXA8QwGCtNZY2Zcm7ayZK7Ug~~EmInSHD6doqS85k3vmoQW~M-QJaSPsoTEi3cTCeqLt3zPFfweagMT3YHOSeqgRClSIQnAz5cCj4rUtl6ATpUwSsvDWFkSLVPrT0Nimt9mntiAw8fXtXF~R8aAwqKNuf8b3z2uvrIR-FbKD5UeG22aRsXLTI92VuldCPG0jk3ynA1aTg__',
                  title: 'Ascot House',
                  address: 'JL Cilandak Tengah',
                  distance: '3.0 km',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Best for you',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See more',
                  style: TextStyle(fontSize: 12, color: Color(0xff858585)),
                ),
              ),
            ],
          ),
        ),
        PropertyCardVertical(
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/3739/b85c/79b000c10d47f525e33f0be4722db6d3?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=d26tulPR7KYs5OCK54sea80k5lllIo0VBpIsAonuffbBTfwP4z2RSIRq3d5hjjNSnm54cq4epIZcJE8XcsC4kEtRM03fa7fPcwNaGJEsWMIysX7bdHuif5Ui59zvMHVMiKhBdy-GRzcS3vNExxhi7TA9W8RBDCYxtLXbmaXdWakef99bi0W2xz0iW1ehdJzUMjj8Z32nuv1jxKd1WuAxt2CDlkZyqePJJhXRngbKxMvRfTM1ePHq5m4pbjN1i1JpEr3zbINaivFtZBaOgYiP72ceqstazjFZRr1MbONhAL6ZtrXwicpnaz3OELkSqd12DQHwbn1v0bbLBy7bUpQb9Q__',
          title: 'Orchard House',
          price: 'Rp. 2.500.000.000 / Year',
          bedrooms: 6,
          bathrooms: 4,
        ),
        PropertyCardVertical(
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/15c6/6ec2/f6bffc6b811c2d8b71352fb76df17b3a?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=I8C7-P1llWr1Nj7JDTX0zbwSKHNKHJLZsTiVxs1VJ-LIUZl6uXd6TxUqiQNx-83wM5LEicOaGvmApGTEvJD9qTTK93ORLSO1oizjOazChUejrj24-vZKOZWlnHz4lPQ8DGkE6CJ2a52odDQg7AlTjLNeDqrvijEREq1NSSZAe3IUSoGlYr-cOdIdvgWvoM-dnikZ8cQskLIMa6kdWm6Hwi6vLZWqZSae2UY2D5vBoZ4mm5yby27IIav9QOmM4jfdWy3ZKvSoGTijneVrIYGSTcLyWMe6FPU9XHTgwH~frqr4QAdgOEFVEm60uAFtSQlRq-4S0Sd5dLzFMShw9ecZAg__',
          title: 'The Hollies House',
          price: 'Rp. 2.000.000.000 / Year',
          bedrooms: 5,
          bathrooms: 2,
        ),
      ],
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  CategoryChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: selected ? 3 : 0,
        shadowColor: selected ? const Color(0xffA0DAFB) : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 34,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            gradient: selected
                ? const LinearGradient(
                    colors: [
                      Color(0xffA0DAFB),
                      Color(0xff0A8ED9),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                : null,
            color: selected ? null : const Color(0xffF7F7F7),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: selected ? Colors.white : const Color(0xff858585),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PropertyCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String address;
  final String distance;
  final VoidCallback onTap;

  PropertyCard({
    required this.imageUrl,
    required this.title,
    required this.address,
    required this.distance,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 222,
        margin: const EdgeInsets.only(right: 24),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl,
                width: 222,
                height: 272,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              top: 15,
              right: 15,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 102, 102, 102).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 4),
                    SvgPicture.asset(
                      'assets/vector/location.svg',
                      width: 10,
                      height: 12,
                    ),
                    const SizedBox(width: 6),
                    Text(distance, style: const TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 60,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Color.fromARGB(165, 0, 0, 0),
                      Color.fromARGB(165, 0, 0, 0),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 20,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    address,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PropertyCardVertical extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final int bedrooms;
  final int bathrooms;

  PropertyCardVertical({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(imageUrl,
                width: 100, height: 100, fit: BoxFit.cover),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 12),
                Text(price, style: const TextStyle(color: Colors.blue)),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const ImageIcon(
                      AssetImage('assets/icons/bed.png'),
                      size: 30,
                      color: Color(0xff858585),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$bedrooms Bedroom',
                      style: const TextStyle(
                          color: Color(0xff858585), fontSize: 12),
                    ),
                    const SizedBox(width: 8),
                    const ImageIcon(AssetImage('assets/icons/bath_icon.png'),
                        size: 30, color: Color(0xff858585)),
                    const SizedBox(width: 4),
                    Text(
                      '$bathrooms Bathroom',
                      style: const TextStyle(
                          color: Color(0xff858585), fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
