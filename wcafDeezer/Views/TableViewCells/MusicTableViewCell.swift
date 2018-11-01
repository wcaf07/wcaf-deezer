//
//  MusicTableViewCell.swift
//  wcafDeezer
//
//  Created by Filho, Wanderley de C. on 31/10/18.
//  Copyright © 2018 Filho, Wanderley de C. All rights reserved.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    
    var titleLabel: UILabel!
    var durationLabel: UILabel!
    var playImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let labelSize:CGFloat = self.contentView.frame.width-75
        
        self.playImageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        self.titleLabel = UILabel(frame: CGRect(x: 55, y: 10, width: labelSize, height: 10))
        self.durationLabel = UILabel(frame: CGRect(x: 55, y: 25, width: labelSize, height: 10))
        
        self.playImageView.image = UIImage(named: "play")
        self.titleLabel.font = self.titleLabel.font.withSize(10)
        self.durationLabel.font = self.durationLabel.font.withSize(10)
        self.durationLabel.textColor = UIColor.gray
        
        contentView.addSubview(playImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(durationLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
