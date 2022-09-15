//
//  MovieCell.swift
//  Flix
//
//  Created by Hoa Doan on 9/14/22.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var sypnosisLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
