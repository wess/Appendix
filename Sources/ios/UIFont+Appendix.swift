//
//  UIFont+Appendix.swift
//  Appendix
//
//  Created by Wesley Cope on 7/28/15.
//  Copyright © 2015 Wess Cope. All rights reserved.
//

import Foundation
import UIKit

public extension UIFont {

  convenience init(_ name:String, _ size:CGFloat) {
    self.init(descriptor: UIFontDescriptor(name: name, size: size), size: 0)
  }

  public func size(of string: String, constrainedToWidth width: Double) -> CGSize {
    return (string as NSString).boundingRect(with: CGSize(width: width, height: DBL_MAX),
                                             options: NSStringDrawingOptions.usesLineFragmentOrigin,
                                             attributes: [NSAttributedString.Key.font: self],
                                             context: nil).size
  }
}
