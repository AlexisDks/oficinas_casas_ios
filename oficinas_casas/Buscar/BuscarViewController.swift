//
//  BuscarViewController.swift
//  oficinas_casas
//
//  Created by Miller Espinoza on 1/10/23.
//

import UIKit

class BuscarViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var BusquedaTableView: UITableView!
    
    var busquedaList: [Buscar] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BusquedaTableView.dataSource = self
        
        busquedaList.append(Buscar(busquedas: "Busqueda 1"))
        busquedaList.append(Buscar(busquedas: "Busqueda 2"))
        busquedaList.append(Buscar(busquedas: "Busqueda 3"))
        busquedaList.append(Buscar(busquedas: "Busqueda 4"))
        busquedaList.append(Buscar(busquedas: "Busqueda 5"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return busquedaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemBuscar", for: indexPath) as! BuscarTableViewCell
        
        let buscar = busquedaList[indexPath.row]
        
        cell.btnBusqueda.setTitle(buscar.busquedas, for: .normal)
        
        return cell
    }
    
}
