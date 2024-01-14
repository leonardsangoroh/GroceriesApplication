//
//  ViewController.swift
//  GroceriesApplication
//
//  Created by Lee Sangoroh on 13/01/2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let welcomeView = WelcomeView()
    var router: Router
    
    init(router: Router){
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //welcomeView.translatesAutoresizingMaskIntoConstraints = false;
        setup()
        layout()
    }
    
    private func setup() {
        view.addSubview(welcomeView)
    }
    
    private func layout() {
        welcomeView.pinToEdges(of: view)
    }


}


class WelcomeView: UIView {
    
    private lazy var backgroundImage: UIImageView = {
        let imageView = UIImageView(image: Images.Welcome.background)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
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
    ///explitly handle all the sizing
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: UIView.noIntrinsicMetric)
    }
}

extension WelcomeView {
    private func setupView(){
        addSubViews(backgroundImage)
    }
    
    private func style(){
        backgroundColor = .blue
    }
    private func layout() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.pinToEdges(of: self)
    }
}
