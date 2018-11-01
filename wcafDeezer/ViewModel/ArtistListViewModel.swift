//
//  ArtistListViewModel.swift
//  wcafDeezer
//
//  Created by Filho, Wanderley de C. on 31/10/18.
//  Copyright © 2018 Filho, Wanderley de C. All rights reserved.
//

import Foundation

class ArtistListViewModel {
    var artists: [Artist]
    var deezerService: DeezerServices
    
    init(artists: [Artist]) {
        self.artists = artists
        self.deezerService = DeezerServices()
    }
    
    init() {
        self.artists = []
        self.deezerService = DeezerServices()
    }
    
    func updateArtists(query: String, completion: @escaping () -> Void) {
        self.deezerService.loadArtists(searchQuery: query) { artists in
            self.artists = artists!
            completion()
        }
    }
    
    func mountArtistInfo(art: Artist) -> String {
        return "fans:\(art.nb_fan) albuns:\(art.nb_album)"
    }
}
