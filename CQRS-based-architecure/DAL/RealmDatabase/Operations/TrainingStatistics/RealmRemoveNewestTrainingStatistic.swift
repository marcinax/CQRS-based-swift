
import Foundation
import RealmSwift

final class RealmRemoveNewestTrainingStatistic : ContextOperational {
    let trainingType: TrainingType
    
    init(trainingType: TrainingType) {
        self.trainingType = trainingType
    }
    
    func execute(context: Realm) {
        try! context.write {
            if let lastItem = context.objects(TrainingStatisticRealm.self)
                .filter("trainingType == %@", trainingType.rawValue)
                .last {
                context.delete(lastItem)
            }
        }
    }
}