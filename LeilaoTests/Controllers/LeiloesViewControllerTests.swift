//
//  LeiloesViewControllerTests.swift
//  LeilaoTests
//
//  Created by Marco Aurelio on 13/09/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import XCTest
@testable import Leilao

class LeiloesViewControllerTests: XCTestCase {
    
    var sut: LeiloesViewController?
    var tableView: UITableView?
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        if #available(iOS 13.0, *) {
            sut = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "home") as? LeiloesViewController
        } else {
            sut = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "home") as? LeiloesViewController
        }
        
        _ = sut?.view
        tableView = sut?.tableView
        tableView?.dataSource = sut
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testTableViewNaoDeveEstarNilAposViewDidLoad() {
        _ = sut?.view
        
        XCTAssertNotNil(sut?.tableView)
    }
    
    func testDataSourceDaTableViewNaoDeveSerNil() {
        _ = sut?.view
        
        XCTAssertNotNil(sut?.tableView.dataSource)
        XCTAssertNotNil(sut?.tableView.dataSource is LeiloesViewController)
    }
    
    func testNumberOfRowsInSectionDeveSerQuantidadeDeLeiloesDaLista() {
        sut?.addLeilao(Leilao(descricao: "Playstation 4"))
        XCTAssertEqual(tableView?.numberOfRows(inSection: 0), 1)
        
        sut?.addLeilao(Leilao(descricao: "iPhone X"))
        tableView?.reloadData()
        XCTAssertEqual(tableView?.numberOfRows(inSection: 0), 2)
    }
    
    func testCellForRowDeveRetornarLeilaoTableViewCell() {
        sut?.addLeilao(Leilao(descricao: "TV Led"))
        tableView?.reloadData()
        
        let celula = tableView?.cellForRow(at: IndexPath(row: 0, section: 0))
        XCTAssertTrue(celula is LeilaoTableViewCell)
        
    }
    
}
