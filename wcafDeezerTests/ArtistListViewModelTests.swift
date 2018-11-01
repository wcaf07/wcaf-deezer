//
//  ArtistListViewModelTests.swift
//  wcafDeezerTests
//
//  Created by Filho, Wanderley de C. on 31/10/18.
//  Copyright © 2018 Filho, Wanderley de C. All rights reserved.
//

import XCTest
@testable import wcafDeezer

class ArtistListViewModelTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_vm_artist_info() {
        let populatedArtist = ["id": 1, "name": "name", "picture" : "pic", "nb_fan" : 10, "nb_album" : 20] as [String : Any]
        let artista: Artist = Artist(json: populatedArtist)!
        let artVM = ArtistListViewModel()
        
        XCTAssertEqual("fans:10 albuns:20", artVM.mountArtistInfo(art: artista))
    }

}
