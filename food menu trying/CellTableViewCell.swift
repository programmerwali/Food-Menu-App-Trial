//
//  CellTableViewCell.swift
//  food menu trying
//
//  Created by Wali Faisal on 27/09/2022.
//

import UIKit

class CellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var foodLbl: UILabel!
    
    @IBOutlet weak var descLbl: UILabel!
    
    
    @IBOutlet weak var priceLbl: UILabel!
    
    
    @IBOutlet weak var img: UIImageView!
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
