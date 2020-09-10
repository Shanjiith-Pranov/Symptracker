//
//  HospitalsViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 1/9/20.
//  Copyright © 2020 sst. All rights reserved.
//

import UIKit
import MapKit

class HospitalsViewController: UIViewController, MKMapViewDelegate {
    
    let hospitalData = [
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
        HospitalData(link: "hello", contacts: "", image: ""),
    ]
    
    let hospitalAnnotations = HospitalAnnotations()
    var selectedAnnotation: MKPointAnnotation?
         let locationManager = CLLocationManager()
    let initialCoordinate = CLLocationCoordinate2DMake(1.290270,103.851959)
        var regionInMeters:Double = 10000
    @IBOutlet weak var mapView: MKMapView!

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        var annotationView = MKMarkerAnnotationView()
        guard let annotation = annotation as? HospitalAnnotation else {return nil}
        var identifier = ""
        var color = UIColor.red

        if let dequedView = mapView.dequeueReusableAnnotationView(
            withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            annotationView = dequedView
        } else{
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        }
        annotationView.markerTintColor = color
        return annotationView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        mapView.delegate = self
        //set intial region
        let initialregion = MKCoordinateRegion(center: initialCoordinate, span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25))
        mapView.setRegion(initialregion, animated: true)
        // add the annotations
        mapView.addAnnotations(hospitalAnnotations.hospitals)
        checkLocationServices()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView) {
//        self.selectedAnnotation = view.annotation as? MKPointAnnotation
//        info()
//    }
//
//    func info(sender: Any) {
//        print(selectedAnnotation?.coordinate)
//    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        var selectedAnnotation = view.annotation
        var link = hospitalData[(Int(((selectedAnnotation?.subtitle)!)!)!)-1].link
        print(link)

    }
    
       func setupLocationManager() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
        }
        
        func centerViewOnUserLOcation() {
            if let location = locationManager.location?.coordinate {
                let region = MKCoordinateRegion.init(center: location, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
                mapView.setRegion(region, animated: true)
            }
        }
        
        func checkLocationServices() {
            if CLLocationManager.locationServicesEnabled() {
                setupLocationManager()
                CheckLocationAuthorisation()
            }else {
                
            }
        }
        
        func CheckLocationAuthorisation() {
            switch CLLocationManager.authorizationStatus() {
            case .authorizedWhenInUse:
                mapView.showsUserLocation = true
                centerViewOnUserLOcation()
                break
            case .denied:
                let alert = UIAlertController(title: "Location Service disabled for Symptracker", message: "We require Location Service to serve you better. You can turn it on in the settings", preferredStyle: .alert)
                // add the button yes
                alert.addAction(UIAlertAction(title: NSLocalizedString("Continue", comment: "Default action"), style: .default, handler: { _ in
                    self.present(alert, animated: true, completion: nil)
                }))

                break
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
            case .restricted:
                let alert = UIAlertController(title: "Location Service disabled for Symptracker", message: "We require Location Service to serve you better. You can turn it on in the settings", preferredStyle: .alert)
                // add the button yes
                alert.addAction(UIAlertAction(title: NSLocalizedString("Continue", comment: "Default action"), style: .default, handler: { _ in
                    self.present(alert, animated: true, completion: nil)
                }))
                break
            case .authorizedAlways:
                break
            }
        }
        
    

}

extension HospitalsViewController: CLLocationManagerDelegate {
       
       func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        let center = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region = MKCoordinateRegion.init(center: center, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
        mapView.setRegion(region, animated: true)
       }
       
       func locationManager(_ manager: CLLocationManager, didChangeAuthorisation status: CLAuthorizationStatus) {
           CheckLocationAuthorisation()
       }
   }

