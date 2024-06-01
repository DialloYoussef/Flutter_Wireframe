import 'package:flutter/material.dart';

// ****************************************************************
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key}); // Définition du constructeur

  @override
  Widget build(BuildContext context) {
    // Liste d'amis pour démonstration

    return ListView(
      // Retourne un ListView contenant les différents éléments de la page de profil
      children: [
        const ProfileBanner(), // Affichage de la bannière de profil
        const SizedBox(height: 35), // Espacement vertical
        const ProfileInfo(), // Affichage des informations de profil
        const AboutSection(), // Affichage de la section "À propos"
        FriendsSection(), // FriendsSection pour afficher la liste des amis
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Mes Posts", // Titre de la section des publications
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const PostsSection(), // Affichage de la section des publications
      ],
    );
  }
}

// *$*$*$*$*$*$*$*$*$*$*$
class ProfileBanner extends StatelessWidget {
  const ProfileBanner({super.key}); // Définition du constructeur

  @override
  Widget build(BuildContext context) {
    const String imageUrl =
        'assets/images/fleur.jpg'; // Chemin de l'image de la bannière

    return Stack(
      clipBehavior: Clip
          .none, // Permet aux éléments d'être dessinés en dehors des limites du widget parent
      children: [
        Image.asset(
          imageUrl,
          height: 200,
          width: double.infinity,
          fit: BoxFit
              .cover, // Redimensionne l'image pour qu'elle couvre toute la zone
        ),
        Positioned(
          // Positionnement relatif pour le cercle d'avatar
          bottom:
              -50, // Décalage vers le bas pour placer l'avatar en dessous de la bannière
          left: MediaQuery.of(context).size.width / 2 -
              50, // Centre l'avatar horizontalement
          child: CircleAvatar(
            // Widget d'avatar circulaire
            radius: 50,
            backgroundImage:
                const AssetImage('assets/images/profile.jpg'), // Image d'avatar
            backgroundColor: Colors.white, // Couleur de fond de l'avatar
            child: Container(
              // Conteneur pour ajouter un effet de bordure autour de l'avatar
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 4.0, // Épaisseur de la bordure blanche
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// +-+-+-+-+  ProfileInfo ********************************
class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key}); // Définition du constructeur

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0), // Padding autour du widget
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center, // Alignement des enfants au centre
        children: [
          Text(
            'Youssouf DIALLO', // Nom de l'utilisateur
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8), // Espacement vertical
          Text(
            'Jeune Étudiant passionné par les nouvelles technologies en particulier ceux ayant un lien avec le développement d\'applications Web (Front) & Mobile (Flutter)', // Description de l'utilisateur
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center, // Texte aligné au centre
          ),
          SizedBox(height: 16), // Espacement vertical
          ProfileButtons(), // Appel du widget ProfileButtons
        ],
      ),
    );
  }
}

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key}); // Définition du constructeur

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment
          .center, // Alignement des enfants au centre de la ligne
      children: [
        ElevatedButton(
          // Bouton d'élévation pour modifier le profil
          onPressed: () {}, // Action lorsque le bouton est pressé
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
                horizontal: 80, vertical: 12), // Remplissage du bouton
            backgroundColor: Colors.blue, // Couleur de fond du bouton
          ),
          child: const Text(
            'Modifier le profil', // Texte du bouton
            style: TextStyle(color: Colors.white), // Style du texte
          ),
        ),
        const SizedBox(width: 8.0), // Espacement horizontal
        Container(
          // Conteneur pour l'icône d'édition
          decoration: const BoxDecoration(
            shape: BoxShape.circle, // Forme circulaire du conteneur
            color: Colors.blue, // Couleur de fond du conteneur
          ),
          child: IconButton(
            // Bouton d'icône pour l'édition
            onPressed: () {}, // Action lorsque le bouton est pressé
            icon: Image.asset(
              'assets/images/edit.png', // Chemin de l'image de l'icône
              width: 24, // Largeur de l'icône
              height: 20, // Hauteur de l'icône
            ),
            padding: EdgeInsets
                .zero, // Supprimer le rembourrage par défaut de l'IconButton
          ),
        ),
      ],
    );
  }
}

// -+-+-+-+-+-+-+-+-+-+
class AboutSection extends StatelessWidget {
  const AboutSection({super.key}); // Définition du constructeur

