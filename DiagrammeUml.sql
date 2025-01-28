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
    +genre : string
    +durée : int
}

class Seance {
    +id_seance : int
    +horaire : datetime
    +id_salle : int
    +id_film : int
}

class Client {
    +id_client : int
    +nom : string
    +email : string
}

class Reservation {
    +id_reservation : int
    +id_client : int
    +id_seance : int
    +nombre_places : int
}

class Utilisateur {
    +id_utilisateur : int
    +nom : string
    +email : string
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