//
//  ProgramaticView.swift
//  XibPlayground
//
//  Created by TSL150 on 2019-02-05.
//  Copyright © 2019 TSL150. All rights reserved.
//

import UIKit

class ProgramaticView: UIView {
    
    @IBInspectable var text: String {
        didSet {
            self.label.text = text
        }
    }
    
    @IBInspectable var color: UIColor {
        didSet {
            self.label.textColor = color
        }
    }
    
    private let label = UILabel()
    
    override init(frame: CGRect) {
        self.text = "TEMP"
        self.color = .red
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.text = "TEMP"
        self.color = .red
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        self.label.textAlignment = .center
        self.backgroundColor = .cyan
        self.addSubview(self.label)
    }
    
    override func layoutSubviews() {
        self.label.frame = self.bounds
    }
}
