import 'dart:io'; // untuk File
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // Import image_picker
import 'package:provider/provider.dart'; // Import provider

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileImage(), // Inisialisasi Provider
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

// Model untuk menyimpan status gambar profil
class ProfileImage with ChangeNotifier {
  File? _image;

  File? get image => _image;

  void updateImage(File? image) {
    _image = image;
    notifyListeners(); // Beritahu pendengar bahwa ada perubahan
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreenBody(),
    Placeholder(),
    Placeholder(),
    ProfileScreen(), // Halaman profil
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle("Recommended", "Explore"),
          SizedBox(height: 10),
          _buildHorizontalList(),
          SizedBox(height: 30),
          _buildSectionTitle("Popular Activities", "See All"),
          SizedBox(height: 10),
          _buildPopularActivities(),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title, String actionText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          actionText,
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }

  Widget _buildHorizontalList() {
    final recommendations = [
      {
        "image": "assets/img/Ratenggaro-village-in-Sumba-Explore-Sumba-island-villages-in-Indonesia-10.jpg",
        "title": "Sumba Island",
        "location": "East Nusa Tenggara",
        "rating": "4.9"
      },
      {
        "image": "assets/img/bali.png",
        "title": "Bali Island",
        "location": "Bali",
        "rating": "4.8"
      },
      {
        "image": "assets/img/lombok.jpg",
        "title": "Lombok Island",
        "location": "West Nusa Tenggara",
        "rating": "4.7"
      },
    ];

    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommendations.length,
        itemBuilder: (context, index) {
          return _buildRecommendationCard(recommendations[index]);
        },
      ),
    );
  }

  Widget _buildRecommendationCard(Map<String, String> recommendation) {
    return Container(
      width: 160,
      margin: EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                recommendation["image"]!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            recommendation["title"]!,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.location_on, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Text(
                recommendation["location"]!,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.star, size: 16, color: Colors.yellow),
              SizedBox(width: 4),
              Text(recommendation["rating"]!),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPopularActivities() {
    final popularActivities = [
      {
        "image": "assets/img/91.png",
        "title": "Raja Ampat",
        "location": "West Papua",
        "rating": "5.0",
        "price": "\$250.00"
      },
      {
        "image": "assets/img/Lombok-to-Komodo-Island-4-Days-3-Night-Amazing-Trip.png",
        "title": "Komodo Island",
        "location": "East Nusa Tenggara",
        "rating": "4.9",
        "price": "\$300.00"
      },
      {
        "image": "assets/img/gili-islands-digital-nomads.png",
        "title": "Gili Islands",
        "location": "Lombok",
        "rating": "4.8",
        "price": "\$180.00"
      },
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: popularActivities.length,
      itemBuilder: (context, index) {
        return _buildPopularActivityCard(popularActivities[index]);
      },
    );
  }

  Widget _buildPopularActivityCard(Map<String, String> activity) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                activity["image"]!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activity["title"]!,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.star, size: 16, color: Colors.yellow),
                    SizedBox(width: 4),
                    Text(activity["rating"]!),
                    SizedBox(width: 8),
                    Text(
                      activity["price"]!,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  "A resort is a place used for vacation, relaxation, or as a day....",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              // Logic for favorite action
            },
            child: Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

// ProfileScreen with updated profile image logic
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profileImageProvider = Provider.of<ProfileImage>(context); // Mengakses Provider

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Profile'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: profileImageProvider.image != null
                  ? FileImage(profileImageProvider.image!)
                  : AssetImage('assets/img/profile.png') as ImageProvider,
            ),
            SizedBox(height: 16),
            Text(
              'Joko Putra',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'jokoputra@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                // Memilih gambar dari galeri
                final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
                if (pickedFile != null) {
                  profileImageProvider.updateImage(File(pickedFile.path)); // Memperbarui gambar profil
                }
              },
              child: Text('Change Profile Picture'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Logika untuk menyimpan profil
                // Misalnya, menyimpan perubahan di database atau menampilkan pesan sukses
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Profile saved successfully!')),
                );
              },
              child: Text('Save Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
