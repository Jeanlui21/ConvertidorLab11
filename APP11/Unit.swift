//
//  Unit.swift
//  APP11
//
//  Created by Jean Lui Ferrer on 7/05/19.
//  Copyright © 2019 Tecsup. All rights reserved.
//

import Foundation

enum Unit: Int {
    case pulgadas = 0, centimetros, pies, metros, millas
    
    func convertTo(unit to: Unit, value val: Double) -> Double? {
        return nil;
    }
    
    func convertirTo(unit to: Unit, value val: Double) -> Double {
        var constant = 1.0
        switch self {
        case .pulgadas:
            if to == .centimetros {
                constant = 2.54
            } else if to == .pies {
                constant = 0.08333333
            } else if to == .metros {
                constant = 0.0254
            } else if to == .millas {
                constant = 1.5783e-5
            }
            
        case .centimetros:
            if to == .pulgadas {
                constant = 0.0393701
            } else if to == .pies {
                constant = 0.0328084
            } else if to == .metros {
                constant = 0.01
            } else if to == .millas {
                constant = 6.2137e-6
            }
            
        case .pies:
            if to == .pulgadas {
                constant = 12;
            } else if to == .centimetros {
                constant = 30.48
            } else if to == .metros {
                constant = 0.3048
            } else if to == .millas {
                constant = 0.000189394
            }
            
        case .metros:
            if to == .pulgadas {
                constant = 39.3701
            } else if to == .centimetros {
                constant = 100
            } else if to == .pies {
                constant = 3.28084
            } else if to == .millas {
                constant = 0.000621371
            }
            
        case .millas:
            if to == .pulgadas {
                constant = 63360
            } else if to == .centimetros {
                constant = 160934
            } else if to == .pies {
                constant = 5280
            } else if to == .metros {
                constant = 1609.34
            }
        }
        
        return constant * val
    }
    
    static func deString(_ string: String) -> Unit? {
        if string == "pulgadas" {
            return .pulgadas
        } else if string == "centimetros" {
            return .centimetros
        } else if string == "pies" {
            return .pies
        } else if string == "metros" {
            return .metros
        } else if string == "millas" {
            return .millas
        } else {
            return nil
        }
    }
    
    
    func descripcion() -> String {
        switch self {
        case .pulgadas:
            return "pulgadas"
        case .centimetros:
            return "centimetros"
        case .pies:
            return "pies"
        case .metros:
            return "metros"
        case .millas:
            return "millas"
        }
    }
    
    
    static func todosCasos() -> [String] {
        var i = 0
        var list = [String]()
        while let unit = Unit(rawValue: i) {
            list.append(unit.descripcion())
            i = i + 1
        }
        return list
    }
}


