//
//  DataService.swift
//  JeffMall
//
//  Created by Jeff Jeong on 2019. 6. 30..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

import Foundation
// 데이터를 받는 서비스 클래스
class DataService {
    // 싱글턴 패턴적용
    // 메모리에 하나만 올라감
    static let instance = DataService()
    
    // 카테고리 데이터 배열
    private let categories = [
        Category(title: "DRESS", imageName: "dress.jpg"),
        Category(title: "BLOUSE", imageName: "blouse.jpg"),
        Category(title: "TSHIRT", imageName: "topTee.jpg"),
        Category(title: "PANTS", imageName: "skirtPants.jpg"),
        Category(title: "OUTER", imageName: "outer.jpg"),
        Category(title: "ETC", imageName: "etc")
    ]
    
    
    private let dresses = [
        Product(title: "Love Sara Dress black", price: "￦25,000", imageName: "dress_01.jpg"),
        Product(title: "Lova Sara Dress green", price: "￦23,000", imageName: "dress_02.jpg"),
        Product(title: "Lova Sara Dress blue", price: "￦21,000", imageName: "dress_03.jpg"),
        Product(title: "Lova Sara Dress light green", price: "￦27,000", imageName: "dress_04.jpg"),
        Product(title: "Lova Sara Dress red", price: "￦24,000", imageName: "dress_05.jpg")
    ]
    
    private let blouses = [
        Product(title: "Love Sara Blouse black", price: "￦15,000", imageName: "dress_01.jpg"),
        Product(title: "Lova Sara Blouse green", price: "￦13,000", imageName: "dress_02.jpg"),
        Product(title: "Lova Sara Blouse blue", price: "￦16,000", imageName: "dress_03.jpg"),
        Product(title: "Lova Sara Blouse light green", price: "￦17,000", imageName: "dress_04.jpg"),
        Product(title: "Lova Sara Blouse red", price: "￦14,000", imageName: "dress_05.jpg")
    ]
    
    private let tShirts = [
        Product(title: "Love Sara Top black", price: "￦5,000", imageName: "dress_01.jpg"),
        Product(title: "Lova Sara Top green", price: "￦6,000", imageName: "dress_02.jpg"),
        Product(title: "Lova Sara Top blue", price: "￦5,500", imageName: "dress_03.jpg"),
        Product(title: "Lova Sara Top light green", price: "￦6,500", imageName: "dress_04.jpg"),
        Product(title: "Lova Sara Top red", price: "￦7,000", imageName: "dress_05.jpg")
    ]
    
    private let pants = [
        Product(title: "Love Sara Pants black", price: "￦10,000", imageName: "dress_01.jpg"),
        Product(title: "Lova Sara Pants green", price: "￦11,000", imageName: "dress_02.jpg"),
        Product(title: "Lova Sara Pants blue", price: "￦12,000", imageName: "dress_03.jpg"),
        Product(title: "Lova Sara Pants light green", price: "￦9,000", imageName: "dress_04.jpg"),
        Product(title: "Lova Sara Pants red", price: "￦13,000", imageName: "dress_05.jpg")
    ]
    
    private let outers = [
        Product(title: "Love Sara Outer black", price: "￦30,000", imageName: "dress_01.jpg"),
        Product(title: "Lova Sara Outer green", price: "￦31,000", imageName: "dress_02.jpg"),
        Product(title: "Lova Sara Outer blue", price: "￦22,000", imageName: "dress_03.jpg"),
        Product(title: "Lova Sara Outer light green", price: "￦49,000", imageName: "dress_04.jpg"),
        Product(title: "Lova Sara Outer red", price: "￦35,000", imageName: "dress_05.jpg")
    ]
    
    private let etc = [Product]()
    
    /*
     기능: 카테고리를 가져오는 함수
     입력: 없음
     출력: 카테고리 배열
    */
    func getCategories() -> [Category] {
        return categories
    }
    
    /*
     기능: 제품들을 가져오는 함수
     입력: 없음
     출력: 카테고리 배열
     */
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "DRESS":
            return getDresses()
        case "BLOUSE":
           return getBlouses()
        case "TSHIRT":
           return getTShirts()
        case "PANTS":
           return getPants()
        case "OUTER":
           return getOuters()
        case "ETC":
           return getEtc()
        default:
           return getDresses()
        }
    }
    
    func getDresses() -> [Product] {
        return dresses
    }
    
    func getBlouses() -> [Product] {
        return blouses
    }
    
    func getTShirts() -> [Product] {
        return tShirts
    }
    
    func getPants() -> [Product] {
        return pants
    }
    
    func getOuters() -> [Product] {
        return outers
    }
    
    func getEtc() -> [Product] {
        return etc
    }
    
}
