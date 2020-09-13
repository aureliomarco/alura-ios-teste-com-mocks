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
    
    var daoFalso: MockLeilaoDao?
    var avaliador: Avaliador?
    var pagamentos: MockRepositorioDePagamento?
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        daoFalso = MockLeilaoDao().withEnabledSuperclassSpy()
        avaliador = Avaliador()
        pagamentos = MockRepositorioDePagamento().withEnabledSuperclassSpy()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testDeveGerarPagamentoParaUmLeilaoEncerrado() {
        let playstation = CriadorDeLeilao().para(descricao: "Playstation")
            .lance(Usuario(nome: "José"), 2000.0)
            .lance(Usuario(nome: "Maria"), 2500.0)
            .constroi()
        
        stub(daoFalso ?? MockLeilaoDao()) { (daoFalso) in
            when(daoFalso.encerrados()).thenReturn([playstation])
        }
        
        let geradorDePagamento = GeradorDePagamento(daoFalso ?? MockLeilaoDao(), avaliador ?? Avaliador(), pagamentos ?? MockRepositorioDePagamento())
        geradorDePagamento.gera()
        
        let capturadorDeArgumento = ArgumentCaptor<Pagamento>()
        verify(pagamentos ?? MockRepositorioDePagamento()).salva(capturadorDeArgumento.capture())
        
        let pagamentoGerado = capturadorDeArgumento.value
        
        XCTAssertEqual(2500.0, pagamentoGerado?.getValor())
    }
    
    func testDeveEmpurrarParaProximoDiaUtil() {
        let iPhone = CriadorDeLeilao().para(descricao: "iPhoone")
            .lance(Usuario(nome: "João"), 2000.0)
            .lance(Usuario(nome: "Maria"), 2500.0)
            .constroi()
        
        stub(daoFalso ?? MockLeilaoDao()) { (daoFalso) in
            when(daoFalso.encerrados()).thenReturn([iPhone])
        }
        
        let formatador = DateFormatter()
        formatador.dateFormat = "yyyy/MM/dd"
        guard let dataAntiga = formatador.date(from: "2018/05/19") else { return }
        
        let geradorDePagamento = GeradorDePagamento(daoFalso ?? MockLeilaoDao(), avaliador ?? Avaliador(), pagamentos ?? MockRepositorioDePagamento(), dataAntiga)
        geradorDePagamento.gera()
        
        let capturadorDeArgumento = ArgumentCaptor<Pagamento>()
        verify(pagamentos ?? MockRepositorioDePagamento()).salva(capturadorDeArgumento.capture())
        
        let pagamentoGerado = capturadorDeArgumento.value
        
        let formatadorDeData = DateFormatter()
        formatadorDeData.dateFormat = "ccc"
        
        guard let dataDoPagamento = pagamentoGerado?.getData() else { return }
        let diaDaSemana = formatadorDeData.string(from: dataDoPagamento)
        
        XCTAssertEqual("Mon", diaDaSemana)
    }
    
}
