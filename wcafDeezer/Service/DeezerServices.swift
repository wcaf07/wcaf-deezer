//
//  DeezerServices.swift
//  wcafDeezer
//
//  Created by Filho, Wanderley de C. on 31/10/18.
//  Copyright © 2018 Filho, Wanderley de C. All rights reserved.
//

import Foundation
import Alamofire

class DeezerServices {
    
    func loadArtists(searchQuery: String, completion: @escaping ([Artist]?) -> Void) {
        var artists:[Artist] = []
        let group = DispatchGroup()
        
        group.notify(queue: .main) {
            Alamofire.request("https://api.deezer.com/search/artist?q=\(searchQuery)").responseJSON { response in
                if let json = response.result.value as? [String: Any] {
                    if let data = json["data"] {
                        for object in (data as? [Any])!{
                            if let art = Artist(json: object as! [String : Any]) {
                                artists.append(art)
                            }
                        }
                        completion(artists)
                    }
                }
            }
        }
    }
    
    func loadMusics(artistId: Int, completion: @escaping ([Music]?) -> Void) {
        var musics:[Music] = []
        let group = DispatchGroup()
        
        group.notify(queue: .main) {
            Alamofire.request("https://api.deezer.com/artist/\(artistId)/radio").responseJSON { response in
                if let json = response.result.value as? [String: Any] {
                    if let data = json["data"] {
                        for object in (data as? [Any])!{
                            if let mus = Music(json: object as! [String : Any]) {
                                musics.append(mus)
                            }
                        }
                        completion(musics)
                    }
                }
            }
        }
    }
}
