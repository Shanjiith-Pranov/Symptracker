//
//  HospitalsViewController.swift
//  Symptracker
//
//  Created by Shanjiith Pranov on 1/9/20.
//  Copyright © 2020 sst. All rights reserved.
//

import UIKit
import MapKit
import SafariServices

class HospitalsViewController: UIViewController, MKMapViewDelegate {
    let hospitalData = [
        HospitalData(link: "https://www.ah.com.sg/Pages/Home.aspx",
                     contacts: "For general enquiries or change of appointments, please contact us at 6472 2000, or email AH_Enquiries@nuhs.edu.sg. For feedback and compliments, please call 6694 0070, or email AH_Feedback@nuhs.edu.sg.",
                     image: " "),
        HospitalData(link: "https://www.cgh.com.sg/pages/home.aspx",
                     contacts: "Mainline (24 hrs) - General Enquiries (6788 8833) Appointment Centre Mon to Fri : 8:30am – 8:00pm, Sat and Sun: 8:30am – 12:30pm, Closed on Public holidays (6850 3333)",
                     image: ""),
        HospitalData(link: "https://www.sgh.com.sg/",
                     contacts: "General Enquiries (24hrs) Tel: +65 6222 3322 ",
                     image: ""),
        HospitalData(link: "https://www.parkwayeast.com.sg/ ",
                     contacts: "A&E 24-hour Walk-in Clinic +65 6340 8666, Phone Appointment & General  Enquiry +65 6377 3737,  WhatsApp Appointment +65 8111 3777",
                     image: ""),
        HospitalData(link: "https://www.gleneagles.com.sg/",
                     contacts: "Phone Appointment +65 6575 7575, WhatsApp Appointment +65 8111 9777",
                     image: ""),
        HospitalData(link: "https://mtalvernia.sg/",
                     contacts: "24-HOUR HOTLINE:+65 6347 6688",
                     image: ""),
        HospitalData(link: "https://www.nuh.com.sg/Pages/Home.aspx",
                     contacts: "Main Line (24-hr) +65 6779 5555, Appointment Line (Central), +65 6772 2002 appointment@nuhs.edu.sg, Emergency (24-hr) +65 6772 5000",
                     image: ""),
        HospitalData(link: "https://www.rafflesmedicalgroup.com/hospital",
                     contacts: "24-hour Hotline / Appt (+65 6311 1111 /+65 6311 1222)",
                     image: ""),
        HospitalData(link: "https://www.ttsh.com.sg/Pages/default.aspx",
                     contacts: "General Enquiries Tel: 6256 6011 (24 hours helpline) Email: contact@ttsh.com.sg Emergency Department Tel: 6357 8754",
                     image: ""),
        HospitalData(link: "https://www.amkh.org.sg/index",
                     contacts: " To book an appointment at our Dialysis Centre, please email to dialysis_referrals@amkh.org.sg or call 6507 9498.To book an appointment at our Day Rehabilitation Centre, Please email to day_rehab@amkh.org.sg or call 6450 6150",
                     image: ""),
        HospitalData(link: "https://www.singhealth.com.sg/SCH/our-hospitals/bright-vision-hospital/about-bvh",
                     contacts: "    Tel: 6248 5755, Fax: 6881 3872, For feedback on BVH, email to: feedback@bvh.org.sg For careers at BVH, email to: hr@bvh.org.sg",
                     image: ""),
        HospitalData(link: "http://www.kwsh.org.sg/",
                     contacts: "To find out more, please visit kwsh.org.sg and fb.com/KwongWaiShiuHospital.",
                     image: ""),
        HospitalData(link: "https://www.renci.org.sg/",
                     contacts: "General Enquiries, Main: 6385 0288: Email : renci@renci.org.sg",
                     image: ""),
        HospitalData(link: "https://www.sach.org.sg/",
                     contacts: "Career enquiries: 6586 1000, applyto@sach.org.sg All other Enquiries:6586 1000 general@sach.org.sg",
                     image: ""),
        HospitalData(link: "https://www.slh.org.sg/",
                     contacts: "Tel: 6563 2281 Email: general@stluke.org.sg",
                     image: ""),
        HospitalData(link: "https://pachealthholdings.com/adam-road-medical-centre-armc/",
                     contacts: "+65 9423 0918, (WHATSAPP APPOINTMENT) +65 6883 6955(GENERAL ENQUIRY)",
                     image: ""),
        HospitalData(link: "https://www.imh.com.sg/",
                     contacts: "Main Line / General Enquiries Tel: 6389 2000",
                     image: ""),
        HospitalData(link: "https://www.hopkinsmedicine.org/singapore/",
                     contacts: "    Oncology Appointments +65 6357 8000 International Patients ,+65  6357 1590 Medical Records Info  +65 6357 8448",
                     image: ""),
        HospitalData(link: "https://www.kkh.com.sg/ ",
                     contacts: "    General Enquiries (24-hrs): +65 6-CALL KKH, (+65 6-2255 554)",
                     image: ""),
        HospitalData(link: "https://www.mountelizabeth.com.sg/",
                     contacts: "    Phone Appointment Orchard +65 6250 0000 Novena +65 6898 6898 WhatsApp Appointment:  Orchard  +65 8111 7777 Novena  +65 8111 5777",
                     image: ""),
        HospitalData(link: "https://www.nccs.com.sg/",
                     contacts: "Appointment Scheduling +65 6436 8088 callcentre@nccs.com.sg",
                     image: ""),
        HospitalData(link: "https://www.ndcs.com.sg/",
                     contacts: "Appointments and enquiriesTel: +65 6324 8802, Hours: Monday to Friday 8.00am to 5.30pm, Email: appointment@ndcs.com.sg",
                     image: ""),
        HospitalData(link: "https://www.nhcs.com.sg/",
                     contacts: "General Enquiries, Tel: (65) 6704 8000, Fax: (65) 6844 9030, Email: nhcs@nhcs.com.sg, Monday to Friday: 8am - 5pm, Saturday: 8am - 12pm",
                     image: ""),
        HospitalData(link: "https://www.nni.com.sg",
                     contacts: "Enquiries, Tel:, (65) 6357 7022 (Outpatient), (65) 6357 7041 / (65) 6357 7042 (Inpatient), General Enquiries:, Email: enquiry@nni.com.sg ",
                     image: ""),
        HospitalData(link: "https://www.nsc.com.sg/Pages/index.aspx",
                     contacts: "    Enquiries on Medication :, Email Pharmacy, Tel : (65) 6350 8454, Appointment Centre :, Tel : (65) 6350 6666",
                     image: ""),
        HospitalData(link: "https://www.snec.com.sg/",
                     contacts: "General Enquiries: +65 6227 7255",
                     image: ""),
        HospitalData(link: "https://www.thomsonmedical.com/",
                     contacts: "Phone : 6250 2222",
                     image: ""),
        HospitalData(link: "https://www.nhgp.com.sg/Our_Clinics/Ang_Mo_Kio_Polyclinic/",
                     contacts: "   For general enquiries and polyclinic appointments, 6355 3000",
                     image: ""),
        HospitalData(link: "https://polyclinic.singhealth.com.sg/patient-care/shp-bedok",
                     contacts: "General Enquiries & Appointments, Call Centre 6643 6969",
                     image: ""),
        HospitalData(link: "https://www.nup.com.sg/Pages/Our%20Clinics/our-clinics-bbp.aspx",
                     contacts: "General Enquiries:(+65) 6663 6847",
                     image: ""),
        HospitalData(link: "https://polyclinic.singhealth.com.sg/patient-care/shp-bukit-merah",
                     contacts: "General Enquiries & Appointments, Call Centre 6643 6969",
                     image: ""),
        HospitalData(link: "https://www.nup.com.sg/Pages/Our%20Clinics/our-clinics-cckp.aspx",
                     contacts: "General Enquiries: (+65) 6663 6847",
                     image: ""),
        HospitalData(link: "https://www.nup.com.sg/Pages/Our%20Clinics/our-clinics-clemp.aspx",
                     contacts: "General Enquiries: (+65) 6663 6847",
                     image: ""),
        HospitalData(link: "https://www.nhgp.com.sg/Our_Clinics/Geylang_Polyclinic/",
                     contacts: "For general enquiries and polyclinic appointments, 6355 3000",
                     image: ""),
        HospitalData(link: "https://www.nhgp.com.sg/Our_Clinics/Hougang_Polyclinic/",
                     contacts: "For general enquiries and polyclinic appointments, 6355 3000",
                     image: ""),
        HospitalData(link: "https://www.nup.com.sg/Pages/Our%20Clinics/our-clinics-jurp.aspx",
                     contacts: "General Enquiries: (+65) 6663 6847",
                     image: ""),
        HospitalData(link: "https://polyclinic.singhealth.com.sg/patient-care/shp-marineparade",
                     contacts: "General Enquiries & Appointments, Call Centre 6643 6969",
                     image: ""),
        HospitalData(link: "https://polyclinic.singhealth.com.sg/patient-care/shp-outram ",
                     contacts: "General Enquiries & Appointments, Call Centre 6643 6969",
                     image: ""),
        HospitalData(link: "https://www.nup.com.sg/Pages/Our%20Clinics/our-clinics-pioneerp.aspx",
                     contacts: "General Enquiries: (+65) 6663 6847",
                     image: ""),
        HospitalData(link: "https://polyclinic.singhealth.com.sg/patient-care/shp-pasir-ris",
                     contacts: "General Enquiries & Appointments, Call Centre 6643 6969",
                     image: ""),
        HospitalData(link: "https://www.nup.com.sg/Pages/Our%20Clinics/our-clinics-queenstownp.aspx",
                     contacts: "General Enquiries: (+65) 6663 6847",
                     image: ""),
        HospitalData(link: "https://polyclinic.singhealth.com.sg/patient-care/shp-sengkang",
                     contacts: "General Enquiries & Appointments, Call Centre 6643 6969",
                     image: ""),
        HospitalData(link: "https://polyclinic.singhealth.com.sg/patient-care/shp-tampines",
                     contacts: "General Enquiries & Appointments, Call Centre 6643 6969",
                     image: ""),
        HospitalData(link: "https://www.nhgp.com.sg/Our_Clinics/Toa_Payoh_Polyclinic/",
                     contacts: "For general enquiries and polyclinic appointments, 6355 3000",
                     image: ""),
        HospitalData(link: "https://www.nhgp.com.sg/Our_Clinics/Woodlands_Polyclinic/",
                     contacts: "For general enquiries and polyclinic appointments, 6355 3000",
                     image: ""),
        HospitalData(link: "https://www.nhgp.com.sg/Our_Clinics/Yishun_Polyclinic/",
                     contacts: "For general enquiries and polyclinic appointments, 6355 3000",
                     image: "")
    ]
    
    
    let hospitalAnnotations = HospitalAnnotations()
    var selectedAnnotation: MKAnnotation?
    let locationManager = CLLocationManager()
    let initialCoordinate = CLLocationCoordinate2DMake(1.290270,103.851959)
    var regionInMeters:Double = 10000
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var detailsView: UIView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var goToWebsiteButton: UIButton!
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
        detailsView.isHidden = true
        goToWebsiteButton.layer.cornerRadius = 25
        
        
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
        selectedAnnotation = view.annotation
        text.text = hospitalData[(Int(((selectedAnnotation?.subtitle)!)!)!)-1].contacts
        
        detailsView.isHidden = false
        
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        detailsView.isHidden = true
        
    }
    
    
    @IBAction func goToWebsiteButtonPressed(_ sender: Any) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(0), execute: {
            self.view.backgroundColor = UIColor.white
            let safariViewController = SFSafariViewController(url: URL(string:self.hospitalData[(Int(((self.selectedAnnotation?.subtitle)!)!)!)-1].link)!)
            safariViewController.dismissButtonStyle = .close
            
            self.present(safariViewController, animated: true, completion: nil)
        })
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

