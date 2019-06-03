//
//  Target.swift
//  EasyAction
//
//  Created by DongLunYou on 2019/6/3.
//

import Foundation
import UIKit
public class Target {
    var action : Action?
    var control : UIControl
    var event : UIControl.Event
    init(control : UIControl , event : UIControl.Event , action : Action? = nil) {
        self.action = action
        self.control = control
        self.event = event
        start()
    }
    public func start(){
        control.addTarget(self, action: #selector(handleFunc), for: event)
    }
    public func stop(){
        control.removeTarget(self, action: #selector(handleFunc), for: event)
    }
    
    @objc func handleFunc(){
        guard let action = self.action else {
            return
        }
        action()
    }
}
class TargetManager {
    public static let shareInstanced = TargetManager()
    var targets : [Target] = []
    
    @discardableResult
    func createTarget(action: @escaping ()->Void , uiControl: UIControl, event: UIControl.Event)->Target{
        let target = Target(control: uiControl, event: event,action:action)
        addTarget(target: target)
        return target
    }
    func addTarget(target : Target){
        targets.append(target)
    }
}
