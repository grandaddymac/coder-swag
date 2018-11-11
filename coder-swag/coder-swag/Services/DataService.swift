//
//  DataService.swift
//  coder-swag
//
//  Created by gdm on 11/10/18.
//  Copyright © 2018 gdm. All rights reserved.
//

import Foundation

class DataService {
    
    //Singleton - Desgin pattern that allows only one copy of this constant in memory
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        
    ]
    
    private let hats = [
    Product(title: "Devslopes logo graphic beanie", price: "$18", imageName: "hat01.png"),
    Product(title: "Devslopes logo hat black", price: "22", imageName: "hat02.png"),
    Product(title: "Devslopes logo hat white", price: "22", imageName: "hat03.png"),
    Product(title: "Devslopes logo snapback", price: "20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
    Product(title: "Devslopes logo hoodie grey", price: "32", imageName: "hoodie01.png"),
    Product(title: "Devslopes logo hoodie red", price: "32", imageName: "hoodie02.png"),
    Product(title: "Devslopes hoodie grey", price: "32", imageName: "hoodie03.png"),
    Product(title: "Devslopes hoodie black", price: "32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
    Product(title: "Devslopes logo shirt black", price: "18", imageName: "shirt01.png"),
    Product(title: "Devslopes badge shirt light grey", price: "18", imageName: "shirt02.png"),
    Product(title: "Devslopes logo shirt red", price: "18", imageName: "shirt03.png"),
    Product(title: "Hustle delegate grey", price: "18", imageName: "shirt04.png"),
    Product(title: "Kickflip Studios Black", price: "18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
}
