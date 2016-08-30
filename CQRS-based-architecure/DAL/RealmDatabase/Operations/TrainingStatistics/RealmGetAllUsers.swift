

import Foundation
import RealmSwift
import RxRealm
import RxSwift

final class RealmGetAllUsers: ContextOperational {
    
    func execute(context: Realm) -> Observable<[SampleUserRealm]> {
        let stats = context.objects(SampleUserRealm.self)
            .sorted("age", ascending: false)
            .asObservableArray()
        
        return stats
    }
}
