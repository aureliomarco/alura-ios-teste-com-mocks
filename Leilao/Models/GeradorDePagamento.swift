//
//  GeradorDePagamento.swift
//  Leilao
//
//  Created by Marco Aurelio on 08/06/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import Foundation

class GeradorDePagamento {
    
    private var leiloes: LeilaoDao
    private var avaliador: Avaliador
    private var repositorioDePagamento: RepositorioDePagamento
    
    init(_ leiloes: LeilaoDao, _ avaliador: Avaliador, repositorioDePagamento: RepositorioDePagamento) {
        self.leiloes = leiloes
        self.avaliador = avaliador
        self.repositorioDePagamento = repositorioDePagamento
    }
    
    func gera() {
        let leiloesEncerrados = self.leiloes.encerrados()
        
        for leilao in leiloesEncerrados {
            try? avaliador.avalia(leilao: leilao)
            
            let novoPagamento = Pagamento(avaliador.maiorLance(), Date())
            repositorioDePagamento.salva(novoPagamento)
        }
    }
    
    func proximoDiaUtil() -> Date {
        var dataAtual = Date()
        
        while Calendar.current.isDateInWeekend(dataAtual) {
            dataAtual = Calendar.current.date(byAdding: .day, value: 1, to: dataAtual) ?? Date()
        }
        
        return dataAtual
    }
}
