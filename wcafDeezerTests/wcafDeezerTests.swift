//
//  wcafDeezerTests.swift
//  wcafDeezerTests
//
//  Created by Filho, Wanderley de C. on 31/10/18.
//  Copyright © 2018 Filho, Wanderley de C. All rights reserved.
//

import XCTest
@testable import wcafDeezer

class wcafDeezerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_artist_vc_title() {
        let artistVC = ArtistListViewController()
        artistVC.viewDidLoad()
        
        XCTAssertEqual("Artistas", artistVC.navigationItem.title)
    }
    
    func test_artist_vc_placeholder() {
        let artistVC = ArtistListViewController()
        artistVC.viewDidLoad()
        
        XCTAssertEqual("Pesquisar artistas", artistVC.searchController.searchBar.placeholder)
    }
}
