//
//  FieldObservationTableViewCell.swift
//  Field Study
//
//  Created by Jaylin Phipps on 7/21/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import UIKit

class FieldObservationTableViewCell: UITableViewCell {
    @IBOutlet weak var observationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
