--Curatori
Insert into Curatore(matricola, nome, cognome, luogo_nascita, data_nascita, email)
values(123, 'Giorno' , 'Giovanna', 'Napoli', '20-06-1979','giornogiovanna@gmail.com')
;
Insert into Curatore(matricola, nome, cognome, luogo_nascita, data_nascita, email)
values(456, 'Guido' , 'Mista', 'Roma', '08-11-1972', 'guidomista@hotmail.it')
;
Insert into Curatore(matricola, nome, cognome, luogo_nascita, data_nascita, email)
values(789, 'Leone' , 'Abbaccio', 'Roma', '23-01-1981', 'leoneabbacchio@libero.com')
;
Insert into Curatore(matricola, nome, cognome, luogo_nascita, data_nascita, email)
values(1230, 'Bruno' , 'Bucciaratti', 'Roma', '15-07-1968','brunobucciaratti@tiscali.net')
;
--Collezioni
Insert into Collezione(id, nome, descrizione, curatore_matricola)
values(1, 'Klimt', 'Collezione dedicata all''artista Gustav Klimt', 123)
;
Insert into Collezione(id, nome, descrizione, curatore_matricola)
values(2, 'Van Gogh', 'Collezione dedicata all''artista Vincent Willem van Gogh', 456)
;
Insert into Collezione(id, nome, descrizione, curatore_matricola)
values(3, 'Dalí', 'Collezione dedicata all''artista Salvador Dalí', 789)
;
Insert into Collezione(id, nome, descrizione, curatore_matricola)
values(4, 'Picasso', 'Collezione dedicata all''artista Pablo Picasso', 1230)
;
--Artisti
Insert into Artista(id, nome, cognome, luogo_Nascita, data_nascita, nazione, luogo_morte, data_morte)
values (1, 'Pablo', 'Picasso', 'Malaga', '25-10-1881', 'Spagnolo', 'Mougins', '08-04-1973')
;
Insert into Artista(id, nome, cognome, luogo_Nascita, data_nascita, nazione, luogo_morte, data_morte)
values (2, 'Salvador', 'Dalí', 'Figueres', '11-05-1904', 'Spagnolo', 'Figueres', '23-01-1989')
;
Insert into Artista(id, nome, cognome, luogo_Nascita, data_nascita, nazione, luogo_morte, data_morte)
values (3, 'Vincent Willem', 'van Gogh', 'Zundert', '30-03-1853', 'Olandese', 'Auvers-sur-Oise', '29-07-1890')
;
Insert into Artista(id, nome, cognome, luogo_Nascita, data_nascita, nazione, luogo_morte, data_morte)
values (4, 'Gustav', 'Klimt', 'Baumgarten', '14-07-1862', 'Austriaco', 'Vienna', '06-02-1918')
;
--- alt 239 ´
--- alt 161 í
--Picasso
Insert into Opera(id, nome, data_realizzazione, immagine, artista_id, collezione_id)
values (1, 'Les Demoiselles d´Avignon', '1907', 'avignon', 1, 4)
;
Insert into Opera(id, nome, data_realizzazione, immagine, artista_id, collezione_id)
values (2, 'Dora Maar seduta', '1937', 'dora', 1, 4)
;
--Dalí
Insert into Opera(id, nome, data_realizzazione, immagine, artista_id, collezione_id)
values (3, 'Ultima cena', '1955', 'ultimaCena', 2, 3)
;
Insert into Opera(id, nome, data_realizzazione, immagine, artista_id, collezione_id)
values (4, 'La persistenza della memoria', '1931', 'persistenzaMemoria', 2, 3)
;
--Van Gogh
Insert into Opera(id, nome, data_realizzazione, immagine, artista_id, collezione_id)
values (5, 'Notte stellata', '1889', 'notteStellata', 3, 2)
;
Insert into Opera(id, nome, data_realizzazione, immagine, artista_id, collezione_id)
values (6, 'La chiesa di Auvers', '1890', 'chiesaAuvers', 3, 2)
;
--Klimt
Insert into Opera(id, nome, data_realizzazione, immagine, artista_id, collezione_id)
values (7, 'Il bacio', '1907-08', 'bacio', 4, 1)
;
Insert into Opera(id, nome, data_realizzazione, immagine, artista_id, collezione_id)
values (8, 'L´abbraccio', '1905-09', 'abbraccio', 4, 1)
;
--Descrizione opere
update opera
set descrizione = 'Les Demoiselles d''Avignon è uno dei più celebri dipinti di Pablo Picasso. Fu realizzato ad olio su tela nel 1907, con misure 243,9×233,7 cm. Fu il primo dipinto cubista dell''artista, immediatamente successivo al suo cosiddetto periodo rosa ed è conservato al MoMA di New York.
Picasso creò oltre un centinaio di studi preparatori e schizzi relativi a questo lavoro, uno dei più importanti nello sviluppo iniziale del Cubismo.
Quando fu esposto per la prima volta nel 1916, il dipinto fu tacciato di immoralità. Molti critici trovarono delle somiglianze tra quest''opera e Les Grandes Baigneuses di Cézanne, probabile ispirazione per Picasso, connessioni messe però in discussione dai commentatori successivi.
Picasso dipinse in maniera differente ciascun personaggio. La testa della donna che tira la tenda sul fondo è la più cubista di tutte e cinque e rappresenta una forma geometrica acuta. La testa cubista della figura che si accascia ha subìto almeno due revisioni e dalla figura originale di iberi che è passata alla sua forma attuale. Le maschere sembrano derivare dalle tradizionali africane. Si pensa che Maurice Vlaminck abbia introdotto Picasso all''antica scultura africana di tipo Fang nel 1904. La scultura Fang del XIX secolo è simile nello stile a ciò che Picasso vide a Parigi poco prima de Les Demoiselles d''Avignon. La maggior parte del dibattito critico negli anni si è concentrato sul tentativo di identificare la molteplicità di stili all''interno dell''opera: l''opinione dominante per oltre cinque decenni, esposta in particolare da Alfred Barr (il primo direttore del Museum of Modern Art di New York e organizzatore di molte retrospettive sulla carriera dell''artista) è stata che l''opera si può interpretare come una prova del periodo di transizione nell''arte di Picasso, uno sforzo di connettere i suoi primi lavori al cubismo, uno stile a cui avrebbe collaborato e sviluppato per i seguenti cinque o sei anni.'
where id = 1
;

update opera
set descrizione = 'Ritratto di Dora Maar o Dora Maar seduta è un dipinto a olio su tela (92×65 cm) realizzato nel 1937 dal pittore spagnolo Pablo Picasso. È conservato nel Museo Picasso di Parigi.
Nel 1936 Picasso, stabilitosi nei pressi di Cannes, conobbe la giovane fotografa Dora Maar e ne divenne l''amante. In questo periodo dipinse una serie di ritratti alternativamente di Dora e Marie-Térèse.
La giovane è ritratta assisa con una blusa nera e una gonna rossa a quadri. Le forme spigolose e l''abbigliamento elaborato mettono in risalto la forte personalità della donna.'
where id =2
;
update opera
set descrizione = 'In questa tela Dalí si accosta ad un tema topico dell''arte sacra, avendo sicuramente in mente l''affresco di Leonardo e gli altri esempi celebri di un soggetto così diffusamente trattato nella storia dell''arte. Appare evidente il desiderio di Dalí di scompaginare l''iconografia tradizionale, a cominciare dalla provocazione (ritenuta da molti blasfema) di dare a Gesù il volto della moglie Gala.

La figura del Cristo è come attraversata da una intensa sorgente luminosa che proviene dall''incantevole paesaggio alle sue spalle (che Dalí dipinge avendo negli occhi la baia vicino alla sua casa di Port Lligat). I dodici apostoli, simmetricamente disposti attorno al Maestro, sono genuflessi, i volti abbassati in preghiera. Nessuno di essi (neppure Giuda) è riconoscibile. Sulla tavola, nuda ed immensa, non vi è nient''altro che un pane spezzato ed un calice (o, meglio, un bicchiere) di vino. Alle spalle del Cristo, sopra il paesaggio, si libra il torso nudo di una figura umana: una palese richiamo ad un altro soggetto dell''arte sacra, quello della “trasfigurazione”.'
where id = 3
;
update opera
set descrizione = 'La persistenza della memoria (in catalano La persistència de la memòria) è un dipinto a olio su tela (24×33 cm) del surrealista spagnolo Salvador Dalí, realizzato nel 1931 e conservato al Museum of Modern Art di New York.
Opera surrealista per antonomasia, La persistenza della memoria raffigura una landa deserta dominata dalla presenza di alcuni orologi molli, dalla consistenza quasi fluida, simboli dell''elasticità del tempo.
La persistenza della memoria raffigura un paesaggio costiero della costa Brava, nei pressi di Port Lligat, dominato da un cielo con delle sfumature gialle e celesti. La scena, disabitata e scevra di ogni vegetazione, è popolata da diversi oggetti: un parallelepipedo color terra, un ulivo senza foglie (forse senza vita) che sorge su quest''ultimo, un occhio dalle lunghe ciglia addormentato e un plinto blu sullo sfondo, che fa pendant con il mare retrostante.
L''attenzione dell''osservatore, tuttavia, è catturata dai tre orologi molli, quasi liquefatti, che di fatto sono i protagonisti della scena. Squagliandosi, questi assumono la foggia dei loro sostegni: il primo ha una mosca su di esso[5] e scivola oltre il bordo del volume squadrato collocato in primo piano, il secondo è sospeso sull''unico ramo dell''albero secco appoggiato sul parallelepipedo, e il terzo è avvolto a spirale sulla timida figura embrionale colante sul suolo. Un quarto orologio, l''unico ad essere rimasto allo stato solido, è collocato sempre sul parallelepipedo ed è ricoperto di formiche nere brulicanti; l''artista catalano ha da sempre nutrito una fobia verso questi insetti, sin da quando ancora bambino li vide divorare un coleottero.'
where id = 4
;
update opera
set descrizione = 'La Notte stellata (De sterrennacht) è un dipinto del pittore olandese Vincent van Gogh, realizzato nel 1889 e conservato al Museum of Modern Art di New York. Vera e propria icona della pittura occidentale, il dipinto raffigura un paesaggio notturno di Saint-Rémy-de-Provence, poco prima del sorgere del sole.
La Notte stellata, certamente una delle opere vangoghiane più celebri, risponde perfettamente a quest''esigenza. In questo dipinto, infatti, il pittore ha certamente cercato il contatto diretto con la realtà, dipingendo quello che si poteva vedere dalla finestra della sua stanza nel manicomio di Saint-Rémy. Van Gogh, tuttavia, non ha ripreso fedelmente questa veduta notturna, bensì l''ha manipolata con mezzi plastici, interiorizzandola fino allo spasimo e trasformandola in una potente visione onirica in cui poter fare affiorare le sue emozioni, le sue paure, i suoi viaggi dell''anima. La Notte stellata, pertanto, non offre all''osservatore un''immagine fedele della realtà, quanto una forma di «espressione» di quest''ultima.

