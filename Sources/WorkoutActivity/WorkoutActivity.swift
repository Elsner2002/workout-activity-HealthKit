//
//  WorkoutActivity.swift
//  WorkoutActivity
//
//  Created by Felipe Elsner Silva on 26/11/25.
//

/// Types that represent user-selectable workout activities and utilities to map them
/// to human-readable names, SF Symbols, and HealthKit's `HKWorkoutActivityType`.

/// A comprehensive list of workout activities supported by the app.
///
/// - Conforms to `CaseIterable` to iterate over all cases (e.g., for pickers).
/// - Conforms to `Codable` for persistence and serialization.
enum WorkoutActivityType: CaseIterable, Codable {
    case americanFootball, archery, australianFootball, badminton, baseball, basketball, bowling, boxing, climbing, crossTraining, curling, cycling, elliptical, equestrianSports, fencing, fishing, functionalStrengthTraining, golf, gymnastics, handball, hiking, hockey, hunting, lacrosse, martialArts, mindAndBody, paddleSports, play, preparationAndRecovery, racquetball, rowing, rugby, running, sailing, skatingSports, snowSports, soccer, softball, squash, stairClimbing, surfingSports, swimming, tableTennis, tennis, trackAndField, traditionalStrengthTraining, volleyball, walking, waterFitness, waterPolo, waterSports, wrestling, yoga, barre, coreTraining, crossCountrySkiing, downhillSkiing, flexibility, highIntensityIntervalTraining, jumpRope, kickboxing, pilates, snowboarding, stairs, stepTraining, wheelchairWalkPace, wheelchairRunPace, taiChi, mixedCardio, handCycling, discSports, fitnessGaming, other
    // Each case corresponds to a HealthKit `HKWorkoutActivityType` where available.
    
    /// A human-readable display name for the workout activity.
    ///
    /// This value is intended for UI labels and localization-ready display.
    var name: String {
        switch self {
        case .americanFootball:                 return "American Football"
        case .archery:                          return "Archery"
        case .australianFootball:               return "Australian Football"
        case .badminton:                        return "Badminton"
        case .baseball:                         return "Baseball"
        case .basketball:                       return "Basketball"
        case .bowling:                          return "Bowling"
        case .boxing:                           return "Boxing"
        case .climbing:                         return "Climbing"
        case .crossTraining:                    return "Cross Training"
        case .curling:                          return "Curling"
        case .cycling:                          return "Cycling"
        case .elliptical:                       return "Elliptical"
        case .equestrianSports:                 return "Equestrian Sports"
        case .fencing:                          return "Fencing"
        case .fishing:                          return "Fishing"
        case .functionalStrengthTraining:       return "Functional Strength Training"
        case .golf:                             return "Golf"
        case .gymnastics:                       return "Gymnastics"
        case .handball:                         return "Handball"
        case .hiking:                           return "Hiking"
        case .hockey:                           return "Hockey"
        case .hunting:                          return "Hunting"
        case .lacrosse:                         return "Lacrosse"
        case .martialArts:                      return "Martial Arts"
        case .mindAndBody:                      return "Mind and Body"
        case .paddleSports:                     return "Paddle Sports"
        case .play:                             return "Play"
        case .preparationAndRecovery:           return "Preparation and Recovery"
        case .racquetball:                      return "Racquetball"
        case .rowing:                           return "Rowing"
        case .rugby:                            return "Rugby"
        case .running:                          return "Running"
        case .sailing:                          return "Sailing"
        case .skatingSports:                    return "Skating Sports"
        case .snowSports:                       return "Snow Sports"
        case .soccer:                           return "Soccer"
        case .softball:                         return "Softball"
        case .squash:                           return "Squash"
        case .stairClimbing:                    return "Stair Climbing"
        case .surfingSports:                    return "Surfing Sports"
        case .swimming:                         return "Swimming"
        case .tableTennis:                      return "Table Tennis"
        case .tennis:                           return "Tennis"
        case .trackAndField:                    return "Track and Field"
        case .traditionalStrengthTraining:      return "Traditional Strength Training"
        case .volleyball:                       return "Volleyball"
        case .walking:                          return "Walking"
        case .waterFitness:                     return "Water Fitness"
        case .waterPolo:                        return "Water Polo"
        case .waterSports:                      return "Water Sports"
        case .wrestling:                        return "Wrestling"
        case .yoga:                             return "Yoga"
        case .barre:                            return "Barre"
        case .coreTraining:                     return "Core Training"
        case .crossCountrySkiing:               return "Cross Country Skiing"
        case .downhillSkiing:                   return "Downhill Skiing"
        case .flexibility:                      return "Flexibility"
        case .highIntensityIntervalTraining:    return "High Intensity Interval Training"
        case .jumpRope:                         return "Jump Rope"
        case .kickboxing:                       return "Kickboxing"
        case .pilates:                          return "Pilates"
        case .snowboarding:                     return "Snowboarding"
        case .stairs:                           return "Stairs"
        case .stepTraining:                     return "Step Training"
        case .wheelchairWalkPace:               return "Wheelchair Walk Pace"
        case .wheelchairRunPace:                return "Wheelchair Run Pace"
        case .taiChi:                           return "Tai Chi"
        case .mixedCardio:                      return "Mixed Cardio"
        case .handCycling:                      return "Hand Cycling"
        case .discSports:                       return "Disc Sports"
        case .fitnessGaming:                    return "Fitness Gaming"
        case .other:                            return "Other"
        }
    }
    
