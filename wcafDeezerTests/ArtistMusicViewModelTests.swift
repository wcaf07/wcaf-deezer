//
//  ArtistMusicViewModelTests.swift
//  wcafDeezerTests
//
//  Created by Filho, Wanderley de C. on 31/10/18.
//  Copyright © 2018 Filho, Wanderley de C. All rights reserved.
//

import XCTest
@testable import wcafDeezer

class ArtistMusicViewModelTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_music_vm_format_time() {
        let musicPopulated = ["duration" : 200, "title" : "music", "preview" : "preview", "id" : 12] as [String: Any]
        let music: Music = Music(json: musicPopulated)!
        let musicVM: ArtistMusicsViewModel = ArtistMusicsViewModel()
        
        XCTAssertEqual("3:20", musicVM.convertToMinutes(time: music.duration))
    }
}