L''immagine possiede una forza straordinaria. A sinistra la scena è chiusa da un cipresso alto e severo che, stagliandosi contro il cielo notturno, agisce come un intermediario vegetale tra la terra e il cielo, tra la vita e la morte: più che un albero sembrerebbe quasi una fiamma scura che divampa all''improvviso alla ricerca dell''infinito. A fianco del solitario cipresso troviamo un piccolo paesino - forse è Saint-Rémy, forse Nuenen, forse una reminiscenza del villaggio natio - che, disperdendosi su una vallata, sembra perduto nell''immensità del movimento cosmico che fluisce sopra di esso: i caseggiati sono generalmente bassi, fatta eccezione per l''acuminata cuspide di un campanile, che riprende la statuaria verticalità del cipresso e «sfida le forze della natura: è un''antenna e un parafulmine insieme, una sorta di Tour Eiffel, la cui fascinazione è sempre presente nelle vedute notturne dell''artista sembra crepitare, carica di elettricità. A destra vigoreggia la ricca vegetazione degli ulivi, mentre sullo sfondo si estende il profilo diagonale e ondulato delle Alpilles, importante catena montuosa del Meridione francese.

Il villaggio è avvolto dal buio e dal sonno e rimanda nel suo complesso a un ideale di placida quiete. Il paesaggio, al contrario, rinvia esplicitamente alla grandiosa natura decantata a inizio secolo dal romantico Caspar David Friedrich, soprattutto con i monti retrostanti.'
where id = 5
;
update opera
set descrizione = 'La chiesa di Auvers è un dipinto del pittore olandese Vincent van Gogh, realizzato nel 1890 e conservato al Museo d''Orsay di Parigi.
Di seguito si riporta la descrizione che van Gogh fornì dell''opera, parlandone in una lettera indirizzata alla sorella Wilhelmina:

«Ho un''immagine più grande della chiesa del villaggio - con effetto in cui la costruzione sembra essere viola contro un cielo di semplice blu scuro, cobalto puro; le finestre sembrano come macchie di blu oltremare, il tetto è violetto e in parte aranciato. Sullo sfondo, alcune piante in fiore e sabbia con il riflesso rosa del sole. Ed ancora una volta è simile agli studi che ho fatto a Nuenen della vecchia torre del cimitero, solo probabilmente ora il colore è più espressivo, più sontuoso»

In maniera ancora più gridata rispetto al passato qui van Gogh rinuncia ad una riproduzione fotograficamente esatta della «realtà stereoscopica» e proietta nell''architettura di Auvers i suoi tormenti interiori, manipolando forme e colori in modo libero e soggettivo, con un''esplicita presa di distanze dal naturalismo impressionista e neoimpressionista (si confronti, a titolo esemplificativo, il presente dipinto con le Cattedrali di Rouen di Monet).[4] È in questo modo che l''abside della chiesetta del XIII secolo, lontana dalle rigide norme fisiche che caratterizzano l''ars costruendi, non si erge con precisione, bensì barcolla convulsamente, come se fosse sul punto di collassare. La mole bassa e compatta della chiesa è infatti individuata da linee morbide e tortuose, impiegate dal pittore per generare un dinamismo che viene amplificato dalle due stradine che, biforcandosi, stringono l''edificio da una parte e dall''altra, senza darvi accesso. Sul sentiero di sinistra, poi, si avventura una contadina che, tuttavia, rivolge il tergo allo spettatore, isolandolo in un senso di angosciosa solitudine.
'
where id = 6
;
update opera
set descrizione = 'Il bacio (Der Kuss) è una pittura a olio su tela (180 × 180 cm) di Gustav Klimt, realizzato nel 1907-08 e conservato nell''Österreichische Galerie Belvedere di Vienna al primo piano.
Al centro di un luogo etereo ed astratto due amanti si stringono e si abbandonano ad un bacio intenso; la fanciulla è pienamente abbandonata nell''amplesso, con gli occhi chiusi in una posizione estatica, mentre l''uomo - del quale si intravede solo il profilo - stringe la testa dell''amata con delicatezza, protendendosi verso di lei in segno protettivo e di affetto. I due giovani innamorati, avvolti entrambi in lunghe tuniche mosaicate che ne celano i corpi, sono inginocchiati su un piccolo rettangolo erboso che richiama l''iconografia dei medievali hortus conclusus: neanche la vivace policromia del prato fiorito, tuttavia, riesce a spezzare il loro idillio amoroso. Il tema dell''amore e delle umane passioni era già stato trattato numerose volte nella produzione klimtiana, dove ricorre frequentemente (specialmente in Amore, nel Fregio di Beethoven, e nell''Abbraccio del Fregio Stoclet); ciò malgrado, è solo in quest''opera che Klimt riesce a trasportare in pittura quel momento effimero in cui l''universo maschile e quello femminile riescono finalmente a compenetrarsi, in un attimo fuggente di sympatheia dell''amore.
L''obiettivo al quale tende Klimt è, dunque, quello di glorificare con il Bacio il trionfo della potenza vivificatrice dell''eros, in grado di trascendere le antitesi tra sesso maschile e sesso femminile. Nell''opera questi conflitti emergono nelle mani nodose e affusolate dell''uomo, in contrasto con la lucentezza della diafana pelle della fanciulla, ma specialmente nell''adozione di una particolarissima grammatica visiva: mentre le vesti dell''uomo sono costituite da elementi geometrici verticali e spigolosi, nelle tonalità del nero, del grigio e del bianco, la donna è rivestita di forme circolari e spiraliformi, dalle forme morbide e variopinte. Eppure, la netta separazione tra i due sessi viene superata con quella luminosa crisalide aurea che racchiude le due figure, in congiunzione con lo sfondo che riproduce, con un gioco di trasparenze ed affioramenti, le forme della coppia di amanti.'
where id = 7
;
update opera
set descrizione = 'L''abbraccio è un dipinto di Gustav Klimt, realizzato tra il 1905 e il 1909.
Il dipinto è realizzato in "stile aureo", definito in questo modo data la notevole presenza di oro nello sfondo e nel soggetto.[1] Raffigura un uomo e una donna nell''atto dell''abbraccio. L''espressione della giovane donna è di quasi abbandono verso la spalla dell''uomo, girato di spalle. Le decorazioni dei vestiti variano: sulle vesti dell''uomo sono presenti soggetti più grandi e squadrati, in una tunica stilizzata e lineare; la veste della donna è ondeggiante e morbida con decorazioni più minute e curate. Lo sfondo si presenta composto da spirali dorate su sfondo giallo-arancione.'
where id = 8
;


--Biografie Artisti
update artista
  set biografia = 'Pablo Ruiz y Picasso, semplicemente noto come Pablo Picasso (Malaga, 25 ottobre 1881 – Mougins, 8 aprile 1973), è stato un pittore e scultore spagnolo, tra i più influenti del XX secolo.
  Giovinezza e adolescenza

Origini familiari e primissimi anni
Pablo Picasso nacque a Malaga, nel sud dell''Andalusia, alle 23:15 del 25 ottobre 1881, in Plaza de la Merced. Era il primogenito di Don José Ruiz y Blasco (1838–1913), pittore di modesta levatura che lavorava come insegnante di disegno alla Scuola delle Belle Arti e conservatore del Museo della città, e Maria Picasso y López de Oñate (1855–1939), donna di origine genovese dalla quale prenderà il nome d''arte (Picasso). Al giovane Pablo, in ogni caso, furono imposti numerosissimi nomi, tutti in onore a vari santi e parenti: Pablo Diego José Francisco de Paula Juan Nepomuceno Maria de los Remedios Cipriano de la Santísima Trinidad Ruiz y Picasso, dei quali gli ultimi due tratti dal padre e dalla madre, ai sensi della regola del "doppio cognome" vigente in Spagna.

La scrittrice Gertrude Stein ricorda la famiglia di Picasso in questi termini:

«In antico, venendo probabilmente da Genova, la famiglia Picasso passò in Spagna attraverso Palma de Mallorca. La famiglia della madre era una famiglia di argentini. La madre, come Picasso, è fisicamente piccola e robusta, con un corpo vigoroso, pelle scura, capelli quasi neri, lisci e forti: suo padre, come Picasso diceva sempre, somigliava a un inglese, cosa di cui Picasso e suo padre andavano fieri. Era alto, con capelli ricci e un modo di imporsi quasi all''inglese»

A Malaga e A Coruña

Picasso rivelò precocemente uno spiccato talento artistico: secondo la madre, le sue prime parole furono «piz, piz», abbreviazione di lápiz, che in spagnolo significa «matita». La formazione del giovane Pablo avvenne sotto la guida del padre Don José, che valorizzò il precoce talento del figlio introducendolo all''esercizio della pittura e allo studio dei grandi maestri. Picasso si avviò al mestiere di pittore durante il proprio apprendistato presso il padre, realizzando già nel 1888-89 il suo primo dipinto, Il picador: ne seguirono molti altri, tutti caratterizzati da un''eccezionale abilità tecnica che si dice abbia spinto uno sbalordito Don José, ormai superato dal giovane allievo, a rinunciare alla tavolozza e ai pennelli.

Nel 1891 la famiglia di Picasso si trasferì a A Coruña, in Galizia, dove Don José aveva accettato l''impiego più redditizio di insegnante nella scuola d''arte locale, l''Istituto da Guarda. «Sebbene mio padre fosse disperato, per me il viaggio a A Coruña era come una festa»: Pablo, a differenza del padre, ricorderà con molta gioia il soggiorno quadriennale nella città galiziana, dove ebbe modo di perfezionare le proprie doti artistiche frequentando, a partire dal 1892, i corsi di disegno della Scuola di Belle Arti. Picasso, in questo stesso periodo, diede prova del suo talento anche attraverso l''ideazione e la raffigurazione di riviste con nomi puramente di fantasia, quali La torre de Hercules, La Coruna, e Azul y Blanco.

Adolescenza a Barcellona e Madrid

Intanto, la madre María ebbe altre due figlie: Dolores (detta Lola) nel 1884, e Concepción (detta Conchita) nel 1887, destinata a morire nel 1895 di tubercolosi, a soli sette anni di età. Nell''ottobre dello stesso anno, inoltre, Don José venne nominato professore a La Lonja, e la famiglia Ruiz si trasferì a Barcellona, proprio nello stesso periodo nel quale l''ingegner Ildefons Cerdà stava realizzando l''Eixample. Pablo approdò insomma in una metropoli ricca di suggestioni culturali, animata dai nuovi fermenti del Modernismo catalano e da una sostanziale «indipendenza politica, stabilità economica e prosperità artistica».

