//
//  ProductCell.swift
//  JeffMall
//
//  Created by Jeff Jeong on 2019. 7. 1..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

import UIKit

// 제품 쎌(아이템) 클래스
class ProductCell: UICollectionViewCell {
 
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    // 제품 쎌의 뷰를 업데이트하는 함수
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}
