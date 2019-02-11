//
//  XibViewController.swift
//  XibPlayground
//
//  Created by TSL150 on 2019-02-05.
//  Copyright © 2019 TSL150. All rights reserved.
//

import UIKit

class XibViewController: UIViewController {

    let immutableProperty: Int
    let programaticView = ProgramaticView(color: UIColor.purple, text: "Hello Again")
    private let privateProperty: Int
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var programaticViewFromIB: ProgramaticView!
    
    
    
    init(injectedParameter1: Int, injectedParameter2: Int) {
        self.immutableProperty = injectedParameter1
        self.privateProperty = injectedParameter2
        super.init(nibName: "XibViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(immutableProperty)
        setupView()
    }
    
    private func setupView() {
        view.addSubview(programaticView)
    }
    
    override func viewDidLayoutSubviews() {
        programaticView.frame = CGRect(x: 30, y: view.bounds.height - 150, width: view.bounds.width - 100, height: 100)
    }
}
