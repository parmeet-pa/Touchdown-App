//
//  Shop.swift
//  Touchdown
//
//  Created by Parmeet Singh on 21/10/24.
//

import Foundation

class Shop:ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct : Product? = nil
}