    /// The SF Symbols name associated with this workout activity.
    ///
    /// - Note: Requires iOS 16+ as it uses newer figure symbols.
    /// - Returns: The symbol name (e.g., `figure.run`).
    @available(iOS 16.0, *)
    var icon: String {
        switch self {
        case .functionalStrengthTraining:       return "figure.strengthtraining.functional"
        case .traditionalStrengthTraining:      return "figure.strengthtraining.traditional"
        case .cycling:                          return "figure.outdoor.cycle"
        case .running:                          return "figure.run"
        case .taiChi:                           return "figure.taichi"
        case .wheelchairRunPace:                return "figure.roll.runningpace"
        case .wheelchairWalkPace:               return "figure.roll"
        case .rowing:                           return "figure.rower"
        case .jumpRope:                         return "figure.jumprope"
        case .skatingSports:                    return "figure.skating"
        case .snowSports:                       return "figure.snowboarding"
        case .walking:                          return "figure.walk"
        case .stairClimbing:                    return "figure.stairs"
        case .surfingSports:                    return "figure.surfing"
        case .swimming:                         return "figure.pool.swim"
        case .waterPolo:                        return "figure.waterpolo"
        case .waterSports:                      return "figure.water.fitness"
        case .crossCountrySkiing:               return "figure.skiing.crosscountry"
        case .downhillSkiing:                   return "figure.skiing.downhill"
        case .paddleSports:                     return "figure.tennis"
        case .preparationAndRecovery:           return "figure.strengthtraining.functional"
        case .highIntensityIntervalTraining:    return "figure.highintensity.intervaltraining"
        case .fitnessGaming:                    return "gamecontroller.fill"
        case .other:                            return "figure.stand"
        // Fallback: build a best-effort symbol name from the localized `name`.
        default:                                return "figure."+self.name.lowercased().replacing(" ", with: " ")
        }
    }
}


import HealthKit

// MARK: - HealthKit Mapping

/// HealthKit interoperability helpers for `WorkoutActivityType`.
extension WorkoutActivityType {
    
