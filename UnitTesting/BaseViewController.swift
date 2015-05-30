import UIKit

class BaseViewController: UIViewController,Controllable {
    
    var eventable: Eventable?{
        didSet{
            self.eventable?.controllable = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func render(key: String!, value: NSObject!) {
            NSLog("Render for \(key) not implemented")
    }
    
    func getValue(key: String!) -> NSObject! {
        return NSNull()
    }
    
    func dispatch(eventName: String, eventValue: AnyObject?){
        self.eventable?.dispatchEvent(eventName, object: eventValue as! NSObject)
    }
    
    func showAlert(alertMessage: String!) {
        UIAlertView(title: "Alert", message: alertMessage, delegate: nil, cancelButtonTitle: "Okay").show()
    }
    
}
