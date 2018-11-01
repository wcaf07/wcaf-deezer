//
//  ArtistMusicsTableViewController.swift
//  wcafDeezer
//
//  Created by Filho, Wanderley de C. on 31/10/18.
//  Copyright © 2018 Filho, Wanderley de C. All rights reserved.
//

import UIKit
import AVFoundation

class ArtistMusicsTableViewController: UITableViewController {

    var viewModel: ArtistMusicsViewModel = ArtistMusicsViewModel() {
        didSet {
            self.tableView.reloadData()
        }
    }
    
    var artistId: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.loadMusics(id: self.artistId) {
            self.viewModel = ArtistMusicsViewModel(musics: self.viewModel.musics)
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let url = URL(string: self.viewModel.musics[indexPath.row].preview)
        let playerItem:AVPlayerItem = AVPlayerItem(url: url!)
        let player = AVPlayer(playerItem: playerItem)
        player.play()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.musics.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MusicTableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "myIdentifier")
        cell.titleLabel.text = "\(self.viewModel.musics[indexPath.row].title)"
        cell.durationLabel.text = "duração: \(self.viewModel.convertToMinutes(time: self.viewModel.musics[indexPath.row].duration))"
        return cell
    }

}