Nel 1896, riconoscendo il suo talento, con l''aiuto del padre Picasso aprì un atelier a Calle de la Plata. Da questo studio, condiviso con l''amico Manuel Pallarès, uscirono diversi quadri che conobbero tutti una calda accoglienza: L''enfant de choeur (1896), La prima comunione (1895-96) e Scienza e carità (1897), guadagnandosi con quest''ultima tela anche una menzione d''onore alla mostra nazionale di Belle Arti a Madrid e, successivamente, un premio a Malaga. Incoraggiato sia dal successo ottenuto, sia soprattutto dai crescenti attriti con il padre, che lo voleva a Monaco di Baviera (a suo giudizio, «città dove si studia seriamente la pittura senza occuparsi delle mode come il pointillisme e tutto il resto»), Picasso decise di imprimere un più decisivo impulso alla propria formazione artistica trasferendosi a Madrid. Nella città madrilena il giovane pittore venne rapidamente ammesso ai corsi dell''Accademia Reale San Fernando, e visitò assiduamente il museo del Prado, dove venne a contatto con le opere di Velázquez, El Greco, Zurbarán e Goya. La permanenza madrilena di Picasso, tuttavia, si protrasse per un solo, duro inverno, dopo il quale venne colto da un feroce attacco di scarlattina che lo costrinse, nella primavera del 1898, a trascorrere ben otto mesi a Horta de Ebro presso i genitori di Pallarès, per poi finalmente fare ritorno a Barcellona.

La svolta cubista

Les demoiselles d''Avignon
Nel frattempo, Picasso si recò nell''estate 1905 nei Paesi Bassi, per fare visita all''amico Schilperoort che viveva a Schooredam. Esattamente un anno dopo, in compagnia di Fernande, visitò un villaggio spagnolo incastonato lungo i Pirenei, Gósol, dove venne a contatto con la statuaria iberica preromana, che non badava né alle proporzioni, né alla prospettiva e all''armonia; si trattò di una scoperta assai feconda, in quanto presagì la nascita di un nuovo concetto estetico, il cubismo.

Fu così che, nella primavera del 1907, nacque un''opera colossale, destinata a inaugurare la stagione cubista di Picasso: si tratta de Les demoiselles d''Avignon. Il soggetto dell''opera è l''interno di un bordello barcellonese nel quale figurano cinque donne nude, realizzate però con un linguaggio clamorosamente innovativo: le forme e i volumi del dipinto, infatti, sono scomposti, e le singole figure sono costruite secondo il criterio della visione simultanea da più lati, presentando in questo modo un aspetto che ignora qualsiasi legge anatomica.

Les demoiselles d''Avignon suscitò scandalo ed espose l''artista all''incomprensione: nessuno, da Leo Stein e Matisse all''amico Apollinaire, riusciva a comprendere il senso della nuova strada intrapresa da Picasso.

La nascita del cubismo

Dopo un''ulteriore vacanza a Horta de Ebro nell''estate 1909, Picasso una volta ritornato a Parigi decise di allontanarsi dal pur pittoresco squallore di Montmatre e di affittare - insieme con Fernarde e il loro gatto siamese - un appartamento al numero 11 di boulevard de Clichy, nei pressi di place Pigalle. Qui si dedicò con assoluta e piena dedizione ai propri quadri cubisti, dando vita a opere quali La femme assise (1909) e Ragazza con mandolino (1910) e i ritratti effigianti Georges Braque (1909), Ambroise Vollard (1909-10) e Daniel-Heinrich Kahnweiler (1910). Con queste tele Picasso, meditando sulla lezione di Cézanne, intendeva studiare il rapporto tra forma e spazio mediante il trattamento schematico dei piani e la scomposizione dei volumi: da queste premesse prese forma una fase che i critici d''arte definiranno «cubismo analitico».

Nel frattempo, nonostante i dissidi iniziali, il cubismo incominciò a riscuotere consensi, soprattutto grazie alla pubblicazione di diversi saggi (Du Cubisme e Les peintres cubistes fra tutti) e all''azione divulgatrice di Kahnweiler, fiero sostenitore dell''arte d''avanguardia che organizzò mostre internazionali a Monaco, Colonia, e Berlino. Picasso, insomma, vide finalmente la propria fama consolidarsi, ma malgrado ciò questi non furono anni assai felici: ai sospetti che volevano l''artista essere l''autore del furto della Gioconda nell''agosto 1911, si aggiunsero dei gravi problemi di salute e alcuni contrasti con Fernande, che lo lasciò nel 1912. Picasso avrebbe poi intrecciato un''altra relazione sentimentale con Eva Gouel, destinata a morire precocemente di tubercolosi nel 1915, lasciando il pittore nello sconforto.

Ma se le vicende private di Picasso erano piuttosto burrascose, lo stesso non si può dire per quelle artistiche. Picasso e Braque, infatti, scettici dei primi esiti cubisti, approdarono al cosiddetto cubismo sintetico, caratterizzato da un ammorbidimento del rigore geometrico delle forme del cubismo analitico, e dall''impiego pressoché sistematico dei papier collé e dei collage.

Ultimi anni e morte

Rimase inoltre distante dal movimento indipendentista catalano, benché durante gli anni giovanili esprimesse un generale supporto e amicizia a numerosi dei suoi attivisti. Nessun movimento politico sembrava coinvolgerlo in grande misura, ciò nonostante si iscrisse al partito comunista francese. Dopo la seconda guerra mondiale Picasso si reiscrisse al partito comunista francese e partecipò a una conferenza internazionale per la pace in Polonia. Le critiche del partito rivolte a un suo ritratto di Stalin ritenuto insufficientemente realistico raffreddarono tuttavia il suo impegno politico, anche se rimase membro del partito fino alla sua morte.

Nel 1949, recandosi a Roma per l''assemblea della presidenza mondiale del movimento dei Partigiani della pace, in una celebre colazione ritrasse con uno schizzo a matita il volto "splendente" di Rita Pisano (anch''ella presente in quell''occasione, e componente di spicco del comitato dei pacifisti), e lo intitolò La jeune fille de Calabre. L''opera è oggi conservata nella collezione privata che apparteneva a Carlo Muscetta.

Durante i suoi soggiorni romani frequenta l''Osteria Fratelli Menghi, intorno alla quale si ritrovano tutti gli artisti di Roma, pittori, poeti, ma anche attori, registi e sceneggiatori.

In seguito, Picasso si dedicò con assoluta dedizione alla rivisitazione dell''immenso patrimonio artistico dell''Occidente; fu così che nacquero Las Meninas, esplicitamente desunto dal celebre dipinto di Velázquez, Le donne di Algeri (in un confronto diretto con la tela di Delacroix), e personali interpretazioni di opere di diversi altri artisti tra i quali Cranach, Poussin, Rembrandt, David, e Courbet. Serbò in particolare una speciale predilezione per la Colazione sull''erba di Manet, sulla quale plasmò diversi disegni e varianti dipinte. A testimonianza del suo valore artistico, nel 1963 venne istituito a Barcellona il Museo Picasso, con dipinti, sculture e opere grafiche picassiane donate da Jaime Sabartés; lo stesso artista donerà poi alla città catalana circa mille opere tra disegni, incisioni e dipinti.

Pablo Picasso muore a Mougins l''8 aprile 1973, stroncato da un edema polmonare acuto, alla veneranda età di 91 anni. Fu sepolto nel parco del castello di Vauvenargues, nel sud della Francia.

Nel 2003 viene inaugurato a Malaga, sua città natale, il Museo Picasso, che raccoglie in esposizione permanente oltre 200 opere dell''artista spagnolo.'
  where id = '1'
  ;


  update artista
    set biografia = 'Il marchese Salvador Dalí, all''anagrafe Salvador Domingo Felipe Jacinto Dalí i Domènech, (AFI: [səɫβəˈðo duˈmɛnək fəˈlip ʒəˈsin ðəˈɫi i duˈmɛnək]; Figueres, 11 maggio 1904 – Figueres, 23 gennaio 1989), è stato un pittore, scultore, scrittore, fotografo, cineasta, designer e sceneggiatore spagnolo.
    Abile pittore e virtuosissimo disegnatore, è celebre principalmente per le immagini suggestive e bizzarre delle sue opere surrealiste: il suo peculiare tocco fu attribuito all''influenza che ebbero su di lui i maestri del Rinascimento.

Il suo talento artistico trovò espressione in svariati ambiti, tra cui il cinema, la scultura e la fotografia, portandolo a collaborare con artisti di ogni settore; egli stesso faceva risalire il suo amore "per tutto ciò che è dorato ed eccessivo, la mia passione per il lusso e la mia predilezione per gli abiti orientali" ad una auto-attribuita discendenza araba, sostenendo che i suoi antenati discendessero dai Mori.

Dotato di grande immaginazione e con il vezzo di assumere atteggiamenti stravaganti, irritò coloro che hanno amato la sua arte e infastidì i suoi detrattori, dal momento che i suoi modi eccentrici hanno in alcuni casi catturato l''attenzione più delle sue opere.

Infanzia e giovinezza

Salvador Dalí nacque a Figueres, una piccola cittadina parte della comarca dell''Empordà, sita nei pressi del confine francese, nella provincia di Girona (in Catalogna), l''11 maggio del 1904 da una benestante famiglia borghese. Suo fratello maggiore, anch''egli di nome Salvador (nato il 12 ottobre 1901), era morto di meningite nove mesi prima, il 1º agosto del 1903. Il padre, Salvador Rafael Aniceto Dalí i Cusi (1872-1950), fu un avvocato e notaio, affetto da una forte rigidità nell''applicazione della disciplina, temperata dalla moglie, Felipa Domènech i Ferrés (1874-1921), che incoraggiò le aspirazioni artistiche del figlio. All''età di cinque anni, Dalí fu condotto sulla tomba del fratello dai genitori, i quali gli fecero credere di esserne la reincarnazione, delirio del quale si convinse e che lo fece impazzire. Di suo fratello Dalí disse: "Ci somigliavamo come due gocce d''acqua, ma rilasciavamo riflessi diversi. Probabilmente lui era una prima versione di me, ma concepito in termini assoluti". Dalì era talmente afflitto dalla morte di suo fratello che alcune notti andava alla tomba a pregare per ore.

Dalí aveva anche una sorella, Ana María (6 gennaio 1908 – 16 maggio 1989) che nel 1949 pubblicò un libro sul fratello, Dalí visto da sua sorella. Tra i suoi amici d''infanzia vi erano i futuri calciatori del Barcellona Emilio Sagi Liñán, detto Sagi-Barba, e Josep Samitier.

Dalí frequentò una scuola d''arte. Nel 1919 durante una vacanza a Cadaqués con la famiglia di Ramon Pichot, un artista locale che faceva regolarmente viaggi a Parigi, scoprì la pittura moderna. L''anno seguente il padre di Dalí organizzò nella residenza di famiglia una mostra dei suoi disegni a carboncino. La prima vera esposizione pubblica la tenne nel 1919 al Teatro Municipale di Figueres.

