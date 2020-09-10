//
//  HospitalLocations.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 9/9/20.
//  Copyright © 2020 sst. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class HospitalAnnotation:NSObject,MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    init(_ latitude:CLLocationDegrees,_ longitude:CLLocationDegrees,title:String,subtitle:String){
        self.coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        self.title = title
        self.subtitle = subtitle
    }
}

class HospitalAnnotations: NSObject {
    var hospitals:[HospitalAnnotation]
    
    override init(){
       //build an array of pizza loactions literally
        hospitals =  [HospitalAnnotation(1.288397,103.803899, title:  "POSB - Alexandra Hospital", subtitle: "1")]
        hospitals += [HospitalAnnotation(1.340269,103.949543, title:  "CHANGI GENERAL HOSPITAL",  subtitle: "2")]
        hospitals += [HospitalAnnotation(1.279499,103.834961, title:  "Singapore General Hospital",  subtitle: "3")]
        hospitals += [HospitalAnnotation(1.309152,103.902743, title:  "East Shore Hospital",  subtitle: "4")]
        hospitals += [HospitalAnnotation(1.307054,103.820067, title:  "Gleneagles Hospital",  subtitle: "5")]
        hospitals += [HospitalAnnotation(1.341935,103.837522, title:  "Mount Alvernia Hospital and Medicare Centre",  subtitle: "6")]
        hospitals += [HospitalAnnotation(1.293141,103.782478, title:  "National University Hospital",  subtitle: "7")]
        hospitals += [HospitalAnnotation(1.30114,103.857234, title:   "Raffles Hospital",  subtitle: "8")]
        hospitals += [HospitalAnnotation(1.322598,103.846228, title:  "TAN TOCK SENG HOSPITAL",  subtitle: "9")]
        hospitals += [HospitalAnnotation(1.383983,103.840367, title:  "Ang Mo Kio - Thye Hua Kwan Hospital Ltd.",  subtitle: "10")]
        hospitals += [HospitalAnnotation(1.371697,103.877884, title:  "Bright Vision Hospital",  subtitle: "11")]
        hospitals += [HospitalAnnotation( 1.316969,103.858797, title: "Kwong Wai Shiu Hospital and Nursing Home",  subtitle: "12")]
        hospitals += [HospitalAnnotation( 1.321966,103.846824, title: "Ren Ci Hospital & Medicare Centre",  subtitle: "13")]
        hospitals += [HospitalAnnotation( 1.341626,103.948742, title: "St Andrew's Community Hospital",  subtitle: "14")]
        hospitals += [HospitalAnnotation(1.349374,103.74197, title:   "Saint Luke's Hospital",  subtitle: "15")]
        hospitals += [HospitalAnnotation( 1.326575,103.813276, title: "Adam Road Hospital",  subtitle: "16")]
        hospitals += [HospitalAnnotation( 1.38253,103.884833, title:  "Institute of Mental Health",  subtitle: "17")]
        hospitals += [HospitalAnnotation( 1.320284,103.847039, title: "Johns Hopkins Singapore International Medical Centre Pte. Ltd",  subtitle: "18")]
        hospitals += [HospitalAnnotation(1.310715,103.84724, title:   "Kk Women's And Children's Hospital",  subtitle: "19")]
        hospitals += [HospitalAnnotation( 1.305405,103.835484, title: "Mount Elizabeth Hospital Ltd",  subtitle: "20")]
        hospitals += [HospitalAnnotation( 1.278389,103.836297, title: "National Cancer Centre Singapore",  subtitle: "21")]
        hospitals += [HospitalAnnotation( 1.279303,103.838271, title: "National Dental Centre",  subtitle: "22")]
        hospitals += [HospitalAnnotation( 1.280829,103.836051, title: "National Heart Centre",  subtitle: "23")]
        hospitals += [HospitalAnnotation( 1.320284,103.847039, title: "National Neuroscience Institute",  subtitle: "24")]
        hospitals += [HospitalAnnotation(1.319802,103.84905, title:   "National Skin Centre",  subtitle: "25")]
        hospitals += [HospitalAnnotation( 1.280829,103.836051, title: "Singapore National Eye Centre",  subtitle: "26")]
        hospitals += [HospitalAnnotation( 1.325409,103.841489, title: "Thomson Medical Centre",  subtitle: "27")]
        hospitals += [HospitalAnnotation( 1.371557,103.846767, title: "Ang Mo Kio Polyclinic",  subtitle: "28")]
        hospitals += [HospitalAnnotation( 1.326004,103.932139, title: "Bedok Polyclinic",  subtitle: "29")]
        hospitals += [HospitalAnnotation( 1.351377,103.746792, title: "Bukit Batok Polyclinic",  subtitle: "30")]
        hospitals += [HospitalAnnotation( 1.283227,103.817943, title: "Bukit Merah Polyclinic",  subtitle: "31")]
        hospitals += [HospitalAnnotation( 1.381957,103.752654, title: "Choa Chu Kang Polyclinic",  subtitle: "32")]
        hospitals += [HospitalAnnotation( 1.312648,103.765709, title: "Clementi Polyclinic",  subtitle: "33")]
        hospitals += [HospitalAnnotation( 1.319594,103.887229, title: "Geylang Polyclinic",  subtitle: "34")]
        hospitals += [HospitalAnnotation( 1.37,103.889427, title:     "Hougang Polyclinic",  subtitle: "35")]
        hospitals += [HospitalAnnotation( 1.350429,103.731109, title: "Jurong Polyclinic",  subtitle: "36")]
        hospitals += [HospitalAnnotation( 1.30299,103.907778, title:  "Marine Parade Polyclinic",  subtitle: "37")]
        hospitals += [HospitalAnnotation( 1.279626,103.838161, title: "Outram Polyclinic",  subtitle: "38")]
        hospitals += [HospitalAnnotation( 1.368403,103.959358, title: "Polyclinic Pasir Ris",  subtitle: "39")]
        hospitals += [HospitalAnnotation( 1.299224,103.804956, title: "Queenstown Polyclinic",  subtitle: "40")]
        hospitals += [HospitalAnnotation( 1.392315,103.894557, title: "Sengkang Polyclinic",  subtitle: "41")]
        hospitals += [HospitalAnnotation( 1.358566,103.946683, title: "Tampines Polyclinic",  subtitle: "42")]
        hospitals += [HospitalAnnotation( 1.335399,103.858988, title: "Toa Payoh Polyclinic",  subtitle: "43")]
        hospitals += [HospitalAnnotation( 1.430528,103.775022, title: "Woodlands Polyclinic",  subtitle: "44")]
        hospitals += [HospitalAnnotation( 1.426649,103.8379, title:   "Yishun Polyclinic",  subtitle: "45")]
    }
}

struct HospitalData {
    var link: String
    var contacts: String
    var image: String
}