  @override
  Widget build(BuildContext context) {
    return Container(
      // Définir la couleur de fond du conteneur
      color: Colors.white,
      // Définir le padding interne du conteneur
      padding: const EdgeInsets.all(16.0),
      // Définir la marge en haut du conteneur
      margin: const EdgeInsets.only(top: 8.0),
      child: const Column(
        // Aligner les enfants sur l'axe vertical au début (gauche)
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Titre "À propos de moi"
          Row(
            children: [
              SizedBox(width: 8), // Espacement à gauche du texte
              Text(
                'À propos de moi', // Titre
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold), // Style du texte
              ),
            ],
          ),
          SizedBox(height: 8), // Espacement vertical après le titre

          // Domicile
          Row(
            children: [
              Icon(Icons.home, color: Colors.black), // Icône domicile
              SizedBox(width: 8), // Espacement entre l'icône et le texte
              Text(
                'Samatara T8', // Adresse
                style: TextStyle(
                    fontSize: 16, color: Colors.black), // Style du texte
              ),
            ],
          ),
          SizedBox(height: 8), // Espacement vertical entre les lignes

          // Profession
          Row(
            children: [
              Icon(Icons.code, color: Colors.black), // Icône profession
              SizedBox(width: 8), // Espacement entre l'icône et le texte
              Text(
                'Développeur freelance', // Profession
                style: TextStyle(
                    fontSize: 16, color: Colors.black), // Style du texte
              ),
            ],
          ),
          SizedBox(height: 8), // Espacement vertical entre les lignes

          // Statut relationnel
          Row(
            children: [
              Icon(Icons.favorite,
                  color: Colors.black), // Icône statut relationnel
              SizedBox(width: 8), // Espacement entre l'icône et le texte
              Text(
                'En couple avec mon laptop', // Statut relationnel
                style: TextStyle(
                    fontSize: 16, color: Colors.black), // Style du texte
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// -+-+-+-+-+-+-+-+ FriendsSection
class FriendsSection extends StatelessWidget {
  final List<String> amis = [
    'rOBOT',
    'Kadiatou',
    'Kourahoye',
    'Dara',
    'Kindy',
    'Abel Tounkara',
    'Tkinter',
    'Boubacar',
    'Foulai',
    'Hafiziou',
  ];
   FriendsSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Colors.grey, width: 1.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Amis',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: amis.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                              width: 3.0,
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/friend1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        amis[index],
                        style: const TextStyle(fontSize: 14),
                      ),
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

// -----------  PostsSection
class PostsSection extends StatelessWidget {
  const PostsSection({super.key}); // Définition du constructeur

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap:
          true, // Permet de réduire la taille de la liste pour s'adapter à son contenu
      physics:
          const NeverScrollableScrollPhysics(), // Empêche le défilement de la liste
      itemCount:
          10, // Nombre total de publications (remplacer par le nombre réel de publications)
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(
              10.0), // Remplissage interne du conteneur de la publication
          margin: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 10.0), // Marge autour du conteneur de la publication
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey), // Bordure de la publication
            borderRadius:
                BorderRadius.circular(10.0), // Coins arrondis de la publication
            gradient: const LinearGradient(
              // Dégradé de couleur en arrière-plan de la publication
              colors: [
                Color.fromARGB(126, 192, 196, 198),
                Color.fromARGB(200, 221, 221, 221)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey
                    .withOpacity(0.5), // Ombre portée de la publication
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            // Contenu de la publication
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // En-tête de la publication
              Row(
                children: [
                  const CircleAvatar(
                    // Avatar de l'auteur de la publication
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  const SizedBox(width: 10.0), // Espacement horizontal
                  const Text(
                      'Youssouf DIALLO'), // Nom de l'auteur de la publication
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                        Text(
                          'Il y a ${index + 4}h ', // Temps écoulé depuis la publication
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black),
                        ),
                      ]))
                ],
              ),
              const SizedBox(height: 10.0), // Espacement vertical

              // Contenu de la publication (Texte ou Image)
              Image.asset(
                'assets/images/fleur.jpg', // Image de la publication
                height: 200, // Hauteur de l'image
                width: double
                    .infinity, // Largeur de l'image (prend toute la largeur disponible)
                fit: BoxFit
                    .cover, // Redimensionnement de l'image pour remplir le conteneur
              ),
              const SizedBox(height: 10.0), // Espacement vertical

              // Contenu texte centré
              const Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    'blablablablablablablabla', // Contenu texte de la publication
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // Actions sur la publication
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.favorite), // Icône "J'aime"
                    onPressed: () {},
                  ),
                  const Text('28 Likes'), // Nombre de likes
                  const Spacer(), // Espaceur pour pousser les éléments à droite
                  IconButton(
                    icon: const Icon(Icons.comment), // Icône "Commentaire"
                    onPressed: () {},
                  ),
                  Text('1$index Commentaires'), // Nombre de commentaires
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