    /// Maps this `WorkoutActivityType` to the corresponding `HKWorkoutActivityType`.
    ///
    /// - Returns: The matching HealthKit workout activity type.
    /// - Availability: iOS 13+.
    @available(iOS 13.0, *)
    var workoutType: HKWorkoutActivityType {
        switch self {
        case .americanFootball:                 return HKWorkoutActivityType.americanFootball
        case .archery:                          return HKWorkoutActivityType.archery
        case .australianFootball:               return HKWorkoutActivityType.australianFootball
        case .badminton:                        return HKWorkoutActivityType.badminton
        case .baseball:                         return HKWorkoutActivityType.baseball
        case .basketball:                       return HKWorkoutActivityType.basketball
        case .bowling:                          return HKWorkoutActivityType.bowling
        case .boxing:                           return HKWorkoutActivityType.boxing
        case .climbing:                         return HKWorkoutActivityType.climbing
        case .crossTraining:                    return HKWorkoutActivityType.crossTraining
        case .curling:                          return HKWorkoutActivityType.curling
        case .cycling:                          return HKWorkoutActivityType.cycling
        case .elliptical:                       return HKWorkoutActivityType.elliptical
        case .equestrianSports:                 return HKWorkoutActivityType.equestrianSports
        case .fencing:                          return HKWorkoutActivityType.fencing
        case .fishing:                          return HKWorkoutActivityType.fishing
        case .functionalStrengthTraining:       return HKWorkoutActivityType.functionalStrengthTraining
        case .golf:                             return HKWorkoutActivityType.golf
        case .gymnastics:                       return HKWorkoutActivityType.gymnastics
        case .handball:                         return HKWorkoutActivityType.handball
        case .hiking:                           return HKWorkoutActivityType.hiking
        case .hockey:                           return HKWorkoutActivityType.hockey
        case .hunting:                          return HKWorkoutActivityType.hunting
        case .lacrosse:                         return HKWorkoutActivityType.lacrosse
        case .martialArts:                      return HKWorkoutActivityType.martialArts
        case .mindAndBody:                      return HKWorkoutActivityType.mindAndBody
        case .paddleSports:                     return HKWorkoutActivityType.paddleSports
        case .play:                             return HKWorkoutActivityType.play
        case .preparationAndRecovery:           return HKWorkoutActivityType.preparationAndRecovery
        case .racquetball:                      return HKWorkoutActivityType.racquetball
        case .rowing:                           return HKWorkoutActivityType.rowing
        case .rugby:                            return HKWorkoutActivityType.rugby
        case .running:                          return HKWorkoutActivityType.running
        case .sailing:                          return HKWorkoutActivityType.sailing
        case .skatingSports:                    return HKWorkoutActivityType.skatingSports
        case .snowSports:                       return HKWorkoutActivityType.snowSports
        case .soccer:                           return HKWorkoutActivityType.soccer
        case .softball:                         return HKWorkoutActivityType.softball
        case .squash:                           return HKWorkoutActivityType.squash
        case .stairClimbing:                    return HKWorkoutActivityType.stairClimbing
        case .surfingSports:                    return HKWorkoutActivityType.surfingSports
        case .swimming:                         return HKWorkoutActivityType.swimming
        case .tableTennis:                      return HKWorkoutActivityType.tableTennis
        case .tennis:                           return HKWorkoutActivityType.tennis
        case .trackAndField:                    return HKWorkoutActivityType.trackAndField
        case .traditionalStrengthTraining:      return HKWorkoutActivityType.traditionalStrengthTraining
        case .volleyball:                       return HKWorkoutActivityType.volleyball
        case .walking:                          return HKWorkoutActivityType.walking
        case .waterFitness:                     return HKWorkoutActivityType.waterFitness
        case .waterPolo:                        return HKWorkoutActivityType.waterPolo
        case .waterSports:                      return HKWorkoutActivityType.waterSports
        case .wrestling:                        return HKWorkoutActivityType.wrestling
        case .yoga:                             return HKWorkoutActivityType.yoga
        case .barre:                            return HKWorkoutActivityType.barre
        case .coreTraining:                     return HKWorkoutActivityType.coreTraining
        case .crossCountrySkiing:               return HKWorkoutActivityType.crossCountrySkiing
        case .downhillSkiing:                   return HKWorkoutActivityType.downhillSkiing
        case .flexibility:                      return HKWorkoutActivityType.flexibility
        case .highIntensityIntervalTraining:    return HKWorkoutActivityType.highIntensityIntervalTraining
        case .jumpRope:                         return HKWorkoutActivityType.jumpRope
        case .kickboxing:                       return HKWorkoutActivityType.kickboxing
        case .pilates:                          return HKWorkoutActivityType.pilates
        case .snowboarding:                     return HKWorkoutActivityType.snowboarding
        case .stairs:                           return HKWorkoutActivityType.stairs
        case .stepTraining:                     return HKWorkoutActivityType.stepTraining
        case .wheelchairWalkPace:               return HKWorkoutActivityType.wheelchairWalkPace
        case .wheelchairRunPace:                return HKWorkoutActivityType.wheelchairRunPace
        case .taiChi:                           return HKWorkoutActivityType.taiChi
        case .mixedCardio:                      return HKWorkoutActivityType.mixedCardio
        case .handCycling:                      return HKWorkoutActivityType.handCycling
        case .discSports:                       return HKWorkoutActivityType.discSports
        case .fitnessGaming:                    return HKWorkoutActivityType.fitnessGaming
        case .other:                            return HKWorkoutActivityType.other
        }
    }
    
