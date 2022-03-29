//
//  Model.swift
//  UnitedMusicApp
//
//  Created by Aleksandr Rybachev on 27.03.2022.
//

import Foundation

// Catalog
struct Catalog {
    let category: String
    let instrument: [Instrument]
}

struct Instrument {
    let name: String
    let cost: Int
    let description: String
    let image: String
}

extension Catalog {
    static func getCatalog() -> [Catalog] {
        var catalog: [Catalog] = []
        let iterations = DataManager.shared.categories.count - 1
        
        for index in 0...iterations {
            
            switch index {
            case 0:
                let item = Catalog(
                    category: DataManager.shared.categories[index],
                    instrument: Instrument.getMicrophones()
                )
                catalog.append(item)
            case 1:
                let item = Catalog(
                    category: DataManager.shared.categories[index],
                    instrument: Instrument.getHeadphones()
                )
                catalog.append(item)
            case 2:
                let item = Catalog(
                    category: DataManager.shared.categories[index],
                    instrument: Instrument.getMixers()
                )
                catalog.append(item)
            case 3:
                let item = Catalog(
                    category: DataManager.shared.categories[index],
                    instrument: Instrument.gatRacks()
                )
                catalog.append(item)
            default:
                let item = Catalog(
                    category: DataManager.shared.categories[index],
                    instrument: [Instrument(
                        name: "",
                        cost: 0,
                        description: "",
                        image: "")]
                )
                catalog.append(item)
            }
        }
        
        return catalog
    }
}

extension Instrument {
    
    static func getMicrophones() -> [Instrument] {
        var instruments: [Instrument] = []
        let iterations = DataManager.shared.microphoneNames.count - 1
        
        for index in 0...iterations {
            let microphone = Instrument(
                name: DataManager.shared.microphoneNames[index],
                cost: DataManager.shared.microphoneCosts[index],
                description: DataManager.shared.microphoneDescriptions[index],
                image: DataManager.shared.microphoneImages[index]
            )
            
            instruments.append(microphone)
        }
        
        return instruments
    }
    
    static func getHeadphones() -> [Instrument] {
        var instruments: [Instrument] = []
        let iterations = DataManager.shared.headphoneNames.count - 1
        
        for index in 0...iterations {
            let headphone = Instrument(
                name: DataManager.shared.headphoneNames[index],
                cost: DataManager.shared.headphoneCosts[index],
                description: DataManager.shared.headphoneDescriptions[index],
                image: DataManager.shared.headphoneImages[index]
            )
            
            instruments.append(headphone)
        }
        
        return instruments
    }
    
    static func getMixers() -> [Instrument] {
        var instruments: [Instrument] = []
        let iterations = DataManager.shared.mixerNames.count - 1
        
        for index in 0...iterations {
            let mixer = Instrument(
                name: DataManager.shared.mixerNames[index],
                cost: DataManager.shared.mixerCosts[index],
                description: DataManager.shared.mixerDescriptions[index],
                image: DataManager.shared.mixerImage[index]
            )
            
            instruments.append(mixer)
        }
        
        return instruments
    }
    
    static func gatRacks() -> [Instrument] {
        var instruments: [Instrument] = []
        let iterations = DataManager.shared.rackNames.count - 1
        
        for index in 0...iterations {
            let rack = Instrument(
                name: DataManager.shared.rackNames[index],
                cost: DataManager.shared.rackCosts[index],
                description: DataManager.shared.rackDescriptions[index],
                image: DataManager.shared.rackImage[index]
            )
            
            instruments.append(rack)
        }
        return instruments
    }
}

// Contacts
struct Contact {
    let title: String
    let adress: String
}

extension Contact {
    static func getContact() -> Contact {
        Contact(
            title: DataManager.shared.contactsTitle,
            adress: DataManager.shared.contactAdress
        )
    }
}




