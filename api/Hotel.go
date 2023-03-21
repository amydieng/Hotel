package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
	"net/http"

	_ "github.com/denisenkom/go-mssqldb"
	_ "github.com/go-sql-driver/mysql"
)

type Hotel struct {
	IdHotel     int
	  NomHotel   string
	  AdresseHotel  string
	 TelHotel string
	 Netage int

}

func main() {
	server := "localhost"
	port := 3306
	user := "root"
	password := "2002p@p@2002"
	database := "hotel"

	// Créez une chaîne de connexion
	connString := fmt.Sprintf("%s:%s@tcp(%s:%d)/%s", user, password, server, port, database)

	// Ouvrez une connexion
	db, err := sql.Open("mysql", connString)
	if err != nil {
		fmt.Println("Echec connexion")
		panic(err.Error())
	}

	// Vérifiez que la connexion est bien établie
	err = db.Ping()
	if err != nil {
		fmt.Println("Echec connexion")
		panic(err.Error())
	}

	// Fermez la connexion lorsque vous avez terminé
	defer db.Close()

	// Afficher un message de connexion réussie
	log.Println("Bien connecté - la connexion avec la base de données est correcte.")

	// Créez un gestionnaire de requêtes HTTP
	http.HandleFunc("/Hotels", func(w http.ResponseWriter, r *http.Request) {
		if r.Method == "GET" {
			// Exécutez une requête SQL pour récupérer tous les clients
			rows, err := db.Query("SELECT * FROM hotel")
			if err != nil {
				http.Error(w, err.Error(), http.StatusInternalServerError)
				return
			}
			defer rows.Close()

			// Parcourez les résultats de la requête et créez une liste de clients
			hotels := []Hotel{}
			for rows.Next() {
				var hotel Hotel
				err := rows.Scan(&hotel.IdHotel, &hotel.NomHotel, &hotel.AdresseHotel, &hotel.TelHotel, &hotel.Netage)
				if err != nil {
					http.Error(w, err.Error(), http.StatusInternalServerError)
					return
				}
				hotels = append(hotels, hotel)
			}
			if err := rows.Err(); err != nil {
				http.Error(w, err.Error(), http.StatusInternalServerError)
				return
			}

			// Créez une réponse JSON avec la liste des clients
			json.NewEncoder(w).Encode(hotels)
		} else if r.Method == "POST" {
			// Récupérez le corps de la requête JSON
			var hotel Hotel
			err := json.NewDecoder(r.Body).Decode(&hotel)
			if err != nil {
				http.Error(w, err.Error(), http.StatusBadRequest)
				return
			}

			// Exécutez une requête SQL pour insérer le nouveau client dans la base de données
			result, err := db.Exec("INSERT INTO hotel( nomHotel, adresseHotel,telHotel,netage) VALUES(?, ?, ?, ?)", hotel.NomHotel, hotel.AdresseHotel, hotel.TelHotel,hotel.Netage)
			if err != nil {
				http.Error(w, err.Error(), http.StatusInternalServerError)
				return
			}

			// Récupérez l'ID du nouveau client inséré dans la base de données
			id, err := result.LastInsertId()
			if err != nil {
				http.Error(w, err.Error(), http.StatusInternalServerError)
				return
			}

			// Renvoyez une réponse JSON avec l'ID du nouveau client
			response := map[string]int64{"id_client": id}
			json.NewEncoder(w).Encode(response)
		} /* else if r.Method == "PUT" {
			// Récupérez l'ID du client à mettre à jour à partir de la requête URL
			Idclient := r.URL.Path[len("/clients/"):]

			// Récupérez le corps de la requête JSON
			var updatedClient Client
			err := json.NewDecoder(r.Body).Decode(&updatedClient)
			if err != nil {
				http.Error(w, err.Error(), http.StatusBadRequest)
				return
			}

			// Mettez à jour le client dans la base de données
			result, err := db.Exec("UPDATE client SET telCient = ?, nomClient = ?,  prenomClient = ? WHERE idClient = ?", updatedClient.TelClient, updatedClient.NomClient, updatedClient.PrenomClient, Idclient)
			if err != nil {
				http.Error(w, err.Error(), http.StatusInternalServerError)
				return
			}

			// Renvoyez une réponse JSON avec le nombre de lignes modifiées
			rowsAffected, err := result.RowsAffected()
			if err != nil {
				http.Error(w, err.Error(), http.StatusInternalServerError)
				return
			}
			response := map[string]int64{"rows_affected": rowsAffected}
			json.NewEncoder(w).Encode(response)
		} else if r.Method == "DELETE" {
			// Récupérez l'ID du client à supprimer à partir de la requête URL
			IdClient := r.URL.Path[len("/Clients/"):]

			// Supprimez le client dans la base de données
			result, err := db.Exec("DELETE FROM client WHERE idClient = ?", IdClient)
			if err != nil {
				http.Error(w, err.Error(), http.StatusInternalServerError)
				return
			}

			// Renvoyez une réponse JSON avec le nombre de lignes supprimées
			rowsAffected, err := result.RowsAffected()
			if err != nil {
				http.Error(w, err.Error(), http.StatusInternalServerError)
				return
			}
			response := map[string]int64{"rows_affected": rowsAffected}
			json.NewEncoder(w).Encode(response)
		}
*/
	})
	http.ListenAndServe(":8080", nil)
}
