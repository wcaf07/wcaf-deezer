//
//  Music.swift
//  wcafDeezer
//
//  Created by Filho, Wanderley de C. on 31/10/18.
//  Copyright © 2018 Filho, Wanderley de C. All rights reserved.
//

import Foundation

struct Music {
    var id: Int
    var title: String
    var duration: Int
    var preview: String
}

extension Music {
    init?(json: [String: Any]) {
        guard let title = json["title"] as? String,
            let id = json["id"] as? Int,
            let duration = json["duration"] as? Int,
            let preview = json["preview"] as? String
            else {
                return nil
        }
        
        self.title = title
        self.id = id
        self.duration = duration
        self.preview = preview
    }
}
