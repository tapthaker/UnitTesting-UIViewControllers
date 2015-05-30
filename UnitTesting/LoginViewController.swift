import UIKit

class LoginViewController: BaseViewController{
    
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var textFieldUsername: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.eventable = LoginBusinessLogicController()
    }
    
    override func render(key: String!, value: NSObject!) {
        switch(key){
            case "message":
                self.labelMessage.text = value as? String
            default:
                super.render(key, value: value)
        }
    }
    
    override func getValue(key: String!) -> NSObject {
        switch(key){
        case "username":
            return self.textFieldUsername.text
        case "password":
            return self.textFieldPassword.text
        default:
            return super.getValue(key)
        }
    }
    @IBAction func onLoginButtonPressed(sender: AnyObject) {
        self.eventable?.dispatchEvent("loginButtonPressed", object: nil)
    }
    
}

