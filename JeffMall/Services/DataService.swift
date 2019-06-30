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
        Category(title: "TOP & TEE", imageName: "topTee.jpg"),
        Category(title: "SKIRT & PANTS", imageName: "skirtPants.jpg"),
        Category(title: "OUTER", imageName: "outer.jpg")
    ]
    
    /*
     기능: 카테고리를 가져오는 함수
     입력: 없음
     출력: 카테고리 배열
    */
    func getCategories() -> [Category] {
        return categories
    }
    
}
