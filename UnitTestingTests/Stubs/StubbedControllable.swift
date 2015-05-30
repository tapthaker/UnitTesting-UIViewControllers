//
//  StubbedControllable.swift
//  UnitTesting
//
//  Created by Tapan Thaker on 30/05/15.
//  Copyright (c) 2015 Tapan Thaker. All rights reserved.
//

import UIKit

class StubbedControllable: NSObject,Controllable {
    
    var eventable: Eventable?
    var renders: [[String : AnyObject]]
    var goToPages: [String]
    var alerts: [String]
    var stubbedGetValue: [String : NSObject]
    
    
    override init(){
        renders = []
        goToPages = []
        alerts = []
        stubbedGetValue = Dictionary<String,NSObject>()
        super.init()
    }
    
    func render(key: String!, value: NSObject!) {
        renders.append([key : value])
    }
    
    var lastRender : [String : AnyObject] {
        get{
            return renders[renders.count-1]
        }
    }
    
    
    func getValue(key: String!) -> NSObject! {
        return stubbedGetValue[key]
    }
    
    func dispatchEvent(eventName: String,eventValue: AnyObject?){
        eventable?.dispatchEvent(eventName, object: eventValue as? NSObject)
    }
    
    func goToPage(pageName: String!) {
        goToPages.append(pageName)
    }
    
    var lastPage: String?{
        get{
            if (goToPages.count == 0){
                return nil
            }
            return goToPages[goToPages.count-1]
        }
    }
    
    func showAlert(alertMessage: String!) {
        alerts.append(alertMessage)
    }
    
    var lastAlert: String?{
        get{
            if (alerts.count == 0){
                return nil
            }
            return alerts[alerts.count-1]
        }
    }
}
