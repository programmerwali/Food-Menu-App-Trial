//
//  DetailedViewController.swift
//  food menu trying
//
//  Created by Wali Faisal on 28/09/2022.
//

import UIKit

class DetailedViewController: UIViewController {
    
    
    @IBOutlet weak var foodnameDetailed: UILabel!
    
    
    @IBOutlet weak var imgDetailed: UIImageView!
    
    @IBOutlet weak var descDetailed: UILabel!
    
    @IBOutlet weak var priceDetailed: UILabel!
    
    @IBOutlet weak var imgMini1detailed: UIImageView!
    
    @IBOutlet weak var imgMini2detailed: UIImageView!
    
    @IBOutlet weak var imgMini3detailed: UIImageView!
    
    @IBOutlet weak var imgMini4detailed: UIImageView!
    
    
    
    
    var foodNameVC = ""
    var descVC = ""
    var priceVC = ""
    var foodImageVC = UIImage()
    
    var imgMini1VC = UIImage()
    var imgMini2VC = UIImage()
    var imgMini3VC = UIImage()
    var imgMini4VC = UIImage()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        priceDetailed.layer.borderWidth = 0.5
        priceDetailed.layer.cornerRadius = 8
        foodnameDetailed.text = foodNameVC
        descDetailed.text = descVC
        priceDetailed.text = priceVC
        imgDetailed.image = foodImageVC
        
        imgMini1detailed.image = imgMini1VC
        imgMini2detailed.image = imgMini2VC
        imgMini3detailed.image = imgMini3VC
        imgMini4detailed.image = imgMini4VC

        // Do any additional setup after loading the view.
    }
    


}
