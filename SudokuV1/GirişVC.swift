//
//  GirişVC.swift
//  SudokuV1
//
//  Created by Mehmet Dora on 13.03.2024.
//

import UIKit
import CoreData
import Lottie

class Giris_VC: UIViewController {

    @IBOutlet weak var scoreLabelButtomConst: NSLayoutConstraint!
    @IBOutlet weak var newGBTopConst: NSLayoutConstraint!
    @IBOutlet weak var newGameButtonOutlet: UIButton!
    @IBOutlet weak var sudokuMDLabel: UILabel!
    @IBOutlet weak var resim: UIImageView!
    @IBOutlet weak var resimView: UIView!
    @IBOutlet weak var highestScoreLabel: UILabel!
    
    var context : NSManagedObjectContext?
    var boşCellSayısı = 0
    let animatonView = LottieAnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        resimView.backgroundColor = .black
        resim.image = UIImage(named: "sudoku")
        animatonView.alpha = 0
        setupAnimation()
        animateLaunchScreen()
        self.navigationItem.setHidesBackButton(true, animated: false)
        view.backgroundColor = .white
        setGradientBackground()
    }
    override func viewWillAppear(_ animated: Bool) {
        resim.isHidden = false
        resim.alpha = 1
        self.newGBTopConst.constant = 0
        self.scoreLabelButtomConst.constant = 0
        view.layoutIfNeeded()

        resim.transform = CGAffineTransform(scaleX: 1, y: 1)
        if resimView.isHidden {
            self.resimAnimation()
        }
    }
    func resimAnimation(){
        
        self.newGBTopConst.constant = -200
        self.scoreLabelButtomConst.constant = -200
            UIView.animate(withDuration: 3,delay: 0,options: [.curveEaseInOut], animations: {
                self.resim.transform = CGAffineTransform(rotationAngle: .pi)
                self.resim.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                self.view.layoutIfNeeded()
                

            }, completion: {_ in
                UIView.animate(withDuration: 2,delay: 0,options: [], animations: {
                    self.resim.alpha = 0

                },completion: {_ in
                    self.resim.isHidden = true
                })
            })
        }
    
    
    func setGradientBackground() {
        let colorFirst =  UIColor(red: 33.0/255.0, green: 146.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        let colorSecond = UIColor(red: 56.0/255.0, green: 229.0/255.0, blue: 77.0/255.0, alpha: 1.0).cgColor
        let colorLast = UIColor(red: 253.0/255.0, green: 255.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorFirst,colorSecond,colorLast]
        gradientLayer.locations = [0.0,0.5, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    
    
    func animateLaunchScreen(){
        
        UIView.animate(withDuration: 6, animations: {
            
            self.animatonView.alpha = 1
            
        }, completion: {_ in
            UIView.animate(withDuration: 2, animations: {
                self.animatonView.alpha = 0
            }, completion: {_ in
                UIView.animate(withDuration: 2, animations: {
                    self.resimView.backgroundColor = .clear
                },completion: {_ in
                    self.resimView.isHidden = true
                    self.resimAnimation()
                })
            })
        })
        
    }
    
    func setupAnimation(){
        animatonView.animation = LottieAnimation.named("brainStormAnimation")
        animatonView.frame = view.bounds
        animatonView.loopMode = .loop
        animatonView.contentMode = .scaleAspectFit
        animatonView.backgroundBehavior = .pauseAndRestore
        animatonView.play()
        animatonView.isUserInteractionEnabled = false
        resimView.addSubview(animatonView)
        
    }
    
    override func viewDidAppear(_ animated: Bool) { // sayfa her açıldığında kontrol et
        getScoreData()
    }
    
    func getScoreData(){
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Infos")
        
        do{
            let result = try context!.fetch(request)
                
            var scores : [Int] = []
            var highest = 0
            // Eğer veri kayıtlıysa karşılaştır değilse 0 dön
            for data in result{
                var scoreString = (data as AnyObject).value(forKey: "score") as! String
                scores.append(Int(scoreString)!)
            }
            
            for s in scores{
                print("\(s)***  kaydedilen skorlar")
                if s>highest{
                    highest = s
                }
            }
            highestScoreLabel.text = "Highest Score: \(highest)"
            
        }catch{
            print("Error while fetching data line 50")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGame"{
            let gameVC = segue.destination as! ViewController
            gameVC.boşCellSayısı = boşCellSayısı
        }
    }
    
    @IBAction func NewGameButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "SELECT GAME MODE", message: "", preferredStyle: .actionSheet)
        let easy = UIAlertAction(title: "Easy", style: .default){_ in
            self.boşCellSayısı = 45
            self.performSegue(withIdentifier: "toGame", sender: self)
        }
        let normal = UIAlertAction(title: "Normal", style: .default){_ in
            self.boşCellSayısı = 55
            self.performSegue(withIdentifier: "toGame", sender: self)
        }
        let hard = UIAlertAction(title: "Hard", style: .default){_ in
            self.boşCellSayısı = 65
            self.performSegue(withIdentifier: "toGame", sender: self)
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addAction(easy)
        alert.addAction(normal)
        alert.addAction(hard)
        alert.addAction( cancel)
        self.present(alert, animated: true)
        
    }

    
}
