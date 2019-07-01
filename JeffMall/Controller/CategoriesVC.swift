//
//  ViewController.swift
//  JeffMall
//
//  Created by Jeff Jeong on 2019. 6. 30..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

import UIKit

// 카테고리 뷰 컨트롤러 클래스
// 데이터 서비스에서 데이터를 받기위해 프로토콜 implement 한다.
// UITableViewDataSource, UITableViewDelegate
class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    // 카테고리 테이블뷰
    @IBOutlet weak var categoryTable: UITableView!
    
    // 뷰가 로드 되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        // implement 한 프로토콜들이 자기 자신을 가르키게 한다.
        // 안드로이드 자바에서 implement 인터페이스와 일치
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 데이터 서비스에 있는 카테고리 배열의 카운트 반환 
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 쎌을 재사용하는 함수 dequeueReusableCell()
        // 쎌을 재사용할수 있다면
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            // 쎌을 업데이트 해서 쎌을 반환하고
            return cell
        }
        else { // 쎌을 재사용할수 없다면
            // 기본 쏄을 반환한다.
            return CategoryCell()
        }
        
    }
    
    // didDeselectRowAt 이 자동완성될수 있으니까 잘 보고 하자.....
    // 쎌 뷰가 선택되었을때
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let category = DataService.instance.getCategories()[indexPath.row]
        print("선택된 인덱스: ", indexPath.row)
        
        let categoryCell: CategoryCell = tableView.cellForRow(at: indexPath) as! CategoryCell
        categoryCell.whenViewClicked()
        
        
        // ProductVC 에게 category 전달
        performSegue(withIdentifier: "ProductsVC", sender: category)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 도착하는 곳이 ProductsVC 이면
        if let productsVC = segue.destination as? ProductsVC {
            
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            // sender 가 Category 일것이다.
            assert(sender as? Category != nil)
            // product 뷰 컨트롤러의 product 배열에 값을 넣는다.
            productsVC.initProducts(category: sender as! Category)
            
            
        }
    }
    
    

}

