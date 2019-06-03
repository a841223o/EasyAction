//
//  EasyActionBtn.swift
//  EasyAction
//
//  Created by DongLunYou on 2019/5/30.
//
import Foundation
import UIKit

public typealias Action = ()->Void

extension UIButton{
    @discardableResult
    public func touchUpInside(_ action: @escaping Action)->Target{
        let target = TargetManager.shareInstanced.createTarget(action: action, uiControl: self, event: .touchUpInside)
        return target
    }
    @discardableResult
    public func touchUpOutside(_ action: @escaping Action)->Target{
        let target = TargetManager.shareInstanced.createTarget(action: action, uiControl: self, event: .touchUpOutside)
        return target
    }
    @discardableResult
    public func touchDown(_ action: @escaping Action)->Target{
        let target = TargetManager.shareInstanced.createTarget(action: action, uiControl: self, event: .touchDown)
        return target
    }
    
}





