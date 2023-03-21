# -*- coding: utf-8

import gi
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk , Gdk , Pango

class MainWindow(Gtk.Window):
    def __init__(self):
        Gtk.Window.__init__(self, title="Hotel le Saloum")
        self.set_border_width(10)
        
        # Créer le conteneur principal de la fenêtre
        main_box = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=10)
        self.add(main_box)
    
        
        # Ajouter un libellé avec le titre de l'hôtel
        title_label = Gtk.Label(label="Hotel le Saloum")
        title_label.set_halign(Gtk.Align.CENTER)
        title_label.set_name("title_label")
        title_label.set_margin_bottom(20)
        title_label.override_color(Gtk.StateFlags.NORMAL, Gdk.RGBA(0.101, 0.353, 0.373, 1.0))
        title_label.override_font(Pango.FontDescription("Script MT Bold Oblique 31"))
        main_box.pack_start(title_label, False, True, 0)
        # Créer une barre d'en-tête avec plusieurs boutons
        header_bar = Gtk.HeaderBar()
        main_box.pack_start(header_bar, False, True, 0)
        
        # Ajouter un bouton "Se connecter" dans la barre d'en-tête
        connecter_button = Gtk.Button(label="Se connecter")
        connecter_button.connect("clicked", self.on_connecter_button_clicked)
        header_bar.pack_start(connecter_button)
        
        # Ajouter des boutons de menu dans la barre d'en-tête
        gestion_button = Gtk.Button(label="Gestion de l'hotel")
        gestion_button.connect("clicked", self.on_gestion_button_clicked)
        header_bar.pack_end(gestion_button)
        
        # 
       
        
        #  
      
        client_button = Gtk.Button(label="Les clients")
        client_button.connect("clicked", self.on_client_button_clicked)
        header_bar.pack_end(client_button)
        
        
        reservation_button = Gtk.Button(label="Les reservations")
        reservation_button.connect("clicked", self.on_reservation_button_clicked)
        header_bar.pack_end(reservation_button)
        
        facture_button = Gtk.Button(label="Les factures")
        facture_button.connect("clicked", self.on_facture_button_clicked)
        header_bar.pack_start(facture_button)
        
        contact_button = Gtk.Button(label="Contact")
        contact_button.connect("clicked", self.on_contact_button_clicked)
        header_bar.pack_start(contact_button)
           # Créer l'image
        image = Gtk.Image.new_from_file("img/hotel5.jpg")
        
        # Ajouter l'image au conteneur principal
        main_box.pack_start(image, False, False, 0)

    # Callbacks pour les boutons de menu
    def on_connecter_button_clicked(self, button):
          # Création du formulaire de connexion
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(200, 150)

        label1 = Gtk.Label("Login :")
        dialog.vbox.pack_start(label1, True, True, 0)
        entry1 = Gtk.Entry()
        dialog.vbox.pack_start(entry1, True, True, 0)

        label2 = Gtk.Label("Mot de passe :")
        dialog.vbox.pack_start(label2, True, True, 0)
        entry2 = Gtk.Entry()
        entry2.set_visibility(False)
        dialog.vbox.pack_start(entry2, True, True, 0)
        button_submit = Gtk.Button(label="Soumettre")
        button_submit.connect("clicked", self.on_button_submit_clicked, entry1, entry2)
        dialog.action_area.pack_end(button_submit, True, True, 0)
    
        dialog.show_all()
    def on_button_submit_clicked(self, button, entry1, entry2):
        # Traitement du formulaire de connexion
        login = entry1.get_text()
        password = entry2.get_text()
        print("Login : " + login)
        print("Mot de passe : " + password)
        # -----------------------------------
        
        # fonction pour le contact
    def on_contact_button_clicked( self , button):
          # Création du formulaire de connexion
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)

        label1 = Gtk.Label("Information")
        text_label=Gtk.Label("pour toute information veuiller nous contacter via l'addresse :hotelSaloum@gmail.com")
        dialog.vbox.pack_start(label1, True, True, 0)
        dialog.vbox.pack_start(text_label, True, True, 0)

        dialog.show_all()

    #  fonction pour la gestion
    
    def on_gestion_button_clicked(self, button):
        print("Gestion de l'hotel button clicked")
        
        # champs qui contiendra nos element 
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(200, 150)
        # 
        dialog.show_all()
        
        # on a la fonction quand on clique sur le boutton client
    
    def on_client_button_clicked(self, button):
        print("Les clients button clicked")
        
          # champs qui contiendra nos element 
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(200, 150)
         # création des boutons pour le client
        self.listClients= Gtk.Button("Liste des client", self.on_listClients_clicked)
        self.clientSortant = Gtk.Button("liste des client qui sortent aujourd'hui", self.on_clientSortant_clicked)
        self.clienttReserv = Gtk.Button("liste des client reserve", self.on_clientReserv_clicked)
        self.clientHotel = Gtk.Button("liste des client qui sont dans l hotel", self.on_clientHotel_clicked)
        self.suppClient = Gtk.Button("suppression client", self.on_suppClient_clicked)
        
        # connexion des boutton
        self.listClients.connect("clicked", self.on_listClients_clicked)
        self.clientSortant.connect("clicked", self.on_clientSortant_clicked)
        self.clienttReserv.connect("clicked", self.on_clientReserv_clicked)
        self.clientHotel.connect("clicked", self.on_clientHotel_clicked)
        self.suppClient.connect("clicked", self.on_suppClient_clicked)
        dialog.vbox.pack_start(self.listClients, False, False, 0)
        dialog.vbox.pack_start(self.clientSortant, False, False, 0)
        dialog.vbox.pack_start(self.clienttReserv, False, False, 0)
        dialog.vbox.pack_start(self.clientHotel, False, False, 0)
        dialog.vbox.pack_start(self.suppClient, False, False, 0)
    # mettons nos boutons dans notre dialog créé
        dialog.show_all()
    
      # fonction a executer a l'appel de nos different bouton 
    def on_listClients_clicked(self, button):
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)

        labelReserv = Gtk.Label("liste des clients")
        labelReserv.set_halign(Gtk.Align.CENTER)
        labelReserv.override_color(Gtk.StateFlags.NORMAL, Gdk.RGBA(0.101, 0.353, 0.373, 1.0))
        labelReserv.override_font(Pango.FontDescription("Script MT Bold Oblique 10"))
        dialog.vbox.pack_start(labelReserv, True, True, 0)
        
        
        dialog.show_all() 
        
    def on_clientSortant_clicked(self, button):
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)

        labelReserv = Gtk.Label("liste des client qui sortent aujourd'hui")
        labelReserv.set_halign(Gtk.Align.CENTER)
        labelReserv.override_color(Gtk.StateFlags.NORMAL, Gdk.RGBA(0.101, 0.353, 0.373, 1.0))
        labelReserv.override_font(Pango.FontDescription("Script MT Bold Oblique 10"))
        dialog.vbox.pack_start(labelReserv, True, True, 0)
        
        
        dialog.show_all()
        
    def on_clientReserv_clicked(self, button):
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)

        labelReserv = Gtk.Label("liste des client reserves")
        labelReserv.set_halign(Gtk.Align.CENTER)
        labelReserv.override_color(Gtk.StateFlags.NORMAL, Gdk.RGBA(0.101, 0.353, 0.373, 1.0))
        labelReserv.override_font(Pango.FontDescription("Script MT Bold Oblique 10"))
        dialog.vbox.pack_start(labelReserv, True, True, 0)
        
        
        dialog.show_all() 
        
    def on_clientHotel_clicked(self, button):
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)

        labelReserv = Gtk.Label("liste des clients de l'hotel")
        labelReserv.set_halign(Gtk.Align.CENTER)
        labelReserv.override_color(Gtk.StateFlags.NORMAL, Gdk.RGBA(0.101, 0.353, 0.373, 1.0))
        labelReserv.override_font(Pango.FontDescription("Script MT Bold Oblique 10"))
        dialog.vbox.pack_start(labelReserv, True, True, 0)
        
        
        dialog.show_all() 
        
    def on_suppClient_clicked(self, button):
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)

        labelReserv = Gtk.Label("suppression client")
        labelReserv.set_halign(Gtk.Align.CENTER)
        labelReserv.override_color(Gtk.StateFlags.NORMAL, Gdk.RGBA(0.101, 0.353, 0.373, 1.0))
        labelReserv.override_font(Pango.FontDescription("Script MT Bold Oblique 10"))
        dialog.vbox.pack_start(labelReserv, True, True, 0)
        
        
        dialog.show_all() 
      
    # creation des boutton pour la reservation
    def on_reservation_button_clicked(self, button ):
        
        
      
    # champ qui contiendra nos éléments
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)
    # création des boutons
        self.listReserv = Gtk.Button("Liste des réservations", self.on_listReserv_clicked)
        self.annulReserv = Gtk.Button("Annuler une réservation", self.on_annulReserv_clicked)
        self.ajoutReserv = Gtk.Button("Ajouter une réservation", self.on_ajoutReserv_clicked)
        
        # connexion des boutton
        self.listReserv.connect("clicked", self.on_listReserv_clicked)
        self.listReserv.connect("clicked", self.on_annulReserv_clicked)
        self.listReserv.connect("clicked", self.on_ajoutReserv_clicked)
        dialog.vbox.pack_start(self.listReserv, False, False, 0)
        dialog.vbox.pack_start(self.annulReserv, False, False, 0)
        dialog.vbox.pack_start(self.ajoutReserv, False, False, 0)
    # mettons nos boutons dans notre dialog créé
        dialog.show_all()

    def on_listReserv_clicked(self, button):
         
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)

        labelReserv = Gtk.Label("voici la liste des reservation")
        labelReserv.set_halign(Gtk.Align.CENTER)
        labelReserv.set_name("labelReserv")
        labelReserv.set_margin_bottom(20)
        labelReserv.override_color(Gtk.StateFlags.NORMAL, Gdk.RGBA(0.101, 0.353, 0.373, 1.0))
        labelReserv.override_font(Pango.FontDescription("Script MT Bold Oblique 18"))
        dialog.vbox.pack_start(labelReserv, True, True, 0)
        
        dialog.show_all()
         
        
    def on_annulReserv_clicked(self, button):
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)

        labelAnnul = Gtk.Label("voici la liste des reservation annuler")
        labelAnnul.set_halign(Gtk.Align.CENTER)
        labelAnnul.set_name("labelAnnul")
        labelAnnul.set_margin_bottom(20)
        labelAnnul.override_color(Gtk.StateFlags.NORMAL, Gdk.RGBA(0.101, 0.353, 0.373, 1.0))
        labelAnnul.override_font(Pango.FontDescription("Script MT Bold Oblique 18"))
        dialog.vbox.pack_start(labelAnnul, True, True, 0)
        
        dialog.show_all()
        
    def on_ajoutReserv_clicked(self, button):
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)

        labelReserv = Gtk.Label("ajouter une reservation")
        labelReserv.set_halign(Gtk.Align.CENTER)
        labelReserv.override_color(Gtk.StateFlags.NORMAL, Gdk.RGBA(0.101, 0.353, 0.373, 1.0))
        labelReserv.override_font(Pango.FontDescription("Script MT Bold Oblique 10"))
        dialog.vbox.pack_start(labelReserv, True, True, 0)
        
        
        dialog.show_all()
         
         
       
      #  partie facture

    def on_facture_button_clicked(self, button):
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)
    # création des boutons
        self.listFacture = Gtk.Button("Liste des facture", self.on_listFacture_clicked)
        self.factureAujourdhui = Gtk.Button("les factures d'aujourd'hui", self.on_factureAujourdhui_clicked)
        
        
        # connexion des boutton
        self.listFacture.connect("clicked", self.on_listFacture_clicked)
        self.factureAujourdhui.connect("clicked", self.on_factureAujourdhui_clicked)
       
        dialog.vbox.pack_start(self.listFacture, False, False, 0)
        dialog.vbox.pack_start(self.factureAujourdhui, False, False, 0)
        
    # mettons nos boutons dans notre dialog créé
        dialog.show_all()

    def on_listFacture_clicked(self, button):
         
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)

        labelReserv = Gtk.Label("voici la liste des facture")
        labelReserv.set_halign(Gtk.Align.CENTER)
        labelReserv.set_name("labelReserv")
        labelReserv.set_margin_bottom(20)
        labelReserv.override_color(Gtk.StateFlags.NORMAL, Gdk.RGBA(0.101, 0.353, 0.373, 1.0))
        labelReserv.override_font(Pango.FontDescription("Script MT Bold Oblique 10"))
        dialog.vbox.pack_start(labelReserv, True, True, 0)
        
        dialog.show_all()
         
        
    def on_factureAujourdhui_clicked(self, button):
        dialog = Gtk.Dialog(title="Connexion", parent=self, flags=0)
        dialog.set_default_size(500, 200)

        labelAnnul = Gtk.Label("voici la liste des Facture d'aujourdhui")
        labelAnnul.set_halign(Gtk.Align.CENTER)
        labelAnnul.set_name("labelAnnul")
        labelAnnul.set_margin_bottom(20)
        labelAnnul.override_color(Gtk.StateFlags.NORMAL, Gdk.RGBA(0.101, 0.353, 0.373, 1.0))
        labelAnnul.override_font(Pango.FontDescription("Script MT Bold Oblique 10"))
        dialog.vbox.pack_start(labelAnnul, True, True, 0)  
        
        dialog.show_all()
        
win = MainWindow()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()