Nel febbraio del 1921 la madre di Dalí morì di tumore. Dalí aveva sedici anni; in seguito disse che la morte della madre "è stata la disgrazia più grande che mi sia capitata nella vita. La adoravo... Non potevo rassegnarmi alla perdita di una persona su cui contavo per rendere invisibili le inevitabili imperfezioni della mia anima." Poco dopo il padre sposò la sorella della moglie morta. Dalí non si risentì per le nuove nozze, perché amava e rispettava molto la zia.

Nel 1923 Dalì fu accusato d''avere organizzato una protesta (finita con l''intervento della polizia) all''Accademia di San Fernando. In seguito fu espulso per un anno e nel 1924 fu arrestato, episodio che lo portò a dipingere Il bambino malato.
Madrid e Parigi

Nel 1922 Dalí andò a vivere nella Residencia de Estudiantes di Madrid e studiò all''Academia de San Fernando (Accademia di belle arti). Dalí attirava già interesse su di sé con i suoi modi da eccentrico dandy. Portava i capelli e le basette lunghe, si vestiva con giacche, calze lunghe e calzoni alla zuava come gli esteti britannici della fine del XIX secolo. Erano però i suoi dipinti, nei quali mostrava di accostarsi al cubismo, a guadagnargli l''attenzione dei suoi compagni di corso. Nei suoi primi lavori Dalí probabilmente non aveva ancora compreso pienamente i concetti del movimento cubista, poiché all''epoca a Madrid non esistevano aderenti al movimento, e le uniche informazioni di cui disponeva provenivano da articoli di giornale e da un catalogo datogli da Ramon Pichot.

Nel 1924 l''ancora sconosciuto Salvador Dalí realizzò per la prima volta illustrazioni per un libro, l''edizione in catalano del poema Les bruixes de Llers del suo amico e compagno di studi Carles Fages de Climent.

Dalí si accostò anche al movimento dadaista, che lo influenzò per tutta la sua vita. Alla Residencia diventò intimo amico di Pepín Bello, di Luis Buñuel e di Federico García Lorca. L''amicizia con García Lorca era un autentico trasporto amoroso reciproco, anche se Dalí respinse vigorosamente gli approcci erotici del poeta.

Nel 1926 Dalí fu espulso dall''Academia poco prima di sostenere gli esami finali, poiché aveva affermato che nessuno nell''istituto era abbastanza competente da esaminare uno come lui. La sua maestria nella pittura era già evidente dal notevole realismo del Cesto di pane, dipinto in quello stesso anno. Sempre in quell''anno visitò per la prima volta Parigi, dove incontrò Pablo Picasso, che ammirava profondamente. Picasso aveva già sentito parlare molto bene di Dalí da Joan Miró. Negli anni successivi, mentre sviluppava un proprio stile, Dalí realizzò diverse opere fortemente influenzate dall''arte di Picasso e di Miró.

Nelle opere di Dalí alcune tendenze, che rimarranno costanti nel corso degli anni, erano già evidenti negli anni venti. Egli assorbì influssi da moltissimi stili, dalla pittura classica all''avanguardia più estrema. Nelle sue prime opere ci fu l''impronta di Rafael Barradas Tra le influenze in stile classico artisti come Raffaello, Bronzino, Francisco de Zurbarán, Vermeer e Velázquez. Si serviva sia di tecniche classiche che moderne, talvolta impiegandole di volta in volta in opere singole, talvolta usandole tutte nello stesso dipinto. A Barcellona le esposizioni delle sue opere attrassero attenzione, e i critici si divisero tra entusiasti e parecchio perplessi.

Dalí si fece crescere vistosi baffi, ispirati a quelli del grande maestro del Seicento spagnolo Diego Velázquez, e finirono per diventare un tratto inconfondibile e caratteristico del suo aspetto per il resto della vita.

Dal 1929 alla fine della Seconda guerra mondiale
Nel 1929 Dalí collaborò con il regista surrealista Luis Buñuel alla realizzazione del cortometraggio Un chien andalou. Il suo contributo principale consistette nell''aiutare Buñuel a scrivere la sceneggiatura, anche se in seguito affermò di aver avuto un ruolo significativo anche nella realizzazione tecnica del progetto, fatto che non trovò riscontro nelle testimonianze dell''epoca. Nell''agosto di quello stesso anno incontrò la sua musa, fonte di ispirazione e futura moglie Gala, il cui vero nome era Elena Ivanovna Diakonova. Era un''espatriata russa di undici anni più vecchia di lui, allora moglie del poeta surrealista Paul Éluard. In quell''anno Dalí realizzò le sue mostre più importanti, e si unì ufficialmente al gruppo dei surrealisti di Montparnasse. Erano già due anni che il suo lavoro ne era pesantemente influenzato: i surrealisti apprezzavano molto quello che Dalí definì il suo metodo paranoico-critico per esplorare il subconscio e raggiungere un maggior livello di creatività.

Nel frattempo i rapporti tra il pittore e il padre erano vicini alla rottura: Don Salvador Dalí y Cusí disapprovava con forza la storia d''amore tra il figlio e Gala e riteneva che la sua vicinanza ai surrealisti avesse un pessimo effetto sul suo senso morale. Lo strappo definitivo avvenne quando Don Salvador lesse su un quotidiano di Barcellona che a Parigi il figlio aveva appena esposto un disegno del "Sacro Cuore di Gesù Cristo" insieme ad una scritta provocatoria.

Indignato, Don Salvador pretese che il figlio smentisse pubblicamente. Dalí rifiutò, forse per timore di essere allontanato dai surrealisti, e il 28 dicembre 1929 fu cacciato a forza dalla casa paterna. Il padre gli disse che intendeva diseredarlo e gli intimò di non mettere mai più piede a Cadaqués. In seguito Dalí sostenne che, in risposta, mise in mano al padre un preservativo contenente il suo sperma dicendogli "Tieni. Ora non ti devo più nulla!". L''estate successiva Dalí e Gala affittarono un piccolo capanno di pescatori in una baia nei pressi di Port Lligat. In seguito lo acquistò, e nel corso degli anni lo fece ingrandire trasformandolo poco a poco nella sua adorata villa sul mare.


Nel 1931 Dalí dipinse una delle sue opere più famose, La persistenza della memoria[25]. È la surrealistica immagine di alcuni orologi da taschino, flosci e sul punto di liquefarsi: gli orologi che si sciolgono rappresentano la memoria, che invecchiando negli anni perde forza e resistenza. Tale idea è sostenuta anche da altre immagini, come l''ampio paesaggio dai confini indefiniti e un altro orologio, raffigurato mentre è divorato dagli insetti.

Dalí e Gala, dopo aver convissuto a partire dal 1929, si sposarono nel 1934 con una cerimonia civile. Nel 1958 si risposeranno con rito cattolico. Il matrimonio era aperto e raramente fu sessuale. Gala ebbe infatti diversi amanti.

Dalí fu presentato negli Stati Uniti nel 1934 dal mercante d''arte Julian Levy. La sua esposizione di New York, che includeva La persistenza della memoria, creò subito scalpore e interesse. L''alta società lo accolse organizzando uno speciale "Ballo in onore di Dalí", al quale presenziò portando sul petto una scatola di vetro contenente un reggiseno.

Dalí e Gala parteciparono anche ad una festa mascherata a New York, organizzata per loro dall''ereditiera Caresse Crosby: come costume scelsero di vestirsi come il figlioletto di Lindbergh e il suo rapitore. La conseguente reazione scandalizzata della stampa fu tale che Dalí dovette scusarsi. Quando tornò a Parigi i surrealisti lo rimproverarono d''essersi scusato di un gesto surrealista.

Mentre la maggior parte dei surrealisti tendeva ad assumere posizioni di sinistra, Dalí si mantenne ambiguo sul giusto rapporto tra politica e arte. André Breton, uno dei capofila del surrealismo, lo accusò di difendere il "nuovo" e l''"irrazionale" del "fenomeno Hitler", ma Dalí respinse queste affermazioni dicendo: "Non sono un seguace di Hitler né nei fatti né nelle intenzioni". Al dittatore tedesco ispirò tre dipinti: L''enigma di Hitler (1939), Metamorfosi di Hitler in un paesaggio al chiaro di luna (1958) e Hitler si masturba (1973).

Dalí insistette sul concetto che il surrealismo può esistere anche in un contesto apolitico e si rifiutò di condannare esplicitamente il fascismo, uno dei fattori che creò dei problemi con i suoi colleghi. Più tardi, sempre nel 1934, Dalí fu sottoposto a un "processo" a seguito del quale fu formalmente espulso dal gruppo dei surrealisti. Come reazione Dalí dichiarò: "Il surrealismo sono io".

Nel 1936 Dalí partecipò all''Esposizione internazionale surrealista di Londra. Tiene la sua conferenza, intitolata Fantômes paranoïaques authentiques, vestito con tuta e casco da palombaro. Arrivò tenendo in mano una stecca da biliardo e con due levrieri russi al guinzaglio. Si dovrà poi togliere il casco da palombaro perché rimasto senza fiato. Commenta: "Ho solo voluto mostrare che mi stavo ''immergendo a fondo'' nella mente umana."

In quel periodo il principale mecenate di Dalí è il ricchissimo Edward James, che lo aiuta ad emergere nel mondo dell''arte acquistando molte sue opere e supportandolo finanziariamente per due anni. I due diventano buoni amici e il ritratto di James viene anche inserito da Dalí nel dipinto Cigni che riflettono elefanti. Artista e mecenate collaborano anche nella realizzazione di due delle più celebri icone del movimento surrealista: il Telefono aragosta e il Divano a forma di labbra di Mae West.

Nel 1939 Breton conia per il pittore spagnolo il denigratorio soprannome di "Avida Dollars", anagramma di Salvador Dalí che può essere tradotto come bramoso di dollari. Si tratta di un modo per deridere la crescente commercializzazione delle opere di Dalí e la percezione che Dalí stesso abbia cercato di ingrandire la propria figura grazie alla fama e al denaro. Alcuni surrealisti da allora in poi parlano di Dalí solo al passato remoto, come se fosse morto. Il movimento surrealista e alcuni suoi membri (come Ted Joans) continueranno a polemizzare duramente con Dalí fino al momento della sua reale morte e anche oltre.

In Europa scoppia la seconda guerra mondiale e così i Dalí si trasferiscono negli Stati Uniti, dove vivono per otto anni. Dopo il trasferimento Dalí si riavvicina alla pratica del Cattolicesimo. Robert e Nicolas Descharnes hanno scritto "In questo periodo Dalí non ha mai smesso di scrivere".

