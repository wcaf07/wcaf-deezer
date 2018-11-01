//
//  Artist.swift
//  wcafDeezer
//
//  Created by Filho, Wanderley de C. on 31/10/18.
//  Copyright © 2018 Filho, Wanderley de C. All rights reserved.
//

import Foundation

struct Artist {
    var id: Int
    var name: String
    var picture: String
    var nb_fan: Int
    var nb_album: Int
}

extension Artist {
    init?(json: [String: Any]) {
        guard let name = json["name"] as? String,
            let id = json["id"] as? Int,
            let nb_fan = json["nb_fan"] as? Int,
            let nb_album = json["nb_album"] as? Int,
            let picture = json["picture"] as? String
            else {
                return nil
        }
        
        self.name = name
        self.id = id
        self.picture = picture
        self.nb_fan = nb_fan
        self.nb_album = nb_album
    }
}
