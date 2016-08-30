
import Foundation
import RealmSwift
import RxSwift

final class RealmProvider : ContextProviding {
    typealias TContext = Realm
    
    let realm: Realm
    
    init() {
        self.realm = RealmFactory.getRealm(DefaultRealmConfig(fileName: "trainingStats"))
    }
    
    func execute<TOut, O: ContextOperational where O.TContext == TContext, O.TOut == TOut>(operation: O) -> TOut
    {
        return operation.execute(realm)
    }
}