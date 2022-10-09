//
//  TableViewController.swift
//  food menu trying
//
//  Created by Wali Faisal on 28/09/2022.
//

import Foundation
import UIKit

class TableViewController: UIViewController {
    
    
    
    
    
    var sandwichNames: [String] = ["Deviant Sandwich", "The Bandit Sandwich" , "Lunch Sandwich", "Petty Cash Sandwich" , "The Fancy Sandwich"]
    
    var sandwichImages: [String] = ["deviantsandwich", "banditsandwich" , "lunchsandwich", "pettycashsandwich" , "fancysandwich"]
    
    var sandwichDesc : [String] = ["Scrambled Eggs, Tilamook Chedder and Chives. Served on grilled bun, organic free eggs and signature oil." , "Medium egg, butchers cut bacon, ,muenster cheese and avocado" , " Aioli, Arguna, spinach gorgonzola, cheese, carrots, quinoa and beets" , "Medium egg, house made chicken sausage patty , muenster cheese and spinach" , "Scrambled eggs, gruvere cheese, chivers spinash, cremini mushrooms and grilled tomatoes"]
    
    var sandwichPrices: [String] = [ "$14" , "$12" , "$10.50" , "$16.50" , "$18.50"]
    

    
    var miniNames = [miniImages]()
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var searchFood = [String]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        miniNames = [ miniImages(image1: "dev1", image2: "dev2", image3: "dev3", image4: "dev4"),
                      miniImages(image1: "bandit1", image2: "bandit2", image3: "bandit3", image4: "bandit4"),
                      miniImages(image1: "lunch1", image2: "lunch2", image3: "lunch3", image4: "lunch4"),
                      miniImages(image1: "petty1", image2: "petty2", image3: "petty3", image4: "petty4"),
                      miniImages(image1: "fancy1", image2: "fancy2", image3: "fancy3", image4: "fancy4")]
        
        
        configureItems()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension TableViewController: UITableViewDelegate, UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as? CellTableViewCell
        
        if searching {
            cell2?.foodLbl.text = searchFood[indexPath.row]
        }
        else
        {
            cell2?.foodLbl.text = sandwichNames[indexPath.row]
        }
        //cell2?.foodLbl.text = sandwichNames[indexPath.row]
        cell2?.priceLbl.text = sandwichPrices[indexPath.row]
        cell2?.descLbl.text = sandwichDesc[indexPath.row]
        cell2?.img.image = UIImage(named: sandwichImages[indexPath.row])
        return cell2!
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if searching {
            return searchFood.count
        }
        else
        {
            return sandwichNames.count
        }
        
       // return sandwichNames.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailedViewController") as? DetailedViewController
        
        vc?.foodNameVC = sandwichNames[indexPath.row]
        vc?.descVC = sandwichDesc[indexPath.row]
        vc?.priceVC = sandwichPrices[indexPath.row]
        vc?.foodImageVC = UIImage(named: sandwichImages[indexPath.row])!
        
        vc?.imgMini1VC = UIImage(named: miniNames[indexPath.row].image1)!
        
        vc?.imgMini2VC = UIImage(named: miniNames[indexPath.row].image2)!
        
        vc?.imgMini3VC = UIImage(named: miniNames[indexPath.row].image3)!
        
        vc?.imgMini4VC = UIImage(named: miniNames[indexPath.row].image4)!
        
       

        self.navigationController?.pushViewController(vc!, animated: true)
        
        
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

extension TableViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchFood = sandwichNames.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching =  false
        searchBar.text = ""
        tableView.reloadData()
    }

}







