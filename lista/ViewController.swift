//
//  ViewController.swift
//  lista
//
//  Created by Alumno ULSA on 24/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as! CeldaPeliculaController
        celda.lblAño.text = peliculas[indexPath.row].año
        celda.lblTitulo.text = peliculas[indexPath.row].titulo
        celda.lblDirector.text = peliculas[indexPath.row].director
        
        return celda
    }
    
    var peliculas : [Pelicula] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        peliculas.append(Pelicula(titulo: "Titanic", director: "James Cameron", año: "1999"))
        peliculas.append(Pelicula(titulo: "Mario Bros", director: "Aaron Horvarth y Michael Jelenic", año: "2023"))
        peliculas.append(Pelicula(titulo: "Pelicula 3", director: "nose", año: "2000"))
    }


}

