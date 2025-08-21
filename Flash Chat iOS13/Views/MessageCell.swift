//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by 하다현 on 8/19/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        
//        contentView.layoutIfNeeded()
//        
//        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 30
//        messageBubble.clipsToBounds = true
//    }
    override func prepareForReuse() {
        super.prepareForReuse()
        let h = messageBubble.bounds.height
        // 8pt 이상, 20pt 이하 범위에서 적당히
        let r = max(8, min(h / 2, 20))   // 캡슐형에 가깝게
        messageBubble.layer.cornerRadius = r
        messageBubble.clipsToBounds = true
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
