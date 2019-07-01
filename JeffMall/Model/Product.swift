//
//  Product.swift
//  JeffMall
//
//  Created by Jeff Jeong on 2019. 7. 1..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    //생성자
    init(title: String, price: String, imageName: String){
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
}

