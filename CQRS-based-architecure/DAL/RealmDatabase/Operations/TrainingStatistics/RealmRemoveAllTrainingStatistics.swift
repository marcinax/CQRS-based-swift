
import Foundation
import RealmSwift

final class RealmRemoveAllTrainingStatistics : ContextOperational {
    let trainingType: TrainingType
    
    init(trainingType: TrainingType) {
        self.trainingType = trainingType
    }
    
    func execute(context: Realm) {
        try! context.write {
            let allItems = context.objects(TrainingStatisticRealm.self)
                .filter("trainingType == %@", trainingType.rawValue)
            context.delete(allItems)
        }
    }
}