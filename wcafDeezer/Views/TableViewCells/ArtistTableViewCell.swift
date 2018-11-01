//
//  ArtistTableViewCell.swift
//  wcafDeezer
//
//  Created by Filho, Wanderley de C. on 31/10/18.
//  Copyright © 2018 Filho, Wanderley de C. All rights reserved.
//

import UIKit
import Nuke

class ArtistTableViewCell: UITableViewCell {
    
    var nameLabel: UILabel!
    var subtitleLabel: UILabel!
    var imageArtist: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let labelSize:CGFloat = self.contentView.frame.width-75
        
        self.imageArtist = UIImageView(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        self.nameLabel = UILabel(frame: CGRect(x: 75, y: 10, width: labelSize, height: 20))
        self.subtitleLabel = UILabel(frame: CGRect(x: 75, y: 35, width: labelSize, height: 10))
        
        self.nameLabel.font = self.nameLabel.font.withSize(20)
        self.subtitleLabel.font = self.subtitleLabel.font.withSize(10)
        self.subtitleLabel.textColor = UIColor.gray
        
        contentView.addSubview(imageArtist)
        contentView.addSubview(nameLabel)
        contentView.addSubview(subtitleLabel)
    }
    
    func setImageArtist(url: String) {
        Nuke.loadImage(with: URL(string: url)!, into: self.imageArtist)
    }
    
}
