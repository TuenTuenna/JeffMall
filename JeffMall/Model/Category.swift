//
//  Category.swift
//  JeffMall
//
//  Created by Jeff Jeong on 2019. 6. 30..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

import Foundation

struct Category {
    // private(set) 키워드를 넣음으로써 다른 클래스에서 변경 불가능하다
    // 하지만 public 이 있으니까 접근은 가능하다.
    private(set) public var title: String
    private(set) public var imageName: String
    
    // 생성자 함수
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
} // Category struct
