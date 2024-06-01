import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Facebook Profile'),
        ),
        body: const ProfileScreen(),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ProfileBanner(),
        SizedBox(height: 35),
        const ProfileInfo(),
        // const AboutSection(),
        // const FriendsSection(),
        // const PostsSection(),
      ],
    );
  }
}

class ProfileBanner extends StatelessWidget {
  const ProfileBanner({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageUrl = 'assets/images/fleur.jpg';

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          imageUrl,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: -50,
          left: MediaQuery.of(context).size.width / 2 - 50,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: const AssetImage('assets/images/profilie.jpg'),
            backgroundColor: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 4.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Nom et petite bio
          const Text(
            'Youssouf DIALLO',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Jeune Étudiant passionné par les nouvelles technologies en particulier ceux ayant un lien avec le développement d\'applications Web (Front) & Mobile (Flutter)',
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          // Boutons Modifier et Inscription
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical:
                          16), // Ajustez la largeur et la hauteur du bouton
                  backgroundColor: Colors.blue, // Couleur du bouton
                ),
                child: const Text(
                  'Modifier le profil',
                  style: TextStyle(color: Colors.white),
                ), // Texte du bouton
              ),
              const SizedBox(width: 8.0), // Espacement entre les boutons
              Container(
                width: 48, // Largeur du conteneur pour l'icône
                height: 48, // Hauteur du conteneur pour l'icône
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue, // Couleur de l'arrière-plan de l'icône
                ),
                child: InkWell(
                  onTap: () {
                    // Action à effectuer lorsque l'utilisateur appuie sur l'icône
                  },
                  child: Image.asset(
                    'assets/images/edit.png', // Chemin de l'image
                    width: 24, // Largeur de l'image
                    height: 24, // Hauteur de l'image
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'About Me',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Praesent tincidunt molestie libero, a sollicitudin nisl. '
            'Suspendisse potenti.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class FriendsSection extends StatelessWidget {
  const FriendsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Friends',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/friend1.jpg'),
                      ),
                      const SizedBox(height: 5),
                      const Text('Friend 1'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PostsSection extends StatelessWidget {
  const PostsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Posts',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Post ${index + 1}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                        'Praesent tincidunt molestie libero, a sollicitudin nisl. '
                        'Suspendisse potenti.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
