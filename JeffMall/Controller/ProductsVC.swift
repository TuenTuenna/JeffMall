//
//  ProductVC.swift
//  JeffMall
//
//  Created by Jeff Jeong on 2019. 7. 1..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

import UIKit
// 제품 뷰 컨트롤러 클래스
// 데이터 서비스에서 데이터를 받기위해 프로토콜 implement 한다.
// UICollectionViewDataSource,UICollectionViewDelegate
class ProductsVC: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    // 아울렛 설정
    @IBOutlet weak var productsCollection: UICollectionView!
    
    // 제품 배열
    private(set) public var products = [Product]()
    
    // 뷰가 로드되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 임플레먼트 자기 자신 지정
        productsCollection.dataSource = self
        productsCollection.delegate = self
        
    }
    
    
    // 카테고리의 타이틀에 해당하는 제품데이터를 배열에 넣는다.
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
        
    }
    
    //
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 배열의 요소 갯수 반환
        return products.count
    }
    
    // 셀 설정 함수
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        // cell 이 ProductCell 이면
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            // 해당 제품 가져오기
            let product = products[indexPath.row]
            // 해당 제품의 뷰를 업데이트
            cell.updateViews(product: product)
            // 적용된 쎌을 반환
            return cell
        }
        
        return ProductCell()
    }
    
}
