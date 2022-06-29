//
//  Fruit.swift
//  Fructus
//
//  Created by Asem on 29/06/2022.
//

import Foundation
import SwiftUI

struct Fruit:Identifiable {
    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
}
