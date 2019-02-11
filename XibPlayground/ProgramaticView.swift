//
//  ProgramaticView.swift
//  XibPlayground
//
//  Created by TSL150 on 2019-02-05.
//  Copyright © 2019 TSL150. All rights reserved.
//

import UIKit

class ProgramaticView: UIView {
    
    @IBInspectable var text: String = "" {
        didSet {
            self.label.text = text
        }
    }
    
    private let label = UILabel()
    
    convenience init(color: UIColor, text: String) {
        self.init(frame: CGRect.zero)
        setupView()
        self.label.textColor = color
        self.text = text
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        self.label.textColor = UIColor.green
        self.label.textAlignment = .center
    }
    
    override func layoutSubviews() {
        self.label.frame = self.bounds
    }

}
