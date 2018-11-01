//
//  ViewController.swift
//  wcafDeezer
//
//  Created by Filho, Wanderley de C. on 31/10/18.
//  Copyright © 2018 Filho, Wanderley de C. All rights reserved.
//

import UIKit

class ArtistListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    private var myTableView: UITableView!
    let searchController = UISearchController(searchResultsController: nil)
    var viewModel: ArtistListViewModel = ArtistListViewModel()
    var searchValue: String = "" {
        didSet {
            self.viewModel.updateArtists(query: self.searchValue) {
                self.myTableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
        
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
        searchController.searchBar.placeholder = "Pesquisar artistas"
        
        self.navigationItem.title = "Artistas"
        myTableView.tableHeaderView = searchController.searchBar
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.searchController.dismiss(animated: true)
        
        let musicsViewController = ArtistMusicsTableViewController()
        musicsViewController.artistId = self.viewModel.artists[indexPath.row].id
        
        self.navigationController?.pushViewController(musicsViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.artists.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ArtistTableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "myIdentifier")
        cell.nameLabel.text = "\(self.viewModel.artists[indexPath.row].name)"
        cell.subtitleLabel.text = "\(self.viewModel.mountArtistInfo(art: self.viewModel.artists[indexPath.row]))"
        cell.setImageArtist(url: self.viewModel.artists[indexPath.row].picture)
        return cell
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.searchValue = searchBar.text!
    }
}

