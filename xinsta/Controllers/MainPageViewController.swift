//
//  ViewController.swift
//  xinsta
//
//  Created by Jongbum Lee on 2023/08/14.
//

import UIKit

class ViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
            if viewController.tabBarItem.title == "Item" {
                
                // 원하는 스토리보드의 뷰 컨트롤러 로드
                let storyBoard = UIStoryboard(name: "Item", bundle: nil)
                if let targetViewController = storyBoard.instantiateViewController(withIdentifier: "SearchStoryboard") as? SearchViewController {
                    self.setViewControllers([targetViewController], animated: true)
                    return false // 이 탭을 선택하지 않도록 설정
                }
            }
            return true // 다른 탭들은 정상적으로 선택되도록 설정
        }
    }

