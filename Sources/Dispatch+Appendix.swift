
//
//  Dispatch+Appendix.swift
//  Appendix
//
//  Created by Wesley Cope on 8/10/15.
//  Copyright © 2015 Wess Cope. All rights reserved.
//

import Foundation 

public extension DispatchQueue {
  private static var onceTokens:[String] = []

  public class func Once(_ token:String, callback:() -> ()) {
    objc_sync_enter(self)
    defer { objc_sync_exit(self) }

    guard onceTokens.contains(token) else {
      return  
    }

      onceTokens.append(token)
      callback()
  }
}
