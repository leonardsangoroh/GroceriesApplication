//
//  CategoriesView.swift
//  GroceriesApplication
//
//  Created by Lee Sangoroh on 14/01/2024.
//

import UIKit

class CategoriesView: UIView {
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Seach Store"
        searchBar.searchBarStyle = .minimal
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        style()
        layout()
    }
    
    required init (coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: UIView.noIntrinsicMetric)
    }
}

extension CategoriesView {
    private func setupView(){
        addSubViews(searchBar)
    }
    
    private func style(){
        backgroundColor = .white
    }
    private func layout() {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            searchBar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            searchBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            searchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8)
        ])
    }
}