L''anno seguente Dalí imposta il canovaccio di un film per Jean Gabin intitolato Ondata d''amore. Nel 1942 pubblica la propria autobiografia, La vita segreta di Salvador Dalí. Scrive i cataloghi delle sue esposizioni, come quella alla Knoedler Gallery di New York del 1943. In quel testo spiega: "Il surrealismo perlomeno sarà servito a fornire la prova sperimentale che la completa sterilità e i tentativi di automatizzazione si sono spinti troppo in là e hanno condotto ad un sistema totalitario. ... La pigrizia dei nostri giorni e la totale mancanza di tecnica hanno raggiunto il loro parossismo nel valore psicologico dell''attuale uso che si fa del collage." Scrive anche un romanzo, pubblicato nel 1944, che parla di un salone di moda per automobili. Edwin Cox, sul Miami Herald ne fa una vignetta che ritrae Dalí mentre veste un''automobile con un abito da sera.

Un frate italiano, Gabriele Maria Berardi, sostenne di aver praticato un esorcismo su Dalí nel 1947, mentre si trovava in Francia[34]. Nel 2005 tra le proprietà del frate è stata trovata una scultura che rappresenta Cristo crocefisso; alcuni sostengono che Dalí l''avrebbe data al religioso in segno di gratitudine e due esperti d''arte spagnoli confermano che ci sono fondate ragioni, analizzando lo stile dell''opera, per poterla attribuire a Dalí. Questa vicenda resta controversa.

Nel 1948 visita il Parco dei mostri di Bomarzo, il quale parco ha evidenti richiami simbolico esoterici. Dalì ripreso dalle telecamere dell''Istituto Luce si mostra in posa davanti ai principali monumenti.[35]

Gli ultimi anni in Catalogna e la morte
A partire dal 1951 Dalí tornò a vivere nella sua amata Catalogna. La scelta di vivere in Spagna mentre questa era ancora governata da Franco gli attirò critiche da parte dei progressisti e pure da diversi altri artisti[36]. È anche probabile che il diffuso rifiuto delle ultime opere di Dalí da parte di alcuni surrealisti e critici d''arte sia in parte da attribuirsi a ragioni politiche più che ad una valutazione artistica delle opere stesse.


Nel 1954 è ospite della città di Roma dove organizza uno spettacolo facendo trasportare per le strade della capitale un cubo pitagorico, infine con un ricevimento al Palazzo Pallavicini pronuncia un discorso in latino[37] con cui inaugura così una sua mostra con illustrazione della Divina Commedia.

Nel 1959 André Breton organizza una mostra chiamata Omaggio al surrealismo, fatta per celebrare il quarantesimo anniversario del movimento, che comprende opere di Dalí, Joan Miró, Enrique Tábara e Eugenio Granell. L''anno seguente però, Breton si batté con forza contro l''inserimento della Madonna Sistina di Dalí nell''Esposizione internazionale surrealista di New York.

In questa parte della sua carriera Dalí non si limita ad esprimersi con la pittura, ma sperimenta anche nuove tecniche artistiche e di comunicazione mediatica: realizza opere sviluppando macchie d''inchiostro casuali lanciate sulla tela[40] ed è tra i primi artisti a servirsi di olografie[41]. Molte delle sue opere comprendono illusioni ottiche. Nei suoi ultimi anni, giovani artisti come Andy Warhol definiscono Dalí una delle più importanti influenze sulla Pop art. Dalí si interessa molto anche di scienze naturali e di matematica. Quest''interesse si vede in diversi dei suoi dipinti, specialmente quelli degli anni cinquanta, in cui dipinge i propri soggetti come se fossero composti da corni di rinoceronte. Secondo Dalí il corno di rinoceronte rappresenta la geometria divina perché cresce secondo una spirale logaritmica. Lega il tema del rinoceronte anche a quello della castità e della Vergine Maria. Dalí è affascinato anche dal DNA e dall''ipercubo (un cubo a quattro dimensioni); uno sviluppo dell''ipercubo è ben visibile nel dipinto Crocefissione (Corpus Hypercubus).

Il periodo di Dalí successivo alla seconda guerra mondiale si caratterizza per il suo virtuosismo tecnico e per l''interesse per le illusioni ottiche, la scienza e la religione. La sua devozione per la religione cattolica aumenta e, allo stesso tempo, rimane profondamente impressionato da quanto successo ad Hiroshima e dalla nascita dell''"era atomica". Di conseguenza Dalí definisce questo periodo come quello del misticismo nucleare. In dipinti come La Madonna di Port-Lligat (prima versione, 1949) e Corpus Hypercubus (1954) Dalí cerca di sintetizzare l''iconografia cristiana con immagini di disintegrazione materiale ispirate dalla fisica nucleare.

Incontrò più volte papa Pio XII e papa Giovanni XXIII; dopo la proclamazione del dogma dell''assunzione di Maria da parte di papa Pacelli (1950) e l''incontro privato col pontefice nel 1954 (a cui donò la prima versione della Madonna di Port-Lligat), dipinse i due quadri Assunta antiprotonica e Assunta Canaveral (1956); il riferimento dei bizzarri nomi dei quadri sono al luogo dove gli Stati Uniti effettuavano i lanci di missili di prova dal 1949 (Cape Canaveral, dove sorgerà il John F. Kennedy Space Center negli anni ''60) e a un eccentrico scambio di battute avvenuto tra Dalí e il papa: dopo aver chiesto precisazioni a Pio XII sulle dinamiche dell''assunzione, il pittore concluse che trattavasi del «prodotto di un''esplosione guidata dallo spirito, con protoni e antiprotoni annichilitisi a vicenda, generando una potentissima scarica di energia».


In seguito celebrò il Concilio Vaticano II e papa Roncalli con Madonna Sistina (Orecchio di papa Giovanni) del 1960.

Nel periodo del Misticismo nucleare si inseriscono anche lavori notevoli come La stazione di Perpignan (1965) e Torero allucinogeno (1968-70).

Nel 1960 Dalí inizia a lavorare al Teatro-Museo Dalí nella sua cittadina natale di Figueres; si tratta del suo progetto più grande e richiede la maggior parte delle sue energie fino al 1974. Continuerà poi a fare altre occasionali aggiunte fino alla metà degli anni ottanta. In questo periodo Dalì si occupa anche di Arte Postale . vedi il libro di Eraldo Di Vita "Mailart-Il recupero della memoria".

Nel 1968 Dalí realizza un filmato pubblicitario per la televisione per conto della cioccolata Lanvin e l''anno successivo disegna il logo dei celebri lecca lecca Chupa Chups. Sempre nel 1969 è responsabile della campagna pubblicitaria dell''Eurofestival e crea una grande scultura metallica che viene posta sul palco del Teatro Real di Madrid dove si svolge la manifestazione canora. Nello stesso anno venne pubblicata a New York un''edizione del celebre romanzo di Lewis Carroll Le avventure di Alice nel Paese delle Meraviglie, con illustrazioni di Dalí.

Nel 1980 la salute di Dalí riceve un colpo durissimo; la moglie Gala, colpita da una forma lieve di demenza senile, probabilmente gli somministra un pericoloso cocktail di medicinali senza che gli fossero prescritti, danneggiandogli il sistema nervoso e provocando la precoce fine delle sue capacità artistiche. All''età di 76 anni Dalí è ridotto a un relitto e la sua mano destra trema in maniera terribile in preda a sintomi molto simili a quelli della malattia di Parkinson.

Nel 1982 re Juan Carlos I di Spagna concede a Dalí il titolo di Marchese di Púbol, che più tardi il pittore ripagherà donando al re un disegno (che sarà anche il suo ultimo) quando il re gli farà visita sul letto di morte.

La moglie Gala morì il 10 giugno 1982. Dopo la sua morte, perse la maggior parte della voglia di vivere. Si lasciò deliberatamente disidratare, forse un tentativo di suicidio. Si trasferì da Figueres al Castello di Púbol, che aveva comprato per Gala e dove lei era morta. Nel 1984, in circostanze non del tutto chiare, scoppiò un incendio nella sua camera da letto. Forse si trattava di un altro tentativo di suicidio di Dalí o forse semplicemente una negligenza del personale. In ogni caso Dalí fu salvato e tornò a Figueres, dove un gruppo di suoi amici, protettori e colleghi artisti ritenevano fosse meglio trascorrere i suoi ultimi anni, nel suo Teatro-museo.


Alcune voci sostengono che Dalí sia stato forzato dai suoi tutori a firmare tele vuote, usate anche dopo la sua morte, per produrre falsi. Il risultato fu che i mercanti d''arte tendono a diffidare delle opere attribuite a Dalí e risalenti all''ultimo periodo.

Nel novembre 1988 Dalí fu ricoverato in ospedale per un attacco di cuore e il 5 dicembre ricevette la visita di re Juan Carlos che rivelò di essere sempre stato un suo grande ammiratore.

Il 23 gennaio 1989, mentre ascoltava il suo disco preferito, Tristano e Isotta di Wagner, morì per un altro attacco di cuore. Aveva 84 anni. Fu sepolto all''interno del suo Teatro-Museo di Figueres, dall''altro lato della strada rispetto alla chiesa in cui era stato battezzato e dove si svolse il suo funerale, e solo a tre isolati dalla casa in cui era nato.

Nel 2017 il corpo di Dalí fu riesumato brevemente per un test del DNA: una donna, Pilar Abel Martínez, figlia di una cameriera, sostenne di esserne la figlia biologica; tuttavia il test ha dato esito negativo nel 2018.'
    where id = '2'
;


    update artista
      set biografia = 'Vincent Willem van Gogh ([ˈʋɪnsɛnt ˈʋɪlɛm fɑn ˈɣɔx] ascolta[?·info]; Zundert, 30 marzo 1853 – Auvers-sur-Oise, 29 luglio 1890) è stato un pittore olandese.

Fu autore di quasi novecento dipinti e di più di mille disegni, senza contare i numerosi schizzi non portati a termine e i tanti appunti destinati probabilmente all''imitazione di disegni artistici di provenienza giapponese. Tanto geniale quanto incompreso se non addirittura disprezzato in vita, Van Gogh influenzò l''arte del XX secolo; dopo aver trascorso diversi anni soffrendo di frequenti disturbi mentali, morì all''età di trentasette anni.

Iniziò a disegnare da bambino nonostante le critiche del padre, pastore protestante che continuò ad impartirgli delle norme severe; continuò comunque a disegnare finché non decise di diventare un pittore vero e proprio. Iniziò a dipingere tardi, all''età di ventisette anni, realizzando molte delle sue opere più note nel corso degli ultimi due anni di vita. I suoi soggetti consistevano in autoritratti, paesaggi, nature morte di fiori, dipinti con cipressi, rappresentazione di campi di grano e girasoli. La sua formazione si deve all''esempio del realismo paesaggistico dei pittori di Barbizon e del messaggio etico e sociale di Jean-François Millet.
Notizie della famiglia dei van Gogh si rintracciano a L''Aia fin dalla metà del XVII secolo e a partire dal Settecento quella famiglia trasmise di padre in figlio il mestiere di orefice. Nel primo Ottocento si ha notizia di un Vincent van Gogh (1789-1874), pastore calvinista e padre di undici figli che praticavano diverse attività: tre di loro erano mercanti d''arte, mentre si sa che Theodorus van Gogh (1822-1885) dal 1º aprile 1849 fu un pastore della società riformata olandese, residente presso la piccola comunità di Groot-Zundert, un villaggio vicino Brabante ,di circa seimila abitanti. Sposatosi nel 1851 con Anna Cornelia Carbentus (1819-1907), figlia di un facoltoso rilegatore di libri della corte olandese, Theodorus generò con lei un figlio, Vincent Willem Maria, che tuttavia il 30 marzo 1852 fu partorito già morto.

