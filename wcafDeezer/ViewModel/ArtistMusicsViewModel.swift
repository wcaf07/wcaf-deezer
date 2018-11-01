//
//  ArtistMusicsViewModel.swift
//  wcafDeezer
//
//  Created by Filho, Wanderley de C. on 31/10/18.
//  Copyright © 2018 Filho, Wanderley de C. All rights reserved.
//

import Foundation

class ArtistMusicsViewModel {
    var musics: [Music]
    var deezerService: DeezerServices

    init(musics: [Music]) {
        self.musics = musics
        self.deezerService = DeezerServices()
    }

    init() {
        self.musics = []
        self.deezerService = DeezerServices()
    }

    func loadMusics(id: Int, completion: @escaping () -> Void) {
        self.deezerService.loadMusics(artistId: id) { musics in
            self.musics = musics!
            completion()
        }
    }
    
    func convertToMinutes(time:Int) -> String {
        if (time % 3600) % 60 < 10 {
            return "\((time % 3600) / 60):0\((time % 3600) % 60)"
        } else {
            return "\((time % 3600) / 60):\((time % 3600) % 60)"
        }
        
    }
}
