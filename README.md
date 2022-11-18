Documentation de [sensei](https://github.com/Zenika/sensei)

En cas de problème, ouvrir une issue sur [sensei](https://github.com/Zenika/sensei/issues/new).

Documentation sur le développement d'une formation: [HOW TO - Develop training](https://docs.google.com/document/d/1oaQL5JjKk4G2aRLfQa3L8Be9tcvIC6VCotghIzm0T78/view)

## Supports PDF et Live

Les supports peuvent être obtenus à cette adresse : https://training-template-dot-zen-formations.appspot.com/ [![Circle CI](https://circleci.com/gh/Zenika-Training/training-template/tree/main.svg?style=svg&circle-token=2db9d589c3e04a16ec90df263f003eec7cf11eed)](https://circleci.com/gh/Zenika-Training/training-template/tree/main)

<!-- Le paragraphe précédent est à adapter avec votre formation selon le template suivant:
- {github-org} : organisation GitHub du dépôt ('Zenika' ou 'Zenika-Training')
- {nom-du-depot} : nom du dépôt de la formation
- {circleci-token} : token CircleCI. Une fois un build lancé depuis le projet, créer un token 'badges_token' avec le scope 'Status' sur https://app.circleci.com/settings/project/github/{github-org}/{nom-du-depot}/api

Les supports peuvent être obtenus à cette adresse : https://{nom-du-depot}-dot-zen-formations.appspot.com/ [![Circle CI](https://circleci.com/gh/{github-org}/{nom-du-depot}/tree/main.svg?style=svg&circle-token={circleci-token})](https://circleci.com/gh/{github-org}/{nom-du-depot}/tree/main)
-->

### Ressources de formation

Les PDFs, workspaces et solutions sont aussi publiés automatiquement dans Google Drive dans le dossier [training-template](https://drive.google.com/drive/folders/1qmulXFmHkmITCDd8JAAdVZsJrEfQPlS0) du Drive partagé [Training Resources](https://drive.google.com/drive/folders/0ALlJ6REhgOxNUk9PVA).

Ils sont ensuite automatiquement téléchargés sur les machines Strigo des stagiaires et publiés sous le bouton Strigo "Materials".

## Organisation

``` shell
├── Workbook              # Contient les énoncés des TP
│   ├── README.md         # Explication détaillée de cette section
│   ├── workbook.json     # Contient la liste des fichiers des énoncés
│   ├── *.md              # Le contenu peut être découpé en autant de fichiers que de TP
│   └── resources         # Contient les images utilisées dans les énoncés des TP
├── Exercises             # Contient des starters dans TP ainsi que les solutions des TP
├── Installation          # Contient les éléments logiciels à fournir aux stagiaires
│   └── README.md         # Explication détaillée de cette section
├── PLAN_en.md            # Plan commercial en anglais (affiché sur le site public des formations)
├── PLAN.md               # Plan commercial (affiché sur le site public des formations)
├── README.md             # ce fichier (ne pas effacer son contenu)
├── REFERENCES.md         # Références utiles pour donner ou préparer la formation (destiné aux formateurs)
├── SessionsNotes         # Contient l'ensemble des notes faites par les formateurs après chaque session (organisation des TP, timing, ...)
│   └── README.md         # Explication détaillée de cette section
└── Slides                # Contient l'ensemble des slides
    ├── README.md         # Explication détaillée de cette section
    ├── slides.json       # Contient la liste des fichiers des slides
    ├── <num>_<slide>.md  # Contenu des slides
    ├── ...
    └── resources         # Contient les images et autres éléments utilisés dans les slides
```

*Note : Chaque répertoire contient un fichier `README.md` précisant son usage*


## Utilisation

Une fois installé [sensei](https://github.com/Zenika/sensei) :

- `sensei pdf` pour générer les fichiers PDF
- `sensei serve` pour lancer les slides

## Raccourcis clavier

- `Haut`, `Bas`, `Gauche`, `Droite`: Navigation
- `f`: Mode plein écran
- `s`: Afficher les notes du formateur
- `o`: Activer/désactiver le mode aperçu
- `b`: Activer/désactiver le mode écran noir
- `r`: Activer/désactiver le [mode télécommande](#mode-télécommande)
- `Echap`: Quitter le mode plein écran, ou activer/désactiver le mode aperçu

https://github.com/hakimel/reveal.js/wiki/Keyboard-Shortcuts

### Mode télécommande

Certaines télécommandes de présentation utilisent les raccourcis `Gauche` et `Droite` pour naviguer entre les diapositives et ne permettent pas de changer ce comportement. \
Par défaut cela navigue entre les têtes de chapitre uniquement. Ce n'est pas très pratique... Le mode télécommande permet de remédier à cela. \
Une fois le mode télécommande activé les raccourcis de clavier sont changés : `Gauche` et `Haut` affichent la diapositive précédente, `Bas` et `Droite` la dispositive suivante.

## Aide à la relecture

Pour que votre support soit orthographiquement irréprochable, demandez un coup de main à l'équipe [Orthographe](https://github.com/orgs/Zenika-Training/teams/orthographe-checkers) !

## Intégration Continue

Chaque formation dispose d'une version web (disponible uniquement via un compte @zenika.com).
Le mini-site de la formation contient les slides live, les slides PDF, le cahier d'exercice live et le cahier d'exercice PDF.

### Modèle de branches

`main` est automatiquement déployé sur `https://{nom-du-depot}-dot-zen-formations.appspot.com/` à chaque push.

Vous pouvez créer des branches sur ce dépôt.
Ouvrez une PR depuis votre branche pour intégrer vos modifications.
Nettoyez les branches une fois mergées.

### Serveur d'IC

Le build et le déploiement sont réalisés par [CircleCI](https://circleci.com).
À ce titre, un fichier [`.circleci/config.yml`](.circleci/config.yml) est présent dans le projet.
Il n'y a, à priori, aucune raison d'éditer ce fichier à l'initialisation, mais une
mise à jour de sensei peut requérir une mise à jour de ce fichier.
Elle est alors décrite dans le changelog de sensei.
