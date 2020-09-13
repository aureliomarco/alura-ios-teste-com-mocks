//
//  LeiloesViewController.swift
//  Leilao
//
//  Created by Marco Aurelio on 13/09/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class LeiloesViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Atributos
    private var listaDeLeiloes: [Leilao] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Métodos
    func addLeilao(_ leilao: Leilao) {
        listaDeLeiloes.append(leilao)
    }
}

extension LeiloesViewController: UITableViewDataSource {
    // MARK: UITableviewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDeLeiloes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
