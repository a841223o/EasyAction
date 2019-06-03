//
//  EasyActionBtn.swift
//  EasyAction
//
//  Created by DongLunYou on 2019/5/30.
//
import Foundation
import UIKit

extension UIButton{
    public func onClick(_ action: @escaping ()->Void ){
        let target = DefaultTarget()
        target.targetAction(action: action, uiControl: self, event: .touchUpInside)
        print("onClick")
    }
}

class DefaultTarget {
    private var handle : (()->Void)?
    func targetAction(action:@escaping ()->Void,uiControl : UIControl ,event : UIControl.Event){
        uiControl.addTarget(self, action: #selector(handleFunc), for: event)
    }
    @objc private func handleFunc(){
        handle!()
    }
}