Esattamente l''anno dopo la Carbentus diede alla luce il primo figlio, il futuro pittore, che verrà battezzato Vincent Willem in ricordo del defunto fratellino: «fin dal primo giorno, quindi, la vita di Vincent fu segnata da una triste coincidenza» commenta il critico Rainer Metzger «numerosi psicologi, per contro, non mancarono di sottolineare che questo bambino, in un certo senso, era venuto al mondo nell''anniversario della morte di suo fratello e videro in ciò la radice dell''inclinazione dell''artista al paradosso». Theodorus e Cornelia, in ogni caso, ebbero altri cinque figli: Anna Cornelia (1855-1930), Théodorus junior, ben presto denominato semplicemente Théo (1º maggio 1857-25 gennaio 1891), Elisabeth (1859-1936), Wilhelmina Jacoba (1862-1941) e Cornelis (1867-1900).[12] Dal gennaio 1861 al settembre 1864 Vincent van Gogh studiò alla scuola del paese e dal 1º ottobre 1864 frequentò un collegio della vicina Zevenbergen, dove apprese il francese, l''inglese, il tedesco e l''arte del disegno. Dal 1866 frequentò un''altra scuola presbiteriale, la scuola secondaria di Tilburg, con professore di arte il pittore Constant Cornelis Huijsmans. Ma il 19 marzo 1868, a causa dello scarso rendimento nonché per via di alcuni problemi economici sofferti dal padre, ritornò a Zundert senza aver concluso gli studi. Furono tutto sommato anni felici e lieti che verranno ricordati da Vincent con grande nostalgia, come leggiamo nella lettera 573:

«Durante la mia malattia ho visto accanto a me ogni stanza della casa di Zundert, ogni strada, ogni pianta del giardino, i dintorni, i campi, i vicini, il cimitero, la chiesa col suo orto e persino il nido di gazze sulla grande acacia del cimitero»

(Vincent van Gogh)

Il lavoro nella casa d''arte Goupil (1869-1875)

La scarsità del suo profitto scolastico convinse la famiglia a trovargli un impiego: il primo a farsi avanti fu lo zio paterno Vincent detto «Cent» (1811-1889), già mercante d''antiquariato. Egli persuase il fratello (il padre di Vincent) a far sospendere gli studi al nipote in modo da metterlo al lavoro nel più breve tempo possibile. Infatti nel luglio del 1869 Cent raccomandò il nipote alla filiale dell''Aia della Goupil & Co, una notissima casa d''arte specializzata nella riproduzione di stampe, ma che non esitava ad avvalersi della collaborazione di pittori celebri. Il giovane Vincent, all''inizio si dedicò con grande coscienziosità e dedizione al suo lavoro, che consisteva nel vendere litografie, fotografie, dipinti, calcografie, acqueforti o riproduzioni, per lo più di opere della scuola dell''Aia o dei pittori di Barbizon: tale mestiere, inoltre, lo stimolava ad approfondire tematiche culturali ed artistiche, a leggere e a frequentare musei e collezioni d''arte. Mantenne i contatti con la famiglia, che dal gennaio del 1871 si era trasferita a Helvoirt, dove il padre Theodorus svolgeva la sua attività pastorale. Vincent oltre a incontrare frequentemente a L''Aia il fratello Théo, intraprese con lui una corrispondenza che sarebbe durata per tutta la vita.

Nel 1873 il giovane Vincent fu trasferito nella filiale Goupil di Bruxelles e a maggio in quella di Londra. Durante il trasferimento nella capitale inglese van Gogh si fermò per alcuni giorni a Helvoirt, dai genitori, per poi fare affrettatamente sosta a Parigi, rimanendo affascinato dalla bellezza della città e dai fermenti culturali che l''animavano: la visita del Louvre e delle esposizioni di quadri al Salon lo colpirono profondamente. A Londra disegnò schizzi di scorci cittadini, che tuttavia non conservò (ne rimane solo uno, peraltro assai rovinato e scoperto nel 1977, raffigurante la casa dove visse). Qui il giovane Vincent condusse una vita schiva e appartata e fu funestato dalla prima, cocentissima delusione amorosa. Egli, infatti, era accecato da un''ardente infatuazione nei confronti di Eugenie Loyer, figlia di Ursula, proprietaria della pensione presso la quale risiedeva: quando alla fine osò dichiararsi, van Gogh - inesperto di questioni amorose - scoprì tuttavia che lamata Eugenie era già fidanzata.

Subito dopo esser stato respinto van Gogh precipitò in una profonda crisi depressiva e, per alleviare la sua prostrazione, chiese e ottenne di essere trasferito a L''Aia. Da questo momento iniziò a trascurare il suo lavoro, suscitando la disapprovazione dei superiori e dei colleghi: a poco servirono le premure dello zio Cent, che tentò di aiutare il nipote allocandolo presso la succursale parigina della Goupil e, poi, nuovamente a Londra. I suoi interessi erano ormai definitivamente rivolti verso le tematiche religiose: la Bibbia aveva ormai preso il posto di quei libri che avevano sì conquistato il suo cuore, ma che ora risultavano inadeguati al suo slancio religioso (nella lettera 36a, rivolta a Théo, leggiamo: «Ho intenzione di distruggere tutti i miei libri: Michelet, ecc. Vorrei che tu facessi altrettanto»). Van Gogh, tuttavia, non mancò affatto di coltivare la sua passione artistica, frequentando i musei parigini più prestigiosi e familiarizzando con le opere di Jean-François Millet e di Jean-Baptiste Camille Corot e con la pittura seicentesca olandese. I dirigenti della Goupil erano sempre più scontenti di lui, anche perché nel Natale del 1875 lasciò senza preavviso il lavoro, per andare a trovare la famiglia, che allora risiedeva a Etten, un piccolo paese nei pressi di Breda: anche il suo comportamento professionale, d''altronde, era totalmente insoddisfacente e addirittura dannoso per la salute finanziaria dell''azienda («i suoi ripetuti consigli ai clienti di acquistare pezzi a buon mercato facevano onore, è vero, alla sua onestà, ma non incrementavano certo il volume d''affari», osserva giustamente il Metzger). Vincent, ormai, riteneva sterile e mortificante la collaborazione con un''attività che sentiva profondamente estranea e il 1º aprile 1876 fu congedato.

La mutilazione dell''orecchio

Gauguin giunse ad Arles il 29 ottobre 1888 e, al contrario di van Gogh, ne rimase deluso, definendola «il luogo più sporco del Mezzogiorno» e della Provenza. Il sogno di van Gogh di fondare un''associazione di pittori che perseguissero un''arte nuova lo lasciava scettico: in realtà Gauguin desiderava ardentemente trasferirsi ai Tropici non appena ne avesse avuta la possibilità. Come se non bastasse era irritato dalle abitudini disordinate di Vincent e dalla sua scarsa oculatezza nell''amministrare il denaro che avevano messo in comune. A giudizio di Gauguin, il soggiorno arlesiano e la permanenza con un personaggio strambo come van Gogh erano assolutamente mortificanti per la sua maturazione pittorica. Non fa neanche mistero della sua arrogante insoddisfazione, tanto che una volta confidò all''amico Schuffenecker le seguenti parole:

«Ad Arles mi sento un estraneo, trovo tutto piccolo e povero, il posto e le persone. Vincent e io andiamo in genere poco d''accordo, soprattutto quando si tratta di pittura. Lui ammira Dauet, Daubigny, Ziem e il grande Rousseau, tutta gente che io non posso soffrire. Invece disprezza Ingres, Raffaello, Degas, tutta gente che io ammiro; io gli rispondo: "sissignore, avete ragione", per avere pace. I miei quadri gli piacciono, ma quando li faccio trova sempre che questo o quest''altro non va. Lui è un romantico e io sono più vicino ai primitivi. Per quanto riguarda i colori, cerca la casualità del pastoso (come Monticelli), mentre io, per parte mia, detesto ogni pasticcio tecnico»

Van Gogh, al contrario, manifestava un''aperta ammirazione per Gauguin, che considerava un artista superiore; riteneva che le proprie teorie artistiche fossero banali se confrontate con le sue. Egli, inoltre, tendeva a valutare l''esperienza «monastica» presso la Casa Gialla con molta meno oggettività rispetto a Gauguin: come osservato d''altronde dal Metzger, «questo fallimento costava assai meno a Gauguin, una partenza e due mesi persi, mentre van Gogh pagava con la distruzione della propria concezione del mondo, con il crollo di un''utopia faticosamente inseguita nel proprio lavoro: la comunità degli artisti era il perno della propria interpretazione di sé. Con Gauguin perdeva parte della propria identità, [la quale] era inscindibilmente legata all''arte in cui si coagulava».

Nei primi giorni del dicembre 1888 Gauguin ritrasse van Gogh, rappresentandolo nell''atto del dipingere girasoli. Vincent commentò: «Sono certamente io, ma io divenuto pazzo». Nelle sue memorie Gauguin scrive che quella sera stessa, al caffè, i due pittori bevvero molto e improvvisamente Vincent scagliò il suo bicchiere contro il viso di Gauguin che riuscì a evitarlo, con gran spavento. Dopo quell''episodio seguirono giorni di tensione e i due litigarono in modi plateali anche in occasione di una visita al museo di Montpellier per osservare le opere di Delacroix e di Courbet: era ormai palese come i desideri di Vincent di intrecciare una fratellanza artistica con Gauguin fossero velleitari, se non ingenui. Fu così che Gauguin prese la decisione di partire da Arles.


