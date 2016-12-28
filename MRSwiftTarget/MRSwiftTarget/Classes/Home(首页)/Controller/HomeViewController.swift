//
//  HomeViewController.swift
//  MRSwiftTarget
//
//  Created by ms on 2016/12/27.
//  Copyright © 2016年 mrscorpion. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1.设置导航栏
        setupNavigationBar()
    }

    // MARK: 设置导航栏
    private func setupNavigationBar() {
        setupNavigationLeftBar()
        setupNavigationRightBar()
    }
    private func setupNavigationLeftBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem.createBarButtonItem(imageName: "logo", target: self, action: #selector(self.leftItemClick))
    }
    private func setupNavigationRightBar() {
        let size = CGSize(width: 40, height: 44)
        let historyItem = UIBarButtonItem.createBarButtonItem(imageName: "image_my_history", highImageName: "image_my_history_click", size: size, target: self, action: #selector(self.historyItemClick))
        let searchItem = UIBarButtonItem.createBarButtonItem(imageName: "btn_search", highImageName: "btn_search_click", size: size, target: self, action: #selector(self.searchItemClick))
        let qrCodeItem = UIBarButtonItem.createBarButtonItem(imageName: "image_scan", highImageName: "image_scan_click", size: size, target: self, action: #selector(self.qrCodeItemClick))
        navigationItem.rightBarButtonItems = [historyItem, searchItem , qrCodeItem]
    }

    // MARK: 导航栏的事件处理
    @objc private func leftItemClick() {
        print("点击了logo")
    }
    @objc private func qrCodeItemClick() {
        print("点击了二维码")
    }
    @objc private func searchItemClick() {
        print("点击了搜索")
    }
    @objc private func historyItemClick() {
        print("点击了历史")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
