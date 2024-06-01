import 'package:flutter/material.dart';

class ProfileBanner extends StatelessWidget {
  const ProfileBanner({super.key});

  @override
  Widget build(BuildContext context) {
    // Déclaration de l'URL de l'image en tant que constante
    const String imageUrl = 'assets/images/fleur.jpg';

    // Utilisation de Stack pour superposer les widgets
    return Stack(
      // Là Indique de ne pas couper les widgets qui dépassent les limites de la Stack
      clipBehavior: Clip.none,
      children: [
        // Image de bannière de profil
        Image.asset(
          imageUrl, // Chemin de l'image
          height: 200, // Hauteur de l'image
          width: double.infinity, // Largeur de l'image égale à la largeur de l'écran
          fit: BoxFit.cover, // Adapter l'image pour couvrir toute la zone sans distorsion
        ),
        // Positionnement du cercle de l'avatar en bas de l'image de bannière
        Positioned(
          // Placer l'avatar 50 pixels en dessous du bas de l'image de bannière
          bottom: -50,
          // Centrer horizontalement l'avatar par rapport à l'écran
          left: MediaQuery.of(context).size.width / 2 - 50,
          child: CircleAvatar(
            radius: 50, // Rayon de l'avatar
            // Image de l'avatar
            backgroundImage: const AssetImage('assets/images/fleur.jpg'),
            // Couleur de fond de l'avatar
            backgroundColor: Colors.white,
            // Conteneur pour ajouter une bordure blanche autour de l'avatar
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Forme circulaire
                border: Border.all(
                  color: Colors.white, // Couleur de la bordure
                  width: 4.0, // Largeur de la bordure
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
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Le Name suivi d'une petite Bio 
          const Text(
            'Youssouf DIALLO',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Jeune Etudiant passionne par les nouvelles technologies en particulier ceux ayant un lien avec le developpement d\'applications Web(Front) & Mobile(Flutter)',
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          // Boutons Modif et Inscription
          
          Row(
            children: [
              Expanded(
                flex: 3,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Modifier le profil'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
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



