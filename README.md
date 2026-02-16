# BIO_PROJET
beh c'est le projet de maths bio, voilà !


## Config

Nécessite d'avoir Julia sur sa machine (Julia ne s'installe pas dans un environnement virtuel mais directement)
De plus Julia possède son/ses propre/s environnement/s et gestionnaire/s de paquets. En clair pas de venv ou conda env...


### 1ère utilisation : 
- D'abord on clone :    
```bash
    git clone https://github.com/theocimino/BIO_PROJET.git
```
- Puis on active l'environnement local géré par julia à la racine du projet :   
```bash
    julia --project=.
```
Ou bien remplacer ```.``` par ```./chemin/vers/la/racine/du/projet``` si non placé à la racine.
- Enfin, on instancie les paquets utilisés dans le projet :   
```bash
    pkg> instantiate
```   
- Pour tester la config julia run le code test : 
```bash
julia --project=./chemin/vers/la/racine/du/projet test_setup.jl
```
Ou bien depuis l'interface graphique VSCode après avoir ouvert [tes_dev](./code/test_dev.jl)

- Pour tester la config globale Julia + notebook jupyter
    - ouvrir le notebook [test_dev_nb](./code/test_dev_nb.ipynb)
    - Sélectionner le kernel lié à l'env créé à l'instant
    - run la cellule de test

### A chaque utilisation : 
- On active l'env de dev :   
```bash
    julia --project=.
```

- Pour run du code dans un notebook jupyter : 
    - Ouvrir un créer un .ipynb
    - Selectionner le kernel julia en local
    - run les cellules

- Pour run du code dans un fichier .jl : 
```bash
julia --project=./chemin/vers/la/racine/du/projet chemin/vers/script.jl
```
Ou bien avec l'interface graphique VSCode.