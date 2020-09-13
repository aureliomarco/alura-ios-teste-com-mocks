//
//  GeradorDePagamentoTests.swift
//  LeilaoTests
//
//  Created by Marco Aurelio on 12/09/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import XCTest
@testable import Leilao
import Cuckoo

class GeradorDePagamentoTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testDeveGerarPagamentoParaUmLeilaoEncerrado() {
        let playstation = CriadorDeLeilao().para(descricao: "Playstation")
            .lance(Usuario(nome: "José"), 2000.0)
            .lance(Usuario(nome: "Maria"), 2500.0)
            .constroi()
        
        let daoFalso = MockLeilaoDao().withEnabledSuperclassSpy()
        
        stub(daoFalso) { (daoFalso) in
            when(daoFalso.encerrados()).thenReturn([playstation])
        }
        
        let avaliadorFalso = MockAvaliador().withEnabledSuperclassSpy()
        
        stub(avaliadorFalso) { (avaliadorFalso) in
            when(avaliadorFalso.maiorLance()).thenReturn(2500.0)
        }
    }
}
