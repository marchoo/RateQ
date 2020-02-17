//
//  zoneChart+AdditionalCharges.swift
//  ROK Transport Rate
//
//  Created by Mingu Chu on 1/2/20.
//  Copyright © 2020 chingoo. All rights reserved.
//

import UIKit

enum Zone {
    case A
    case B
    case C
    case D
    case E
}

enum Freight {
    case Air
    case Ocean
}

enum MoveType: String {
    case Import, Export, CoLoad
    case Transfer
}


let zoneChart : Dictionary = [
    "ADDISON": "A",                 "HALF DAY": "C",            "PARK CITY": "D",
    "ALSIP": "C",                   "HAMPSHIRE": "E",           "PARK FOREST": "E",
    "ANTIOCH": "E",                 "HARVARD": "E",             "PINGREE GROVE": "E",
    "ARGONNE": "C",                 "HARVEY": "D",              "PLAINFIELD": "D",
    "ARLINGTON HEIGHT": "A",        "HARWOOD HEIGHTS": "A",     "Prospect Heights": "A",
    "AURORA": "D",                  "HAZEL CREST": "E",         "Richton Park": "E",
    "BANNOCKBURN": "C",             "HICKORY HILLS": "C",       "Riley": "E",
    "BARRINGTON": "B",              "HIGHLAND PARK": "B",       "Ringwood": "E",
    "BARRINGTON HILLS": "B",        "HIGHWOOD": "B",            "River Forest": "A",
    "BARTLETT": "B",                "HINES": "A",               "River Grove": "A",
    "BATAVIA": "D",                 "HINSDALE": "B",            "Riverdale": "E",
    "BEDFORD PARK": "C",            "HODGKINS": "B",            "Riverwood": "B",
    "BELLWOOD": "A",                "HOFFMAN ESTATES": "B",     "Robbins": "D",
    "BELVIDERE": "E",               "HOMEWOOD": "D",            "Rockdale": "E",
    "HUNTLY": "D",                  "Rockford": "E",
    "BENSENVILLE": "A",             "INDIAN HEAD PARK": "B",    "Rolling Meadows": "A",
    "BERKELEY": "A",                "INVERNESS": "B",           "Romeoville": "C",
    "BERWYN": "B",                  "ITASCA": "A",              "Roscoe": "E",
    "BLOOMINGDALE": "B",            "JOLIET": "D",              "Roselle": "A",
    "BLUE ISLAND": "E",             "JUSTICE": "B",             "Rosemont": "A",
    "BOLINGBROOK": "C",             "KENILWORTH": "C",          "Round Lake": "E",
    "BRIDGEVIEW": "C",              "LA FOX": "E",              "Schaumburg": "A",
    "BROADVIEW": "A",               "LA GRANGE": "B",           "Schiller Park": "A",
    "BROOKFIELD": "B",              "LAKE BARRINGTON": "B",     "Shorewood": "D",
    "BUFFALO GROVE": "B",           "LAKE BLUFF": "C",          "Skokie": "B",
    "BURBANK": "C",                 "LAKE FOREST": "C",         "Sleepy Hollow": "E",
    "BURLINGTON": "E",              "LAKE IN THE HILL": "C",    "South Barrington": "B",
    "BURR RIDGE": "C",              "LAKE VILLA": "E",          "South Elgin": "C",
    "CALUMET CITY": "E",            "LAKE ZURICH": "C",         "South Holland": "D",
    "CALUMET PARK": "E",            "LANSING": "D",             "SPRING GROVE": "E",
    "CAROL STREAM": "B",            "LEMONT": "C",              "ST.CHARLES": "C",
    "CARPENTERSVILLE": "C",         "LIBERTYVILLE": "C",        "Steger": "E",
    "CARY": "D",                    "LILY LAKE": "E",           "Stickney": "B",
    "CHICAGO, UP TO 10MILE": "A",   "LINCOLNSHIRE": "C",        "Stone Park": "A",
    "CHICAGO, 10-15MILES": "B",     "LINCOLNWOOD": "C",         "Streamwood": "B",
    "CHICAGO, 15-25MILES": "C",     "LISLE": "B",               "Sugar Grove": "E",
    "CHICAGO, 25-40MILES": "D",     "LOCKPORT": "D",            "Summit": "B",
    "CHICAGO HEIGHTS": "E",         "LOMBARD": "B",
    "CHICAGO RIDGE": "D",           "LONG GROVE": "C",          "TNLEY PARK": "D",
    "CICERO": "B",                  "LYON": "B",                "UNIVERSITY PARK": "E",
    "CLARENDON HILLS": "B",         "Maywood": "A",             "VERNON HILLS": "C",
    "COUNTRYSIDE": "B",             "McCook": "B",              "VILLA PARK": "A",
    "CREST HILL": "E",              "McGaw Park": "E",          "WARRENVILLE": "C",
    "CRESTWOOD": "C",               "McHenry": "D",             "Wasco": "D",
    "CRETE": "E",                   "Melrose Park": "A",        "Wauconda": "D",
    "CRYSTAL LAKE": "D",            "Midlothian": "E",          "Waukegan": "D",
    "DARIEN": "C",                  "Mokena": "E",              "West Chester": "D",
    "DEER PARK": "C",               "Monee": "E",               "West Chicago": "C",
    "DEERFIELD": "B",               "Montgomery": "D",          "West Dundee": "C",
    "DES PLAINES": "A",             "Morris": "E",              "Western Springs": "B",
    "DOLTON": "D",                  "Morton Grove": "B",        "Westmont": "B",
    "DOWNERS GROVE": "B",           "Mt. Prospect": "A",        "Wheaton": "B",
    "EAST DUNDEE": "C",             "Mundelein": "C",           "Wheeling": "B",
    "ELGIN": "C",                   "Naperville": "C",          "Willow Springs": "C",
    "ELK GROVE VILLAGE": "A",       "New Lenox": "D",           "Willowbrook": "B",
    "ELMHURST": "A",                "Niles": "A",               "Wilmette": "C",
    "ELMWOOD PARK": "A",            "Norridge": "A",            "Wilmington": "E",
    "EVANSTON": "C",                "North Aurora": "D",        "Winfield": "B",
    "EVERGREEN PARK": "C",          "North Chicago": "C",       "Winnetka": "B",
    "FLOSSMOOR": "E",               "North Riverside": "A",     "Wood Dale": "A",
    "FOREST PARK": "B",             "Northbrook": "B",          "Woodridge": "C",
    "FOREST VIEW": "B",             "Northfield": "B",          "Woodstock": "E",
    "FOX RIVE GROVE": "C",          "Northlake": "A",           "Worth": "C",
    "FRANKFORT": "E",               "OAK BROOK": "B",           "Yorkville": "E",
    "FRANKLIN PARK": "A",           "OAK BROOK TERRACE": "B",   "Zion": "E",
    "GENEVA": "C",                  "OAK FOREST": "C",
    "GENOA": "C",                   "OAK LAWN": "C",
    "GILBERT": "D",                 "OAK PARK": "B",
    "GLEN ELLYN": "B",              "Olympia Fields": "E",
    "GLENDALE HEIGHTS": "B",        "Orland Park": "D",
    "GLENVIEW": "B",                "Oswego": "E",
    "GLENWOOD": "C",                "Palatine": "B",
    "GOLF": "B",                    "Palos Heights": "C",
    "GRAYSLAKE": "C",               "Palos Park": "C",
    "GURNEE": "D"
]


