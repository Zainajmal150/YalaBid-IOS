//
//  AuvctionCarView.swift
//  Bazaar Ghar
//
//  Created by Zany on 01/08/2023.
//

import UIKit

class AuvctionCarView: UIViewController {
    @IBOutlet weak var Table: UITableView!

   
    var car_image = ["car2","car3","car4","car5","car6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Table.dataSource = self
        Table.delegate = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension AuvctionCarView: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return car_image.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Car_tablecell", for: indexPath) as! Car_tablecell
        
//        for i in  {
            
//        }

        cell.carImage.image =  UIImage(named: "car2.png")

                return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150;//Choose your custom row height
    }
    
}