    /// Creates a `WorkoutActivityType` from a given `HKWorkoutActivityType`.
    ///
    /// - Parameter hkType: The HealthKit workout type to convert from.
    /// - Returns: The corresponding `WorkoutActivityType`, or `.other` for unknown future cases.
    static func from(hkType: HKWorkoutActivityType) -> WorkoutActivityType {
        switch hkType {
        case .americanFootball:                 return .americanFootball
        case .archery:                          return .archery
        case .australianFootball:               return .australianFootball
        case .badminton:                        return .badminton
        case .baseball:                         return .baseball
        case .basketball:                       return .basketball
        case .bowling:                          return .bowling
        case .boxing:                           return .boxing
        case .climbing:                         return .climbing
        case .crossTraining:                    return .crossTraining
        case .curling:                          return .curling
        case .cycling:                          return .cycling
        case .elliptical:                       return .elliptical
        case .equestrianSports:                 return .equestrianSports
        case .fencing:                          return .fencing
        case .fishing:                          return .fishing
        case .functionalStrengthTraining:       return .functionalStrengthTraining
        case .golf:                             return .golf
        case .gymnastics:                       return .gymnastics
        case .handball:                         return .handball
        case .hiking:                           return .hiking
        case .hockey:                           return .hockey
        case .hunting:                          return .hunting
        case .lacrosse:                         return .lacrosse
        case .martialArts:                      return .martialArts
        case .mindAndBody:                      return .mindAndBody
        case .paddleSports:                     return .paddleSports
        case .play:                             return .play
        case .preparationAndRecovery:           return .preparationAndRecovery
        case .racquetball:                      return .racquetball
        case .rowing:                           return .rowing
        case .rugby:                            return .rugby
        case .running:                          return .running
        case .sailing:                          return .sailing
        case .skatingSports:                    return .skatingSports
        case .snowSports:                       return .snowSports
        case .soccer:                           return .soccer
        case .softball:                         return .softball
        case .squash:                           return .squash
        case .stairClimbing:                    return .stairClimbing
        case .surfingSports:                    return .surfingSports
        case .swimming:                         return .swimming
        case .tableTennis:                      return .tableTennis
        case .tennis:                           return .tennis
        case .trackAndField:                    return .trackAndField
        case .traditionalStrengthTraining:      return .traditionalStrengthTraining
        case .volleyball:                       return .volleyball
        case .walking:                          return .walking
        case .waterFitness:                     return .waterFitness
        case .waterPolo:                        return .waterPolo
        case .waterSports:                      return .waterSports
        case .wrestling:                        return .wrestling
        case .yoga:                             return .yoga
        case .barre:                            return .barre
        case .coreTraining:                     return .coreTraining
        case .crossCountrySkiing:               return .crossCountrySkiing
        case .downhillSkiing:                   return .downhillSkiing
        case .flexibility:                      return .flexibility
        case .highIntensityIntervalTraining:    return .highIntensityIntervalTraining
        case .jumpRope:                         return .jumpRope
        case .kickboxing:                       return .kickboxing
        case .pilates:                          return .pilates
        case .snowboarding:                     return .snowboarding
        case .stairs:                           return .stairs
        case .stepTraining:                     return .stepTraining
        case .wheelchairWalkPace:               return .wheelchairWalkPace
        case .wheelchairRunPace:                return .wheelchairRunPace
        case .taiChi:                           return .taiChi
        case .mixedCardio:                      return .mixedCardio
        case .handCycling:                      return .handCycling
        case .discSports:                       return .discSports
        case .fitnessGaming:                    return .fitnessGaming
        // Future-proofing: default to `.other` if HealthKit adds new cases.
        @unknown default:                       return .other
        }
    }
}

