//
//  ViewController.swift
//  food menu trying
//
//  Created by Wali Faisal on 27/09/2022.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell  = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionCell
        
        cell.myImage.image = UIImage(named: foodImages[indexPath.row])
        cell.myFoodName.text = foodNames[indexPath.row]
        
        return cell
        
        
    }
    
    
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    
    
    
    var foodImages: [String] = ["burger", "sushi" , "ramen", "breakfast" , "newmexican" , "sandwiches"]
    
    var foodNames: [String] = ["Burger", "Sushi" , "Ramen", "Breakfast" , "Newmexican" , "Sandwiches"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nibcell = UINib(nibName: "MyCollectionCell", bundle: nil)
        myCollectionView.register(nibcell, forCellWithReuseIdentifier: "cell")
        
        configureItems()
        
    }
    
    private func configureItems()
    {
        navigationItem.rightBarButtonItem = UIBarButtonItem(
        
            image: UIImage(systemName: "cart"),
            style: .plain,
            target: self,
            action: nil
        
        )
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
        
            image: UIImage(systemName: "line.3.horizontal"),
            style: .plain,
            target: self,
            action: nil
        
        )
        
        
    
    }

    
}


