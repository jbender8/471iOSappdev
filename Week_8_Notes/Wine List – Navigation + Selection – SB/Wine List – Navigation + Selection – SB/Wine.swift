//
//  Wine.swift
//  Wine List - Subtitle - SB
//
//  Created by Xiaoping Jia on 12/23/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import Foundation

let wines = [
    Wine(name: "Barbera",
        type: .red,
        shortDescription: "Full-bodied Italian Red",
        longDescription: "Barbera is a red wine grape found primarily in Italy's Piedmont region. It produces hearty red wines with deep ruby colors, full body and low tannin levels."),
    
    Wine(name: "Cabernet Sauvignon",
        type: .red,
        shortDescription: "Full-bodied, intense Red",
        longDescription: "Cabernet Sauvignon is a red wine known for its depth of flavor, aroma and ability to age (present by the wine’s noticeable tannins). It is full-bodied and intense, with cherry-currant and sometimes herbal flavors."),
    
    Wine(name: "Champagne",
        type: .sparkling,
        shortDescription: "Sparkling White from Champagne region",
        longDescription: "These wines are made effervescent by a secondary fermentation in the wine-making process. Champagnes and sparkling wines range in style from very dry (Natural), dry (brut) and slightly sweet (extra Dry) to sweet (sec and Demi-Sec). Many sparkling wines are also identified as Blanc de Blancs (wines made from white grapes) or Blanc de Noirs (wines produced from red grapes)."),
    
    Wine(name: "Chardonnay",
        type: .white,
        shortDescription: "Popular, complex White from Burgundy",
        longDescription: "One of the world’s most popular wines, Chardonnay is a white wine originating from Burgundy.  Flavors range from clean and crisp with a hint of varietal flavor to rich and complex, vanilla, butter and oak-aged wines. Chardonnay typically balances fruit, acidity and texture."),
    
    Wine(name: "Chenin Blanc",
        type: .white,
        shortDescription: "Fresh, light White",
        longDescription: "Chenin Blanc is a white wine with fresh, delicate floral characteristics. It grows well in warmer climates and produces light, well-balanced wines ranging from dry to off-dry (slightly sweet) styles."),
    
    Wine(name: "Dolcetto",
        type: .red,
        shortDescription: "Light Italian Red",
        longDescription: "This red wine grape is found almost exclusively in Italy's Piedmont region. It produces light and fruity wine."),
    
    Wine(name: "Fume Blanc",
        type: .white,
        shortDescription: "Dry White made from Sauvignon Blanc",
        longDescription: "Invented by Robert Mondavi in 1970, Fume Blanc is a Sauvignon Blanc that has been fermented in oak."),
    
    Wine(name: "Gewürztraminer",
        type: .white,
        shortDescription: "Rich German White",
        longDescription: "Gewürztraminer is a white German wine that produced distinctive wines rich in spicy aromas and full flavors, ranging from dry to sweet. This varietal is a popular choice for Asian dishes."),
    
    Wine(name: "Merlot",
        type: .red,
        shortDescription: "Medium to full-bodied Red",
        longDescription: "Merlot is a red wine with medium to full body with black cherry and herbal flavors. Merlot is typically smooth, soft and mellow."),
    
    Wine(name: "Mourvedre",
        type: .red,
        shortDescription: "Rich Red from Rhone Valley",
        longDescription: "This warm-weather, red wine grape is common in Southern France's Rhone Valley. Rich in color with early aromas, often blended with Syrah."),
    
    Wine(name: "Petite Sirah",
        type: .red,
        shortDescription: "Robust tannic Red",
        longDescription: "Petite Sirahs are inky red wines with firm, robust tannic tastes, often with peppery flavors. Petite Sirahs may complement meals with rich meats."),
    
    Wine(name: "Pinot Gris",
        type: .white,
        shortDescription: "Popular German and Italian White",
        longDescription: "The low acidity of this white grape helps produce rich, lightly perfumed wines that are often more colorful than other whites."),
    
    Wine(name: "Pinot Noir",
        type: .red,
        shortDescription: "Light to medium bodied Burgundy Red",
        longDescription: "Pinot Noir is the world famous grape from Burgundy and more recently California and the Pacific Northwest.  A light to medium-body wine, pegged as one of the most difficult to grow and make. Delicate and smooth with rich complexity, Pinot Noir is a versatile dinner companion."),
    
    Wine(name: "Riesling",
        type: .white,
        shortDescription: "Full-bodied or sweet German White",
        longDescription: "Riesling is the classic white wine grape from Germany and known for its floral perfume. Depending on where they're made, they can be crisp and bone-dry, full-bodied and spicy or luscious and sweet."),
    
    Wine(name: "Rosés",
        type: .rosé,
        shortDescription: "Light, sweet, pink colored wine",
        longDescription: "Rosés, also called blush wines, are light pink wines made from several red wine grapes. They get their color from a very short period of contact with the grape skins during the wine-making process. Rosés are light, usually somewhat sweet and best served well-chilled."),
    
    Wine(name: "Sangiovese",
        type: .red,
        shortDescription: "Dry Italian Red",
        longDescription: "Sangiovese is best known as the Italian red wine, Chianti. Hearty and dry, it often displays a distinctively smooth texture with spice, raspberry and licorice flavors."),
    
    Wine(name: "Sauvignon Blanc",
        type: .white,
        shortDescription: "Refreshing White",
        longDescription: "Sauvignon Blanc is a white wine best known for its grassy, herbal flavors and is a popular choice for shellfish or as a refreshing alternative to Chardonnay."),
    
    Wine(name: "Syrah",
        type: .red,
        shortDescription: "Complex Red",
        longDescription: "Syrah (Shiraz) can produce giant red wines with strong tannins and complex combinations of flavors including berry, plum and smoke. It's known as Shiraz mainly in Australia and South Africa."),
    
    Wine(name: "Viognier",
        type: .white,
        shortDescription: "Aromatic White",
        longDescription: "Viognier is a rare white grape growing in popularity for its uniqueness.  It is an aromatic variety typically displaying peach, apricot and sometimes spicy flavors."),
    
    Wine(name: "Zinfandel",
        type: .red,
        shortDescription: "Medium to full-bodied Red",
        longDescription: "Zinfandel is a medium to full-bodied red wine with berry or spicy, peppery flavors. Great with pizza and tangy barbecue sauce."),
    
]

class Wine {
    
    enum `Type`: String {
        case red = "red"
        case white = "white"
        case rosé = "rose"
        case sparkling = "sparkling"
    }
    
    var name: String
    var type: Type
    var shortDescription: String
    var longDescription: String
    
    init(name: String, type: Type, shortDescription: String, longDescription: String) {
        self.name = name
        self.type = type
        self.shortDescription = shortDescription
        self.longDescription = longDescription
    }
    
}
