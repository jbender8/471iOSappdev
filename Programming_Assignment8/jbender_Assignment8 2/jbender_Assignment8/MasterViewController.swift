//
//  MasterViewController.swift
//  jbender_Assignment8
//
//  Created by Jessica Bender on 3/14/20.
//  Copyright © 2020 Jessica Bender. All rights reserved.
//


import UIKit

class Wines {
    var Name: String
    var Country: String
    var Description: String
    var Color : String
    var Image: UIImage
    init(Name: String, Country: String,  Color: String, Description: String, Image: UIImage) {
        self.Name = Name
        self.Country = Country
        self.Description = Description
        self.Color = Color
        self.Image = Image
    }
}

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var objects = [Any]()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        insertNewObject()
        if let split = splitViewController {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    @objc
    func insertNewObject() {
        
        let wine1 = Wines(Name: "Pinot Noir", Country: "France", Color: "Red", Description: "Pinot noir is a red wine grape variety of the species Vitis vinifera. The name may also refer to wines created predominantly from Pinot noir grapes. The name is derived from the French words for pine and black. The word pine alludes to the grape variety having tightly clustered, pine cone-shaped bunches of fruit.", Image: UIImage(named: "download")!)
        let wine2 = Wines(Name: "Cabernet Sauvignon", Country: "France", Color: "Red", Description: "Cabernet Sauvignon is one of the world's most widely recognized red wine grape varieties. It is grown in nearly every major wine producing country among a diverse spectrum of climates from Canada's Okanagan Valley to Lebanon's Beqaa Valley.", Image: UIImage(named: "download-1")! )
        let wine3 = Wines(Name: "Riesling", Country: "Germany", Color: "White", Description: "Riesling is a white grape variety which originated in the Rhine region. Riesling is an aromatic grape variety displaying flowery, almost perfumed, aromas as well as high acidity. It is used to make dry, semi-sweet, sweet, and sparkling white wines. Riesling wines are usually varietally pure and are seldom oaked.", Image: UIImage(named: "images")! )
        let wine4 = Wines(Name: "Chardonnay", Country: "France", Color: "White", Description: "Chardonnay is a green-skinned grape variety used in the production of white wine. The variety originated in the Burgundy wine region of eastern France, but is now grown wherever wine is produced, from England to New Zealand." , Image: UIImage(named: "download-2")!)
        let wine5 = Wines(Name: "Sauvignon Blanc", Country: "France", Color: "White", Description: "Sauvignon blanc is a green-skinned grape variety that originates from the Bordeaux region of France. The grape most likely gets its name from the French words sauvage and blanc due to its early origins as an indigenous grape in South West France. It is possibly a descendant of Savagnin.", Image: UIImage(named: "blanc")! )
        let wine6 = Wines(Name: "Muscat Blanc à Petits Grains",  Country: "Greece", Color: "White", Description: "Muscat Blanc à Petits Grains is a white wine grape of Greek origin that is a member of the Muscat family of Vitis vinifera. Its name comes from its characteristic small berry size and tight clusters." , Image: UIImage(named: "Muscat")!)
        let wine7 = Wines(Name: "Gewürztraminer",  Country: "France, Alsace", Color: "White", Description: "Gewürztraminer is an aromatic wine grape variety, used in white wines, and performs best in cooler climates. In English, it is sometimes referred to colloquially as Gewürz, and in English and French it is written Gewurztraminer." , Image: UIImage(named: "gew")!)
        let wine8 = Wines(Name: "Sangiovese",  Country: "Italy", Color: "Red", Description: "Sangiovese is a red Italian wine grape variety that derives its name from the Latin sanguis Jovis, the blood of Jupiter.", Image: UIImage(named: "sangiovesecopy-625x461")! )
        let wine9 = Wines(Name: "Grenache",  Country: "Spain", Color: "Red", Description: "Grenache or Garnacha is one of the most widely planted red wine grape varieties in the world. It ripens late, so it needs hot, dry conditions such as those found in Spain, where the grape most likely originated." , Image: UIImage(named: "Gren")!)
        let wine10 = Wines(Name: "Zinfandel",  Country: "Croatia", Color: "Red", Description: "Zinfandel is a variety of black-skinned wine grape. The variety is grown in over 10 percent of California vineyards." , Image: UIImage(named: "image")!)
        let wine11 = Wines(Name: "Syrah",  Country: "France, Rhône wine region", Color: "Red", Description: "Syrah, also known as Shiraz, is a dark-skinned grape variety grown throughout the world and used primarily to produce red wine. In 1999, Syrah was found to be the offspring of two obscure grapes from southeastern France, Dureza and Mondeuse Blanche." , Image: UIImage(named: "Syrah")!)
        let wine12 = Wines(Name: "Pinot Blanc",  Country: "Germany, France, Italy, California, Austria", Color: "White", Description: "Pinot blanc is a white wine grape. It is a point genetic mutation of Pinot noir. Pinot noir is genetically unstable and will occasionally experience a point mutation in which a vine bears all black fruit except for one cane which produces white fruit" , Image: UIImage(named: "pblanc")!)
        let wine13 = Wines(Name: "Rosé",  Country: "ancient Greece", Color: "Pink", Description: "A rosé (from French, rosé [ʁoze]) is a type of wine that incorporates some of the color from the grape skins, but not enough to qualify it as a red wine. It may be the oldest known type of wine, as it is the most straightforward to make with the skin contact method. The pink color can range from a pale 'onion-skin' orange to a vivid near-purple, depending on the grape varieties used and winemaking techniques. Usually, the wine is labelled rosé in French, Portuguese, and English-speaking countries, rosado in Spanish, or rosato in Italian." , Image: UIImage(named: "rose")!)
        let wine14 = Wines(Name: "White Zinfandel",  Country: "Croatia", Color: "Pink", Description: "White Zinfandel is an off dry to sweet, pink-colored white wine which was invented by Sutter Home Family Vineyards winemaker Bob Trinchero in 1948.[1] Originally the result of a stuck fermentation and fortuitous accident,[1] White Zinfandel is made from the Zinfandel wine grape, which would otherwise produce a bold and spicy red wine. As of 2018, Sutter Home White Zinfandel is the no. 1 White Zinfandel, with 29.1 percent dollar share of the $300 million White Zinfandel market and 73.1 percent of the 187 mL White Zinfandel market.", Image: UIImage(named: "beringer_whitezin")! )
        let wine15 = Wines(Name: "Champagne",  Country: "France", Color: "White Sparkling", Description: "Champagne is a French sparkling wine. The term Champagne can be used as a generic term for sparkling wine, but in the EU and some countries it is illegal to label any product Champagne unless it came from the Champagne wine region of France and is produced under the rules of the appellation. This alcoholic drink is produced from specific types of grapes grown in the Champagne region following rules that demand, among other things, specific vineyard practices, sourcing of grapes exclusively from designated places within the Champagne region, specific grape-pressing methods and secondary fermentation of the wine in the bottle to cause carbonation.", Image: UIImage(named: "champ")! )
        let wine16 = Wines(Name: "Prosecco",  Country: "Italy", Color: "White Sparkling", Description: "Prosecco is an Italian DOC or DOCG white wine produced in a large area spanning nine provinces in the Veneto and Friuli Venezia Giulia regions, and named after the village of Prosecco. It is made from the Prosecco grape but denomination rules allow up to 15% of the wine to be other permitted varieties. Prosecco is almost always made in sparkling or semi-sparkling style, but a still wine is also permitted. Within the larger designation are two small DOCG areas, Conegliano Valdobbiadene Prosecco in the hills between the towns of Conegliano and Valdobbiadene, and Asolo Prosecco around the nearby town of Asolo. Prosecco Superiore is always spumante and comes only from these DOCG areas.", Image: UIImage(named: "per")! )
        let wine17 = Wines(Name: "Lambrusco",  Country: "Italy", Color: "Red Sparkling", Description: "Hailing from the Emilia-Romagna region of Italy, Lambrusco is a family of red grapes that are commonly used to make a sparkling red wine of the same name. It is one of the oldest wines made in Italy, dating back to the Bronze Age. Lambrusco comes in a number of varieties that range from dry to sweet and can vary in color from light red to deep inky purple. It is typically made in a frizzante (lightly sparkling) style and is relatively low in alcohol. Lambrusco is fruit-forward, with flavors of berries and some floral notes depending on the variety.", Image: UIImage(named: "Lambrusco")! )
        let wine18 = Wines(Name: "Malbec",  Country: "France", Color: "Red", Description: "Malbec is a purple grape variety used in making red wine. The grapes tend to have an inky dark color and robust tannins, and are known as one of the six grapes allowed in the blend of red Bordeaux wine.", Image: UIImage(named: "mel")! )
        let wine19 = Wines(Name: "Pinot Grigio",  Country: "France, Burgundy", Color: "White", Description: "Pinot gris, pinot grigio or Grauburgunder is a white wine grape variety of the species Vitis vinifera. Thought to be a mutant clone of the pinot noir variety, it normally has a grayish-blue fruit, accounting for its name but the grapes can have a brownish pink to black and even white appearance. ", Image: UIImage(named: "gris")! )
        let wine20 = Wines(Name: "Lambrusco",  Country: "Italy", Color: "Red Sparkling", Description: "Hailing from the Emilia-Romagna region of Italy, Lambrusco is a family of red grapes that are commonly used to make a sparkling red wine of the same name. It is one of the oldest wines made in Italy, dating back to the Bronze Age. Lambrusco comes in a number of varieties that range from dry to sweet and can vary in color from light red to deep inky purple. It is typically made in a frizzante (lightly sparkling) style and is relatively low in alcohol. Lambrusco is fruit-forward, with flavors of berries and some floral notes depending on the variety.", Image: UIImage(named: "Lambrusco")! )
        

        let wines = [wine1, wine2, wine3, wine4, wine5, wine6, wine7, wine8, wine9, wine10, wine11, wine12, wine13, wine14, wine15, wine16, wine17, wine18, wine19, wine20 ]
        
        for n in 0...19 {
            objects.insert(wines[n], at: n)
            let indexPath = IndexPath(row:n, section: n)
            tableView.insertRows(at: [indexPath], with: .automatic)
        }
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row] as! Wines
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = object
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
                detailViewController = controller
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let object = objects[indexPath.row] as! Wines
        cell.textLabel!.text = object.Name
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
        
        }
    }


}
