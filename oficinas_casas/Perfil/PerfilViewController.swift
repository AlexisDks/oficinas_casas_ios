//
//  PerfilViewController.swift
//  oficinas_casas
//
//  Created by Miller Espinoza on 1/10/23.
//

import UIKit

class PerfilViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var perfilTableView: UITableView!
    
    var perfilList: [Perfil] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        perfilTableView.dataSource = self

        perfilList.append(Perfil(dato_Lista: "Detalle de la cuenta"))
        perfilList.append(Perfil(dato_Lista: "Tarjetas y ofertas"))
        perfilList.append(Perfil(dato_Lista: "Notificaciones"))
        perfilList.append(Perfil(dato_Lista: "Informacion de entrega"))
        perfilList.append(Perfil(dato_Lista: "Informacion de pago"))
        perfilList.append(Perfil(dato_Lista: "Configuracion"))
        perfilList.append(Perfil(dato_Lista: "Cerrar sesion"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return perfilList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemPerfil", for: indexPath) as! PerfilTableViewCell
        
        let perfil = perfilList[indexPath.row]
        
        cell.btnDetalle.setTitle(perfil.dato_Lista, for: .normal)
        
        return cell
    }
}
