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
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testTableViewNaoDeveEstarNilAposViewDidLoad() {
        if #available(iOS 13.0, *) {
            let sut = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "home") as! LeiloesViewController
            _ = sut.view
            
            XCTAssertNotNil(sut.tableView)
        } else {
            // Fallback on earlier versions
        }
    }
    
}
