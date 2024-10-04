//
//  Food.swift
//  DeepLinking
//
//  Created by shopnil hasan on 2/10/24.
//

import Foundation

protocol MenuItem {
    var id: String {get}
    var name: String { get }
    var title: String { get }
    var description: String { get }
    var price: Decimal { get }
}

struct Food: Identifiable, Hashable, MenuItem {
    var id: String { "\(name)_ \(title)" }
    let name: String
    let title: String
    let description: String
    let price: Decimal
}

struct Drink: Identifiable, Hashable, MenuItem {
    var id: String { "\(name)_ \(title)" }
    let name: String
    let title: String
    let description: String
    let price: Decimal
    let isFizzy: Bool
}

let foods: [Food] = [
    Food(name: "Burger", title: "Burger", description: "lorem ipsum dolor color", price: 6.6),
    Food(name: "Pizza", title: "Pizza", description: "lorem ipsum dolor color", price: 7.7),
    Food(name: "Fries", title: "Fries", description: "lorem ipsum dolor color", price: 1.2),
    Food(name: "Chicken", title: "Chicken", description: "lorem ipsum dolor color", price: 6.7),
    Food(name: "Salad", title: "Salad", description: "lorem ipsum dolor color", price: 6.5),
    Food(name: "Pasta", title: "Pasta", description: "lorem ipsum dolor color", price: 4.7),
    Food(name: "Soup", title: "Soup", description: "lorem ipsum dolor color", price: 6.8)
    ]

let drinks: [Drink] = [
    Drink(name: "Coke", title: "Coke", description: "lorem ipsum dolor color", price: 3.6, isFizzy: true),
    Drink(name: "Pepsi", title: "Pepsi", description: "lorem ipsum dolor color", price:  5.6, isFizzy: true),
    Drink(name: "Water", title: "Water", description: "lorem ipsum dolor color", price: 1.2, isFizzy: false),
    Drink(name: "Juice", title: "Juice", description: "lorem ipsum dolor color", price: 1.2, isFizzy: false)
    ]
