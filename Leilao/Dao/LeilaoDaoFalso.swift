//
//  LeilaoDaoFalso.swift
//  Leilao
//
//  Created by Marco Aurelio on 02/06/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import Foundation

class LeilaoDaoFalso {
    
    private var leiloes: [Leilao] = []
    
    func salva(_ leilao: Leilao) {
        leiloes.append(leilao)
    }
    
    func encerrados() -> [Leilao] {
        return leiloes.filter({ $0.encerrado == true })
    }
    
    func correntes() -> [Leilao] {
        return leiloes.filter({ $0.encerrado == false })
    }
    
    func atualiza(leilao: Leilao) {}
}
