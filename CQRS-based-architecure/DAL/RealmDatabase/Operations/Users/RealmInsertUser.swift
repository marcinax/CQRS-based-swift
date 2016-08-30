

import Foundation
import RealmSwift
import RxSwift

final class RealmInsertUser : ContextOperational {
    let user: SampleUserRealm
    
    init(user: SampleUserRealm) {
        self.user = user
    }
    
    func execute(context: Realm) {
        try! context.write {
            context.add(self.user)
        }
    }
}