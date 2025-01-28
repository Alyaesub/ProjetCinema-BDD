@startuml

class Cinema {
    +id_cinema : int
    +nom : string
    +adresse : string
    +ville : string
}

class Salle {
    +id_salle : int
    +numéro : int
    +capacité : int
    +id_cinema : int
}

class Film {
    +id_film : int
    +titre : string
    +durée : int
    +genre : string
}

class Seance {
    +id_seance : int
    +id_film : int
    +id_salle : int
    +horaire : datetime
}

class Tarif {
    +id_tarif : int
    +prix : DECIMAL
}

class Client {
    +id_client : int
    +nom : string
    +email : string
}

class Reservation {
    +id_client : int
    +id_reservation : int
    +id_seance : int
    +id_tarif int
    +nombre_places : int
    +email : string
}

class Utilisateur {
    +id_utilisateur : int
    +nom : string
    +email : string
    +mot_de_passe : string
    +type : string
    +id_cinema : int
}

Cinema "1" -- "*" Salle
Salle "1" -- "*" Seance
Film "1" -- "*" Seance
Seance "1" -- "*" Reservation
Client "1" -- "*" Reservation
Utilisateur "1" -- "*" Cinema : "gère"

@enduml