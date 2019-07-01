//
//  CategoryCell.swift
//  JeffMall
//
//  Created by Jeff Jeong on 2019. 6. 30..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

import UIKit

// 카테고리 쎌 클래스
class CategoryCell: UITableViewCell {

    // 쎌에 있는 ui 컴포넌트들 
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    @IBOutlet weak var view: UIView!
    
    /*
     기능: 뷰를 업데이트하는 함수
     입력: 카테고리
     */
    func updateViews(category: Category){
        // 아울렛 값 설정
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    
    func whenViewClicked() {
        view.isHidden = false
        categoryTitle.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

}