let additionalCharges : Dictionary = ["26' Straight Truck Show place Delivery": 400,
                                      "53' Semi Trailer Show Place Delivery": 600,
                                      "AM/PM Special": 45,
                                      "DG Newtrans": 15,
                                      "DG/Haz Mat | Zone A,B": 25,
                                      "DG/Haz Mat | Zone C D": 50,
                                      "Downtown Delivery": 25,
                                      "Empty Pallet": 10,
                                      "Hand Jack": 25,
                                      "Liftgate 1~5": 45,
                                      "Liftgate 6~10": 90,
                                      "Liftgate 11~12": 125,
                                      "Pallet Jack": 25,
                                      "Prepull": 45,
                                      "Residential Delivery": 25,
                                      "Same Day Delivery": 45,
                                      "Toll Zone B": 5,
                                      "Toll Zone C": 15,
                                      "Toll Zone D": 25,
                                      "Toll Zone E": 35,
                                      "Weekend Special | Straight Truck": 50,
                                      "Weekend Special | Semi Truck": 100,
                                      
                                    
                                      "In/Out Charge": 1/2,
                                      "Inside Delivery | per 100Lbs": 25/45,
                                      "Volume Charge Per Pallet": 15,
                                      "Wait time": 1,
                                      
                                      
                                      "COD | Collect On Delivery": 0,
                                      "Exclusive Service": 0, "Break Down": 0,
                                      "Detention Charge": 0, "Freight Charge": 0,
                                      "FSC | Fuel Charge": 0, "Legal Fee": 0,
                                      "Miscellaneous": 0, "On Hand": 0,
                                      "Palletizing": 0, "Penseke | Truck Rental": 0,
                                      "Stop Over Charge": 0, "Storage Charge": 0,
                                      "Tax": 10, "THC + Processing Fee": 0,
                                      "Truck Repair": 0,
                                      
    
                                      
                                      
                                      
]