Vincent Van Gogh, Il cortile dell''ospedale di Arles, olio su tela (74x92 cm), Collezione Oskar Reinhart Am Römerholz, Winterthur, Svizzera, F 519. Il dipinto fu realizzato nel 1889 dove Van Gogh era stato ricoverato a forza dal dicembre 1888 al maggio 1889 dopo il taglio dell''orecchio
Le «tensioni eccessive» (così le definì Vincent) tra i due toccarono il massimo apice di virulenza il pomeriggio del 23 dicembre, quando accadde un episodio sconvolgente: van Gogh - la ricostruzione del fatto è tuttavia controversa - dopo un accesissimo alterco rincorse per strada Gauguin con un rasoio, rinunciando ad aggredirlo quando Gauguin si voltò per affrontarlo. Gauguin corse in albergo con i bagagli, preparandosi a lasciare Arles; van Gogh invece, in preda a disperate allucinazioni, rivolse verso di sé la sua furia lesionista tagliandosi il lobo dell''orecchio sinistro. Il macabro trofeo, sanguinante com''era, fu poi avvolto nella carta di giornale e consegnato come «regalo» a Rachele, una prostituta del bordello che i due pittori erano soliti frequentare, tornando poi a dormire a casa sua. La mattina seguente, la polizia, trovandolo solo e addormentato (macchie di sangue erano su tutte le pareti della casa, e una lampada accesa era davanti a una finestra), lo fece ricoverare nel nosocomio dell''Hotel-Dieu, l''antico ospedale di Arles. Due storici di Amburgo, Hans Kaufmann e Rita Wildegans, sostengono nel libro L''orecchio di van Gogh, Paul Gauguin e il patto del silenzio che fu Gauguin a mutilare l''amico dopo la lite; l''esperto francese Pascal Bonafoux, tuttavia, ritiene più verosimilmente che questa teoria sia clamorosamente errata. Fatto sta che, grazie alle amorevoli cure del dottor Félix Rey, van Gogh riuscì a superare i giorni più critici e uscì dal nosocomio il 7 gennaio 1889.

Ad Auvers-sur-Oise (1890)

Una volta decisa la partenza - «qui l''ambiente comincia a pesarmi più di quanto possa esprimere: ho pazientato più di un anno, ho bisogno d''aria, mi sento oppresso dalla noia e dal dolore»[62] - i soggetti degli ultimi dipinti di Vincent a Saint-Rémy si alleggeriscono: sono rose e iris su un fondo uniforme, ora con un «effetto dolce e armonioso per la combinazione dei verdi, rosa, violetti», ora con «un effetto di complementari terribilmente disparati che si esaltano per la loro opposizione».

Il 16 maggio 1890 Vincent lasciò definitivamente Saint-Rémy per raggiungere il fratello a Parigi. Il direttore della clinica aveva rilasciato regolare autorizzazione e stilato l''ultima scheda. Vincent arrivò a Parigi il 17 maggio e conobbe per la prima volta il nipotino e la signora van Gogh, che definì il cognato un uomo «forte, largo di spalle, con un colorito sano, un''espressione allegra e un''aria decisa», decisamente più in salute del fratello, che invece era tormentato da una tosse cronica. Passò tre giorni in casa di Théo, riesaminando i tanti suoi quadri che nel tempo gli aveva mandato, visitò il Salon, dove rimase colpito da un Puvis de Chavannes, e una mostra d''arte giapponese. Poi, come convenuto, il 21 maggio partì per stabilirsi a Auvers-sur-Oise, un villaggio a una trentina di chilometri da Parigi dove risiedeva un medico amico di Théo, il dottor Paul-Ferdinand Gachet (1828-1909), che si sarebbe preso cura di lui. Van Gogh prese alloggio nel caffè-locanda gestito dai coniugi Ravoux, nella piazza del Municipio. Sembrò soddisfatto della nuova sistemazione: «Auvers è di una bellezza severa, e la campagna è caratteristica e pittoresca.»

Il sessantaduenne dottor Gachet, omeopata, darwinista, favorevole alla cremazione dei defunti - un''opinione scandalosa a quei tempi - repubblicano, socialista e libero pensatore, era un personaggio molto noto ad Auvers, dove abitava in un villino che dominava il paese. Laureatosi a Montpellier in medicina generale e con un particolare interesse per la psichiatria, esercitò a lungo a Parigi, dove conobbe molti artisti, da Victor Hugo a Gustave Courbet, da Manet a Renoir e Cézanne, e la sua casa conservava parecchie tele di impressionisti, oltre a una notevole quantità di soprammobili e oggetti vari che van Gogh chiamava «nere anticaglie».

Fu anche disegnatore, pittore - partecipò a esposizioni firmandosi con lo pseudonimo di van Ryssel - e incisore dilettante: nella macchina presente in casa Cézanne, Pissarro e Guillaumin eseguirono alcune incisioni e fu su suo consiglio che van Gogh eseguì la sua unica acquaforte che ritrae lo stesso dottor Gachet. La sua competenza nelle cose artistiche, certe comuni preferenze e anche il suo garbo e la sua natura fondamentalmente malinconica fecero presa sul pittore, che frequentò spesso la sua casa, ritraendo due volte la figlia Marguerite e non mancando di fargli il ritratto, che replicò anche in una seconda versione.


In giugno Théo e la famiglia gli fecero visita e progettarono la possibilità di affittare ad Auvers una casa dove Vincent avrebbe potuto vivere insieme a qualche altro artista. La visita fu ricambiata da Vincent il 6 luglio a Parigi, dove incontrò Toulouse-Lautrec e, per la prima volta, il critico d''arte Albert Aurier. In quei giorni Théo, oltre ad avere il figlio seriamente malato, era afflitto da problemi di lavoro: così, Vincent preferì ritornare presto ad Auvers, non sopportando il clima di tensione che percepiva nella famiglia del fratello. Van Gogh cominciò a temere una nuova crisi, e questa eventualità lo rese particolarmente nervoso: ebbe una violenta lite con Gachet per motivi banali - gli rimproverò di non aver fatto incorniciare una tela di Guillaumin che il dottore aveva in casa - e scrisse al fratello:

«Credo che non bisogna contare in alcun modo sul dottor Gachet. Mi sembra che sia più malato di me, o almeno quanto me. Ora, quando un cieco guida un altro cieco, non andranno a finire tutti e due nel fosso? Non so che dire. Certamente la mia ultima crisi, che fu terribile, fu in gran parte dovuta all''influenza di altri malati; e poi la prigione mi opprimeva e il dottor Peyron non ci faceva caso, lasciandomi vegetare in quell''ambiente profondamente corrotto.»

Nel periodo auversiano, in poco meno che due mesi, Vincent realizzò il Paesaggio con cielo tempestoso, il Campo di grano con volo di corvi e Il giardino di Daubigny e scrisse:

«Mi sono rimesso al lavoro, anche se il pennello mi casca quasi di mano e, sapendo perfettamente ciò che volevo, ho ancora dipinto tre grandi tele. Sono immense distese di grano sotto cieli tormentati, e non ho avuto difficoltà per cercare di esprimere la mia tristezza, l''estrema solitudine.»

È certo che egli non faceva nulla per alleviare la sua solitudine nonostante ne fosse oppresso: non frequentò mai i non pochi pittori che soggiornavano ad Auvers - uno di essi, l''olandese Anton Hirschig, alloggiava nel suo stesso albergo - anche se forse loro stessi, spaventati, lo evitavano, a causa della sua malattia. Per lo stesso Hirschig egli «aveva un''espressione assolutamente folle, con gli occhi infuocati, che non osavo guardare».

La morte misteriosa

La sera del 27 luglio 1890, una domenica, dopo essere uscito per dipingere i suoi quadri come al solito nelle campagne che circondavano il paese, rientrò la sera sofferente nella locanda e si rifugiò subito nella sua camera. Ravoux, non vedendolo a pranzo, salì in camera sua, trovandolo disteso e sanguinante sul letto: a lui van Gogh confessò di essersi sparato un colpo di rivoltella allo stomaco in un campo vicino.

Un trafiletto de L''Écho Pontoisien del 7 agosto 1890 che annuncia la morte di van Gogh.
Al dottor Gachet - che, non potendo estrarre il proiettile, si limitò ad applicare una fasciatura mentre gli esprimeva, comunque, la speranza di salvarlo - rispose che aveva tentato con coscienza il suicidio e che, se fosse sopravvissuto, avrebbe dovuto «riprovarci»: «volevo uccidermi, ma ho fatto cilecca». Rifiutò di dare spiegazioni del suo gesto ai gendarmi e, con il fratello Théo che, avvertito, era accorso la mattina dopo, trascorse tutto il 28 luglio, fumando la pipa e chiacchierando seduto sul letto: gli confidò ancora che la sua «tristezza non avrà mai fine». Sembra che le sue ultime parole siano state «ora vorrei ritornare». Poco dopo ebbe un accesso di soffocamento, poi perse conoscenza e morì quella notte stessa, verso l''1:30 del 29 luglio. In tasca gli trovarono una lettera non spedita a Théo, dove aveva scritto, tra l''altro: «Vorrei scriverti molte cose ma ne sento l''inutilità [...] per il mio lavoro io rischio la vita e ho compromesso a metà la mia ragione».

Essendo il pittore morto suicida, il parroco di Auvers si rifiutò di benedirne la salma, e il carro funebre fu fornito da un municipio vicino. La vicina cittadina di Méry, comunque, acconsentì alla sepoltura e il funerale si tenne il 30 luglio. Van Gogh venne sepolto adagiato in una bara, rivestita da un drappo bianco e ricoperta da mazzi di fiori, dai girasoli che amava tanto, dalle dalie e da altri fiori gialli. Oltre a Théo e al dottor Gachet furono presenti pochi amici giunti da Parigi: Lucien Pissarro, figlio di Camille, Émile Bernard, père Tanguy.


Oggi Vincent e Théo riposano insieme nel cimitero di Auvers, in Francia.
Pochi mesi dopo, anche Théo van Gogh, distrutto dopo la morte del fratello, venne ricoverato in una clinica parigina per malattie mentali. Dopo un apparente miglioramento, si trasferì a Utrecht, dove morì il 25 gennaio 1891, a sei mesi di distanza da Vincent, oppresso dai sensi di colpa di non avere aiutato il fratello a sufficienza. Nel 1914, le sue spoglie, per volontà della vedova Johanna van Gogh-Bonger, furono trasferite ad Auvers e tumulate accanto a quelle dell''amato fratello. Johanna chiese che un ramoscello di edera del giardino del Dottor Gachet venisse piantato tra le due pietre tombali, e ancora oggi le lapidi sono immerse in un groviglio di edera.

Nel 2011, gli storici dell''arte Steven Naifeh e Gregory White Smith, nella biografia Van Gogh: The Life, hanno avanzato l''ipotesi che van Gogh non sarebbe morto suicida. Ipotizzano che l''artista, mentre stava dipingendo in un campo, sarebbe stato colpito da un colpo di rivoltella sparato accidentalmente da due ragazzi che si divertivano a tormentarlo giocando con una pistola. Secondo gli autori, Vincent - profondamente desideroso di morte, depresso e consapevole dei guai in cui sarebbero incorsi i ragazzi - non avrebbe rivelato a nessuno la circostanza, lasciando credere di essersi sparato da solo. Alla base di queste interpretazioni ci sono alcune dicerie raccolte in loco dallo storico dell''arte John Rewald nel 1930, delle quali, nel libro, non si cita la fonte, e un''intervista del 1956, ugualmente priva di riferimenti bibliografici, a René Secretan, indicato, assieme al fratello Gaston, come il responsabile. La comunità accademica non ha accolto queste ipotesi e Leo Jansen, curatore del van Gogh Museum di Amsterdam ha definito queste conclusioni «non sufficientemente provate» affermando, peraltro, che «i due autori non hanno trovato fatti nuovi, ma li hanno interpretati in maniera diversa».

