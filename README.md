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

## Il fatto e' che vorremmo poter aggiungere le risposte tramite l'interfaccia web

Prima correggiamo l'errore di sintassi che avevo fatto nel passo precedente sulle
validazioni

Dopodiche'.. Mi sembra una richiesta ragionevole!
Per far questo, usiamo delle feature di rails che rendono piuttosto facile il tutto.
Ma comunque e' il passo piu' lungo fatto finora! Ma prima parliamo un po' del controller.
Iniziamo a dire al model che accetta attributi annidati; poi nella form di quiz
aggiungiamo la f.fields_for... ; Nel controller dichiariamo che quiz accetta anche questi
attributi, aggiungendoli ai quiz_params (qui si potrebbe parlare di sicurezza?);
Infine Vorremmo che le risposte siano mostrate anche nella show del quiz, renderando @quiz.answers

## A questo punto vorremmo creare il front end; Niente paura, sara' meno orribile del backend!

Potremmo anche mettere tutto dentro allo stesso controller, ma il modo pulito
e' invece quello di creare un nuovo controller; Per ora e' prevedibile che si possano fare
due cose: visualizzare una domanda a caso, o rispondere a una domanda.

```
rails generate controller FrontEnd question answer
```

Poi facciamo come dice: http://guides.railsgirls.com/app/ (a meno della parte dopo <body>, che non ci serve)







