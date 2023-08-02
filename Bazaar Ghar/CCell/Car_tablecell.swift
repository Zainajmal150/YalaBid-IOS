//
//  Car_tablecell.swift
//  Bazaar Ghar
//
//  Created by Zany on 01/08/2023.
//

import UIKit

class Car_tablecell: UITableViewCell {
    @IBOutlet weak var infocar: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var run: UILabel!
    @IBOutlet weak var lotnumbr: UILabel!
    @IBOutlet weak var lot: UILabel!
    @IBOutlet weak var AED: UILabel!
    @IBOutlet weak var currentbid: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