Recentemente l''attore Willem Dafoe ha interpretato Vincent Van Gogh nella pellicola, dal titolo Van Gogh - Sulla soglia dell''eternità (At Eternity''s Gate), che gli è valsa la Coppa Volpi al Festival del Cinema di Venezia.
'
      where id = '3'
;



      update artista
        set biografia = 'Gustav Klimt (Baumgarten, 14 luglio 1862 – Vienna, 6 febbraio 1918) è stato un pittore austriaco, uno dei più significativi artisti della secessione viennese.

La Giovinezza e la formazione artistica

Gustav Klimt nacque il 14 luglio 1862 a Baumgarten, allora sobborgo di Vienna, secondo di sette fratelli (quattro femmine e tre maschi): il padre Ernst Klimt (1834-1892), nativo della Boemia, era un orafo e la madre, Anna Finster (1836-1915), era una donna colta e versata nella musica lirica. Tutti i figli maschi della famiglia Klimt riveleranno in futuro una forte inclinazione per l''arte: i fratelli minori di Gustav, Ernst e Georg, diverranno anch''essi pittori. Frequentò per otto anni la scuola primaria nel settimo distretto comunale di Vienna e successivamente nel 1876, malgrado le pressanti ristrettezze economiche, il quattordicenne Gustav venne ammesso a frequentare la scuola d''arte e mestieri dell''Austria (Kunstgewerbeschule), dove studiò arte applicata fino al 1883, cominciando a formare personali orientamenti di gusto e imparando a padroneggiare diverse tecniche artistiche, dal mosaico alla ceramica, nel rispetto dei canoni accademici e della storia dell''arte del passato; fondamentale fu qui l''influenza esercitata da Ferdinand Laufberger e Hans Makart, sui quali condusse i primi studi.

I frutti di tanto arricchimento non poterono tardare: già tre anni dopo, al giovane Gustav venne commissionata la decorazione del cortile del Kunsthistorisches Museum, su progetto dello stesso Laufberger. Da questo momento in poi, gli incarichi iniziarono a moltiplicarsi: nel 1880 dipinse le quattro allegorie del Palazzo Sturany a Vienna e il soffitto della Kurhaus di Karlsbad, mentre tra il 1886 e il 1888 si dedicò, con il fratello e l''amico Franz von Matsch, alla decorazione del Burgtheater, in una serie di pannelli raffiguranti teatri dell''antichità o del mondo contemporaneo. I tre iniziarono a guadagnare ben presto notorietà negli ambienti artistici e le commissioni dei primi ritratti garantiranno loro discreto successo e tranquillità economica.

A testimonianza del suo riconoscimento artistico, nel 1888 Klimt ricevette una benemerenza ufficiale dall''imperatore Francesco Giuseppe e le università di Monaco e Vienna lo nominarono membro onorario. Nel 1892, a pochi mesi dalla morte del padre, anche il fratello Ernst morì improvvisamente: a questi lutti, che lasciarono un segno profondo anche nella sua produzione artistica, seguirono ben sei anni d''inattività. Nello stesso periodo avvenne l''incontro con Emilie Flöge che, pur essendo a conoscenza delle relazioni che il pittore intratteneva con altre donne (negli anni novanta del XIX secolo Klimt sarà il padre riconosciuto di almeno quattordici figli), gli sarà compagna fino alla morte. Nel quadro intitolato Amore, del 1895, si presentano già alcune caratteristiche di forma e contenuti che accompagneranno Klimt per tutta la sua carriera.

L''astro del secessionismo viennese

Tuttavia, sempre più in contrasto con i rigidi canoni accademici, nel 1897 Klimt fondò insieme ad altri diciannove artisti la Wiener Sezession (secessione viennese), attuando anche il progetto di un periodico-manifesto del gruppo, Ver Sacrum (Primavera sacra), del quale verranno pubblicati 96 numeri, fino al 1903. Gli artisti della Secessione aspiravano, oltre a portare l''arte al di fuori dei confini della tradizione accademica, in un florilegio di arti plastiche, design e architettura, anche a una rinascita delle arti e dei mestieri: non vi era uno stile prediletto, sicché sotto l''egida di questo gruppo si riunirono i simbolisti, i naturalisti e i modernisti. Il simbolo del Secessionismo era la Pallade Atena, dea greca della saggezza e delle buone cause, che Klimt raffigurerà nel 1898 in uno dei suoi capolavori.



Nel 1894 l''università di Vienna commissionò all''artista la decorazione del soffitto dell''aula magna sul tema illuminista del trionfo della Luce sulle Tenebre, da sviluppare su tre facoltà: Filosofia, Medicina e Giurisprudenza. I lavori furono rimandati per anni e, quando i pannelli vennero presentati, vennero rifiutati e aspramente criticati dai committenti, che avevano immaginato una sobria rappresentazione del progresso della cultura, ma che si ritrovarono un turbinio di corpi sensuali. Noncurante delle critiche, in quel giro d''anni Klimt realizzò anche il Fregio di Beethoven, concepito per la quattordicesima mostra secessionista viennese, allestita dall''aprile al giugno 1902 nei locali del Palazzo della Secessione: questo trionfo di immagini visionarie, enigmatiche, dionisiache che sottintende le angosce e le aspirazioni dell''uomo moderno è una delle migliori testimonianze del genio provocatore di Klimt, che da lì a poco verrà travolto dall''uragano artistico da lui stesso causato.

Il periodo aureo


Nel 1903 Klimt si recò due volte a Ravenna, dove conobbe lo sfarzo dei mosaici bizantini: l''oro musivo, eco dei lavori del padre e del fratello in oreficeria, gli suggerì un nuovo modo di trasfigurare la realtà e modulare le parti piatte e plastiche con passaggi tonali, dall''opaco al brillante. Fu dal connubio tra la ricchezza dei mosaici ravennati e i neonati Wiener Werkstatte (Laboratori Viennesi) ai quali l''artista si avvicinò tornato in patria che nacquero alcuni dei capolavori klimtiani più celebri, come Giuditta I (1901), il Ritratto di Adele Bloch-Bauer I (1907) e Il bacio (1907-08), tutte opere dove Klimt si presenta convertito all''oro di Bisanzio.

È il dominio dell''oro che contraddistingue le tele del cosiddetto «periodo aureo» o «dorato» di Klimt, che è ormai prossimo ai quarant''anni. Altre peculiarità delle opere del periodo aureo sono la spiccata bidimensionalità del loro stile, che si arricchisce dando maggiore risalto al linearismo e alle campiture, l''impiego di pregnanti simbolismi e la prevalenza di figure femminili, che il pennello di Klimt ricolma di un armonioso erotismo. Al periodo aureo appartengono numerose opere dell''artista viennese: di queste, oltre quelle già citate, degne di nota sono Le tre età della donna (1905), la Danae (1907-1908) e L''albero della vita (1905-1909), a sua volta facente parte del più ampio progetto decorativo di palazzo Stoclet.

Il periodo aureo si chiuse nel 1909 con l''esecuzione di Giuditta II, seconda raffigurazione dell''eroina ebrea che liberò la propria città dalla dominazione assira: l''opera, caratterizzata da cromie più scure e forti, darà infatti avvio al cosiddetto «periodo maturo» dell''artista.

Il periodo maturo e la morte

Dopo la stesura di Giuditta II, nel 1909, Klimt ebbe un periodo di crisi esistenziale e artistica. Il mito della Belle Époque era ormai giunto al tramonto, così come i fasti dell''Impero austro-ungarico, che collasserà definitivamente con lo scoppio della prima guerra mondiale. Analogamente, Klimt iniziò a mettere in discussione la legittimità della propria arte, soprattutto quando venne a contatto con la produzione di artisti come Van Gogh, Matisse, Toulouse-Lautrec: dal punto di vista stilistico, il «periodo maturo» (o «terza fase klimtiana», detto anche periodo fiorito) è caratterizzato dalla fusione di queste influenze e dall''abbandono del fulgore dell''oro e delle eleganti linee Art Nouveau.

Determinante per questa contaminazione fu anche l''incontro con la pittura espressionista, che in ambito viennese trovò due grandi interpreti: Egon Schiele e Oskar Kokoschka, già suoi allievi. Notevole fu anche il decisivo influsso esercitato dall''Impressionismo, che emerge nei diversi paesaggi che Klimt dipinse in questo periodo, che ricordano molto da vicino la maniera di Claude Monet.

Scopo di Klimt in questo periodo, infatti, era quello di ricercare una modalità espressiva meno sofisticata e più spontanea: egli rispose a quest''esigenza adottando una tavolozza più colorata, con cromatismi più accesi, e minimizzando (come già accennato) l''uso dell''oro e delle linee. Nonostante i profondi mutamenti di questi anni, l''artista viennese fu espositore alla Biennale di Venezia nel 1910, vincendo pure nel 1911 il primo premio dell''Esposizione Internazionale di Arte di Roma con Le Tre Età della Donna.[11] Poco prima di morire, tra il 1916 e il 1917, dipinse «Ritratto di signora» che fu acquistato nel 1925 dall’industriale piacentino Giuseppe Ricci Oddi per 30 000 lire dal gallerista milanese Luigi Scopinich che, a sua volta, lo aveva acquistato a Vienna dal suo «collega» Gustav Nebehay. Il mecenate lo esponeva nella sala da biliardo di casa sua, ma poi lo trasferirà nella sede della Galleria sin dalla sua apertura nell''ottobre del 1931. Come ha raccontato Alessio Ribaudo sul Corriere della Sera[12] nel 1996 l’allora studentessa piacentina Claudia Maga aveva scoperto che l’olio su tela in realtà ne nascondeva un altro del maestro del secessionismo viennese. Un’opera data erroneamente per persa dai critici d’arte: il «Ritratto di ragazza» — dipinto probabilmente nel 1910 ed esposto due anni dopo a Dresda alla Grosse Kunstausstellung — in cui la protagonista indossava un voluminoso cappello a larghe tese, una vaporosa sciarpa fasciante l’esile collo e mostrava un tenero décolleté. Nel 1997, il capolavoro fu rubato ed è stato ritrovato a dicembre 2019. Adesso è custodito nel caveau della Banca di Piacenza e presto verrà ricollocato nella Galleria Ricci-Oddi. Il suo valore è stimato fra i 60 e i 100 milioni di euro.

L''attività di Klimt si interruppe l''11 gennaio 1918 quando, di ritorno da un viaggio in Romania, fu colpito da ictus e polmonite dovuta alla pandemia di quell''anno di influenza spagnola. Fu sepolto nel cimitero di Hietzing a Vienna. Numerosi suoi dipinti rimasero non finiti.

Dopo la sua morte furono ben 14 le donne che sostennero in tribunale di aver avuto un figlio da lui, di questi 6 saranno riconosciuti come tali.
        '
        where id = '4'
