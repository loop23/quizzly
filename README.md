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

Parliamo delle associazioni. Un quiz ha molte domande, e le domande appartengono
ad un quiz. Modifichiamo quindi le classi generate e la migration.
Ora possiamo giocare con la console e aggiungere risposte ai quiz

## Ma che senso ha un quiz senza domanda, o una risposta senza testo?

Nessuno! Aggiungiamo delle validazioni. Le validazioni sono (parte di) quello
che in linguaggio serio si chiama "business logic" - anzi a essere precisi
business rules (l'ho saputo ieri sera!)







