## TP 1 : Premier exercice
### Objectifs

- Objectif 1
- *Objectif 2*
- **Objectif 3**

> Résultat

### Compiler

- item 1
- ~item 2~
- item 3

### Code

Lancer la commande `ls -l workspaces/` :

```shell-session
$ ls -l workspaces/
total 48
drwxr-xr-x 4 ubuntu root 4096 Oct 23 00:02 Lab1
drwxr-xr-x 2 ubuntu root 4096 Oct 25 15:29 Lab2
drwxr-xr-x 2 ubuntu root 4096 Oct 26 13:13 Lab3
drwxr-xr-x 2 ubuntu root 4096 Oct 23 00:02 Lab4
drwxr-xr-x 2 ubuntu root 4096 Oct 23 00:02 Lab5
drwxr-xr-x 3 ubuntu root 4096 Oct 23 00:02 Lab6
drwxr-xr-x 2 ubuntu root 4096 Oct 23 00:02 Lab7
drwxr-xr-x 2 ubuntu root 4096 Oct 23 00:02 Lab8
drwxr-xr-x 3 ubuntu root 4096 Oct 23 00:02 Lab9
-rw-r--r-- 1 ubuntu root   32 Oct 23 00:02 README.md
drwxr-xr-x 2 ubuntu root 4096 Oct 23 00:02 others
```

1. Créer un fichier `Slide.java` avec le contenu suivant :

```java
public class Slide {

  private String name = "slide";

  public byte[] toPdf(){
    return converter.toPdf(this);
  }
}
```

2. Compiler le code précédent avec la commande `javac Slide.java`
3. Exécuter avec la commande `java Slide`
