//
//  EncerradorDeLeilaoTests.swift
//  LeilaoTests
//
//  Created by Marco Aurelio on 02/06/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import XCTest
@testable import Leilao

class EncerradorDeLeilaoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testDeveEncerrarLeiloesQueComecaramUmaSemanaAntes() {
        let formatador = DateFormatter()
        formatador.dateFormat = "yyyy/MM/dd"
        guard let dataAntiga = formatador.date(from: "2018/05/09") else { return }
        
        let tvLed = CriadorDeLeilao().para(descricao: "TV Led").naData(data: dataAntiga).constroi()
        let geladeira = CriadorDeLeilao().para(descricao: "Geladeira").naData(data: dataAntiga).constroi()
        
        let dao = LeilaoDaoFalso()
        dao.salva(tvLed)
        dao.salva(geladeira)
        
        let encerradorDeLeilao = EncerradorDeLeilao(dao)
        encerradorDeLeilao.encerra()
        
        let leiloesEncerrados = dao.encerrados()
        
        XCTAssertEqual(2, leiloesEncerrados.count)
        XCTAssertTrue(leiloesEncerrados[0].isEncerrado()!)
        XCTAssertTrue(leiloesEncerrados[1].isEncerrado()!)
    }

}
