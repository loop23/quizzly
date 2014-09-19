# Quizzly

Una piccolissima app per RailsGirls Roma 2014

## Creiamo il model Quiz

tramite il generator degli scaffold:

```
rails generate scaffold Quiz subject question:text image_url --stylesheet-engine=css --javascript-engine=js
rake db:migrate
```

Gia' fa parecchie cose! - Vediamo un po' la struttura dell'applicazione!

## Ok ma l'immagine non si vede!

E' vero! Vediamo come farla visualizzare; Questo ci da modo di parlare
dell'html

## Un quiz e' niente senza domande!

Creiamo un model per le risposte: Answer.

```
rails generate model Answer text:string correct:boolean
```

Parliamo delle associazioni. Un quiz ha molte domande, e le domande appratengono
ad un quiz. Modifichiamo quindi le classi generate e la migration





