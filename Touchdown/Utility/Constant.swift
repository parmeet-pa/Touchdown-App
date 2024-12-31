//
//  Created by Robert Petras
//  Credo Academy ♥ Design and Code
//  https://credo.academy
//

import SwiftUI

let players: [Player] = Bundle.main.decode("player.json")
let categories:[category] = Bundle.main.decode("category.json")
let product:[Product] = Bundle.main.decode("product.json")
let brands:[Brand] = Bundle.main.decode("brand.json")

let sampleProduct: Product = product[0]
let colorBackground:Color = Color("ColorBackground")
let colorGray:Color = Color(UIColor.systemGray4)
let columnspacing:CGFloat = 10
let rowspacing:CGFloat = 10

var gridlayout:[GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing:rowspacing),count: 2)
}
let feedback = UIImpactFeedbackGenerator(style: .heavy)
