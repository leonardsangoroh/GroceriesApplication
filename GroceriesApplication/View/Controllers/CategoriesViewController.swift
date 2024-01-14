//
//  CategoriesViewController.swift
//  GroceriesApplication
//
//  Created by Lee Sangoroh on 14/01/2024.
//

import UIKit

class CategoriesViewController: UIViewController {
    private let categoriesView = CategoriesView()
    
    ///declare property named 'router' of type 'Router'
    var router: Router
    ///initializer for the class. Takes the instance of the 'Router' as a parameter and assigns it to the 'router' property
    init(router: Router) {
        self.router = router
        ///common when not loading a view from the Interface Builder
        super.init(nibName: nil, bundle: nil)
    }
    ///initializer required by the NSCoder Protocol
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupNavigationController()
        setup()
        layout()
    }
    
    private func setup(){
        view.addSubview(categoriesView)
    }
    
    private func layout(){
        categoriesView.pinToEdges(of: view)
    }
    
    private func setupNavigationController() {
        title = "Find Products"
        navigationItem.setHidesBackButton(true, animated: false)
    }
}
