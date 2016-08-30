
import UIKit
import RxSwift

class ViewController: UIViewController {
    let dispisables = DisposeBag()
    var operationHandler = OperationHandler() //inject it of course and move to viewmodel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Sample usage:
        
        let user = SampleUser(name: "test", age: 20, email: "test@test.com")
        self.operationHandler.execute(InsertUser(user: user))
        
        self.printUsers()
    }

    private func printUsers() {
        self.operationHandler.execute(GetAllUsers())
            .subscribeNext { value in
                print(value.count)
            }.addDisposableTo(self.dispisables)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

