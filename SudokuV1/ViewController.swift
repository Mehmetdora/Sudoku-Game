//
//  ViewController.swift
//  SudokuV1
//
//  Created by Mehmet Dora on 4.03.2024.
//

import UIKit
import CoreData




class ViewController: UIViewController {
    
    @IBOutlet weak var cell1: UIButton!
    @IBOutlet weak var cell2: UIButton!
    @IBOutlet weak var cell3: UIButton!
    @IBOutlet weak var cell4: UIButton!
    @IBOutlet weak var cell5: UIButton!
    @IBOutlet weak var cell6: UIButton!
    @IBOutlet weak var cell7: UIButton!
    @IBOutlet weak var cell8: UIButton!
    @IBOutlet weak var cell9: UIButton!
    @IBOutlet weak var cell10: UIButton!
    @IBOutlet weak var cell11: UIButton!
    @IBOutlet weak var cell12: UIButton!
    @IBOutlet weak var cell13: UIButton!
    @IBOutlet weak var cell14: UIButton!
    @IBOutlet weak var cell15: UIButton!
    @IBOutlet weak var cell16: UIButton!
    @IBOutlet weak var cell17: UIButton!
    @IBOutlet weak var cell18: UIButton!
    @IBOutlet weak var cell19: UIButton!
    @IBOutlet weak var cell20: UIButton!
    @IBOutlet weak var cell21: UIButton!
    @IBOutlet weak var cell22: UIButton!
    @IBOutlet weak var cell23: UIButton!
    @IBOutlet weak var cell24: UIButton!
    @IBOutlet weak var cell25: UIButton!
    @IBOutlet weak var cell26: UIButton!
    @IBOutlet weak var cell27: UIButton!
    @IBOutlet weak var cell28: UIButton!
    @IBOutlet weak var cell29: UIButton!
    @IBOutlet weak var cell30: UIButton!
    @IBOutlet weak var cell31: UIButton!
    @IBOutlet weak var cell32: UIButton!
    @IBOutlet weak var cell33: UIButton!
    @IBOutlet weak var cell34: UIButton!
    @IBOutlet weak var cell35: UIButton!
    @IBOutlet weak var cell36: UIButton!
    @IBOutlet weak var cell37: UIButton!
    @IBOutlet weak var cell38: UIButton!
    @IBOutlet weak var cell39: UIButton!
    @IBOutlet weak var cell40: UIButton!
    @IBOutlet weak var cell41: UIButton!
    @IBOutlet weak var cell42: UIButton!
    @IBOutlet weak var cell43: UIButton!
    @IBOutlet weak var cell44: UIButton!
    @IBOutlet weak var cell45: UIButton!
    @IBOutlet weak var cell46: UIButton!
    @IBOutlet weak var cell47: UIButton!
    @IBOutlet weak var cell48: UIButton!
    @IBOutlet weak var cell49: UIButton!
    @IBOutlet weak var cell50: UIButton!
    @IBOutlet weak var cell51: UIButton!
    @IBOutlet weak var cell52: UIButton!
    @IBOutlet weak var cell53: UIButton!
    @IBOutlet weak var cell54: UIButton!
    @IBOutlet weak var cell55: UIButton!
    @IBOutlet weak var cell56: UIButton!
    @IBOutlet weak var cell57: UIButton!
    @IBOutlet weak var cell58: UIButton!
    @IBOutlet weak var cell59: UIButton!
    @IBOutlet weak var cell60: UIButton!
    @IBOutlet weak var cell61: UIButton!
    @IBOutlet weak var cell62: UIButton!
    @IBOutlet weak var cell63: UIButton!
    @IBOutlet weak var cell64: UIButton!
    @IBOutlet weak var cell65: UIButton!
    @IBOutlet weak var cell66: UIButton!
    @IBOutlet weak var cell67: UIButton!
    @IBOutlet weak var cell68: UIButton!
    @IBOutlet weak var cell69: UIButton!
    @IBOutlet weak var cell70: UIButton!
    @IBOutlet weak var cell71: UIButton!
    @IBOutlet weak var cell72: UIButton!
    @IBOutlet weak var cell73: UIButton!
    @IBOutlet weak var cell74: UIButton!
    @IBOutlet weak var cell75: UIButton!
    @IBOutlet weak var cell76: UIButton!
    @IBOutlet weak var cell77: UIButton!
    @IBOutlet weak var cell78: UIButton!
    @IBOutlet weak var cell79: UIButton!
    @IBOutlet weak var cell80: UIButton!
    @IBOutlet weak var cell81: UIButton!
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var geriButtonOutlet: UIButton!
    @IBOutlet weak var silButtonOutlet: UIButton!
    @IBOutlet weak var difficultyLabel: UILabel!
    @IBOutlet weak var mistakeCountLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var pauseButtonOutlet: UIButton!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var context : NSManagedObjectContext!
    
    var yapılanİşlemArray = [(tag:Int,yazılanSayı:Int)]()
    var puankatsayısı = 0
    var boşCellSayısı = 0
    var timer : Timer?
    var counter = 0
    var score = 0
    var hataSayısı = 0
    var colorIndex = 0
    var colorArray = [UIColor]()
    var dak = 0
    var saniye = 0
    var stopper = false
    var i = 0
    var btns = [UIButton]()
    var yüklendiMi = false
    var seçiliButton = 0
    var tag = 0
    var dikeyButtons = [[UIButton]]()
    var yatayButtons = [[UIButton]]()
    var sudokuMatris = [[0,0,0,0,0,0,0,0,0,],
                        [0,0,0,0,0,0,0,0,0,],
                        [0,0,0,0,0,0,0,0,0,],
                        [0,0,0,0,0,0,0,0,0,],
                        [0,0,0,0,0,0,0,0,0,],
                        [0,0,0,0,0,0,0,0,0,],
                        [0,0,0,0,0,0,0,0,0,],
                        [0,0,0,0,0,0,0,0,0,],
                        [0,0,0,0,0,0,0,0,0,]]
    
    var grup1 = [UIButton]()
    var grup2 = [UIButton]()
    var grup3 = [UIButton]()
    var grup4 = [UIButton]()
    var grup5 = [UIButton]()
    var grup6 = [UIButton]()
    var grup7 = [UIButton]()
    var grup8 = [UIButton]()
    var grup9 = [UIButton]()
    var grupButtons = [[UIButton]]()
    var ilkYüklenenSayılar : [UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.backBarButtonItem?.isHidden = true
        let backButton = UIBarButtonItem(title: "BACK", style:.plain, target: self, action: #selector(back))
        backButton.tintColor = .black
        backButton.image = UIImage(systemName: "arrowtriangle.left.fill")
        self.navigationItem.leftBarButtonItem = backButton
        
        silButtonOutlet.layer.backgroundColor = UIColor(named: "açıkMavi")?.cgColor
        silButtonOutlet.layer.cornerRadius = 29
        geriButtonOutlet.layer.backgroundColor = UIColor(named: "açıkMavi")?.cgColor
        geriButtonOutlet.layer.cornerRadius = 29
        pauseButtonOutlet.layer.backgroundColor = UIColor(named: "açıkMavi")?.cgColor
        pauseButtonOutlet.layer.cornerRadius = 22
        pauseButtonOutlet.layer.masksToBounds = true
        scoreLabel.text = score.description
        colorArray.append(UIColor(named: "r1")!)
        colorArray.append(UIColor(named: "r2")!)
        colorArray.append(UIColor(named: "r3")!)
        colorArray.append(UIColor(named: "r4")!)
        colorArray.append(UIColor(named: "r5")!)
        if boşCellSayısı == 45{
            difficultyLabel.text = "Easy"
            puankatsayısı = 20
        }else if boşCellSayısı == 55{
            puankatsayısı = 15
            difficultyLabel.text = "Normal"
        }else{
            puankatsayısı = 10
            difficultyLabel.text = "Hard"
        }
        
        
        setGrups()
        setBackgroundView()
        
        // veriyi kendi matrisine eşleme
        var sudokuGame = generateRandomSudoku()
        var a = -1
        var b = 0
        for i in 0...80{
            if i%9==0{
                a+=1
                b = 0
            }
            sudokuMatris[a][b] = sudokuGame[i]
            b += 1
        }
        sudokuyuDoldurma(matris: sudokuMatris)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(sayacıGüncelleme), userInfo: nil, repeats: true)
        
        backgroundView.isHidden = false
        animateBackground()
        
        
    }
    
    @objc func back(sender: UIBarButtonItem){
        let alert = UIAlertController(title: "GIVE UP?", message: "Is it difficult for you?", preferredStyle: .alert)
        let ok = UIAlertAction(title: "STAY", style: .default)
        let exit = UIAlertAction(title: "EXIT", style: .cancel, handler: {_ in
            self.backgroundView.isHidden = true
            self.navigationController?.popViewController(animated: true)
        })
        alert.addAction(ok)
        alert.addAction(exit)
        self.present(alert, animated: true)
    }
    
    
    func setBackgroundView(){
        let colorFirst =  UIColor(red: 33.0/255.0, green: 146.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        let colorSecond = UIColor(red: 56.0/255.0, green: 229.0/255.0, blue: 77.0/255.0, alpha: 1.0).cgColor
        let colorLast = UIColor(red: 253.0/255.0, green: 255.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorFirst,colorSecond,colorLast]
        gradientLayer.locations = [0.0,0.5, 1.0]
        gradientLayer.frame = self.backgroundView.bounds
        
        self.backgroundView.layer.insertSublayer(gradientLayer, at:0)
    }
    
    func animateBackground(){
        UIView.animate(withDuration: 15,delay: 0,options: [], animations: {
            
            self.backgroundView.transform = CGAffineTransform(rotationAngle: .pi)
        },completion: {_ in
            UIView.animate(withDuration: 15, animations: {
                self.backgroundView.transform = self.backgroundView.transform.rotated(by: .pi)
            },completion: {_ in
                self.animateBackground()
            })
        })
        
    }
    
   
    
    @objc func sayacıGüncelleme(){
        counter += 1
        if counter > 59{
            dak += 1
            counter = 0
        }
        
        if dak<10 && counter < 10{
            timeLabel.text = "0\(dak):0\(counter)"
        }else if dak < 10 && counter > 10{
            timeLabel.text = "0\(dak):\(counter)"
        }else if dak > 10 && counter<10{
            timeLabel.text = "\(dak):0\(counter)"
        }else{
            timeLabel.text = "\(dak):\(counter)"

        }
        
    }
    
    
    @IBAction func pauseButton(_ sender: UIButton) {
        
        if sender.imageView?.image == UIImage(systemName: "pause.fill"){
            timer?.invalidate()
            timer = nil
            sender.setImage(UIImage(systemName: "play.fill"), for: .normal)
            
            let alert  = UIAlertController(title: "Game Stoped", message: "Press down to continue", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Continue", style: .cancel){ [self]_ in 
                timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(sayacıGüncelleme), userInfo: nil, repeats: true)
                sender.setImage(UIImage(systemName: "pause.fill"), for: .normal)

            }
            alert.addAction(ok)
            self.present(alert,animated: true)
        }
    }
    
    
    @IBAction func silButton(_ sender: UIButton) {
        sender.layer.cornerRadius = sender.frame.height/2
        UIView.animate(withDuration: 0.5, animations: {
            sender.backgroundColor = .white

        },completion: { _ in
            UIView.animate(withDuration: 0.5, animations: {
                sender.backgroundColor = UIColor(named: "açıkMavi")
            })
        })
        
        for a in yatayButtons{
            for b in a {
                if b.backgroundColor == UIColor(named: "yanlışSayı"){
                    UIView.animate(withDuration: 1, animations: {
                    b.backgroundColor = UIColor(named: "açıkMavi")
                    })
                    
                }
            }
        }
        
        var b = 0
        for a in ilkYüklenenSayılar{
            if a.tag == seçiliButton{
                b = 1
            }
            
        }
        if b == 0{
            var m = 0
            var n = 0
            for a in yatayButtons{
                for c in a{
                    if c.tag == seçiliButton{
                        c.setTitle("", for: .normal)    //SİLME İŞLEMİ ""
                        sudokuMatris[m][n] = 0
                    }
                    n = n+1
                }
                n = 0
                m = m+1
            }
        }
        
      
    }
    
    @IBAction func geriAlButton(_ sender: UIButton) {
        sender.layer.cornerRadius = sender.frame.height/2
        UIView.animate(withDuration: 0.5, animations: {
            sender.backgroundColor = .white

        },completion: { _ in
            UIView.animate(withDuration: 0.5, animations: {
                sender.backgroundColor = UIColor(named: "açıkMavi")
            })
        })
        
        for a in yatayButtons{
            for b in a {
                if b.backgroundColor == UIColor(named: "yanlışSayı"){
                    UIView.animate(withDuration: 1, animations: {
                    b.backgroundColor = UIColor(named: "açıkMavi")
                    })
                    
                }
            }
        }
        
        // geri alma işlemi için herhangi bir yere bir sayı yazılmalı
        if !yapılanİşlemArray.isEmpty{
            işlemiGeriAlma()
            yapılanİşlemArray.removeLast()
        }
    }
    
    @IBAction func tuşlarButton(_ sender: UIButton) {
        sender.layer.cornerRadius = 20
        sender.layer.borderColor = UIColor.black.cgColor
        UIView.animate(withDuration: 1.0, animations: {
            sender.layer.borderWidth = 1.5
        }, completion: {_ in
            UIView.animate(withDuration: 0.5, animations: {
                sender.layer.borderWidth = 0
            })
        })
        
        if !yüklendiMi{
            setİlkYüklenenButtons()
            yüklendiMi = true
        }
        
        for a in yatayButtons{
            for b in a {
                if b.backgroundColor == UIColor(named: "yanlışSayı"){
                    b.backgroundColor = UIColor(named: "açıkMavi")
                }
            }
        }
        
        sayıyıBoşluğaYaz(sayı: Int((sender.titleLabel?.text)!)!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){        // simdiki zamandan ... saniye sonra çalışsın demek
            self.yazılanSayıKontrolü(yatayG: self.yatayButtons, dikeyG: self.dikeyButtons, topluG: self.grupButtons)
        }
        

    }
    
    func işlemiGeriAlma(){
        // işlem arrayinde son veri son yapılan işlemdir
        // önce işlemin olduğu yere git ikinci geri işleminde yapılan işlemi sil
        // her geri işleminde işlem array inin son elemanını sil
        
        for a in yatayButtons{
            for b in a{
                if b.tag == yapılanİşlemArray.last?.tag{
                    resetCellView(cell: b)
                    if yapılanİşlemArray.last?.yazılanSayı != 0{
                        b.setTitle("", for: .normal)
                    }
                }
            }
        }

        
    }
    
    // yanlış yapılan yerleri bulma, alert gösterme
    func yazılanSayıKontrolü(yatayG:[[UIButton]],dikeyG:[[UIButton]],topluG:[[UIButton]]){
        var flag = 0
        for i in yatayG{
            for a in i{
                if seçiliButton == a.tag{
                    yapılanİşlemArray.append((tag: a.tag, yazılanSayı: 0))
                    for b in i{ // yatayda kontrol
                        if b.titleLabel?.text == a.titleLabel?.text && b.tag != a.tag && b.titleLabel?.text != "" && b.titleLabel?.text != nil{
                            flag = 1
                            print("\(b.tag) yatayda mevcut")
                            UIView.animate(withDuration: 2, animations: {
                                a.titleLabel?.textColor = .red
                                b.backgroundColor = UIColor(named: "yanlışSayı")
                            })
                        }
                    }
                }
            }
        }
        
        for i in dikeyG{
            for a in i{
                if seçiliButton == a.tag{
                    for b in i{ // dikeyde kontrol
                        if b.titleLabel?.text == a.titleLabel?.text && b.tag != a.tag && b.titleLabel?.text != "" && b.titleLabel?.text != nil{
                            flag = 1
                            print("\(b.titleLabel?.text) dikeyde mevcut")
                            UIView.animate(withDuration: 2, animations: {
                                a.titleLabel?.textColor = .red
                                b.backgroundColor = UIColor(named: "yanlışSayı")
                            })
                        }
                    }
                }
            }
        }
        
        for i in topluG{
            for a in i{
                if seçiliButton == a.tag{
                    for b in i{ // grupta kontrol
                        if b.titleLabel?.text == a.titleLabel?.text && b.tag != a.tag && b.titleLabel?.text != "" && b.titleLabel?.text != nil {
                            flag = 1
                            print("\(b.titleLabel?.text) grupta mevcut")
                            UIView.animate(withDuration: 2, animations: {
                                a.titleLabel?.textColor = .red
                                b.backgroundColor = UIColor(named: "yanlışSayı")
                            })
                        }
                    }
                }
            }
        }
        
        if flag != 0{      // sayı başka bir grupta mevcutsa
            
            hataSayısı += 1
            mistakeCountLabel.text = "\(hataSayısı)/3"
            if hataSayısı == 3{
                let alert = UIAlertController(title: "Game Over!", message: "You did 3 times mistakes and game is done.", preferredStyle: .alert)
                let ok = UIAlertAction(title: "EXİT", style: .cancel){_ in
                    self.navigationController?.popViewController(animated: true)
                }
                alert.addAction(ok)
                self.present(alert, animated: true)
                hataSayısı = 0
            }else {
                
                let alert = UIAlertController(title: "False Number!", message: "This number is valid in the coloum.", preferredStyle: .alert)
                let ok = UIAlertAction(title: "OK", style: .cancel)
                alert.addAction(ok)
                self.present(alert, animated: true)
                for a in yatayG{
                    for b in a{
                        if b.tag == seçiliButton{
                            UIView.animate(withDuration: 2, animations: {
                                b.titleLabel?.textColor = .red
                            })
                        }
                    }
                }
            }
            mistakeCountLabel.text = "\(hataSayısı)/3"
        }else{
            for a in yatayButtons{
                for b in a{
                    if b.tag == seçiliButton{
                        var f = 0
                        for i in a{
                            if i.titleLabel?.text == "" || i.titleLabel?.text == nil{
                                f = 1
                            }
                        }
                        if f == 0{
                            btns.removeAll()
                            i = 0
                            btns = a
                            animateGrup()
                            if dak<1{
                                score += Int(100*((10.0/Double(puankatsayısı))))
                            }else{
                                score += 300/(dak*puankatsayısı)
                            }
                            scoreLabel.text = score.description
                            oyunPuanlamaVeSonlandırma()
                            // her satır veya sütun tamamlandığında skoru kaydet,oyunun bitip bitmediğini kontrol et,duruma göre işlem yap
                            
                            yapılanİşlemArray.removeAll()// bir grup tamamlandığında işlem hafızasını sıfırlama
                        }
                    }
                }
                
                
            }
            
            for a in dikeyButtons{
                for b in a{
                    if b.tag == seçiliButton{
                        var f = 0
                        for i in a{
                            if i.titleLabel?.text == "" || i.titleLabel?.text == nil{
                                f = 1
                            }
                        }
                        if f == 0{  // tamamlanan cell grubu animasyonu
                            btns.removeAll()
                            i = 0
                            btns = a
                            animateGrup()
                            if dak<1{
                                score += Int(100*((10.0/Double(puankatsayısı))))
                            }else{
                                score += 300/(dak*puankatsayısı)
                            }
                            scoreLabel.text = score.description
                            oyunPuanlamaVeSonlandırma()
                            yapılanİşlemArray.removeAll()
                        }
                    }
                }
            }
            
            for a in grupButtons{
                for b in a{
                    if b.tag == seçiliButton{
                        var f = 0
                        for i in a{
                            if i.titleLabel?.text == "" || i.titleLabel?.text == nil{
                                f = 1
                            }
                        }
                        if f == 0{
                            btns.removeAll()
                            i = 0
                            btns = a
                            animateGrup()
                            if dak<1{
                                score += Int(100*((10.0/Double(puankatsayısı))))
                            }else{
                                score += 200/(dak*puankatsayısı)
                            }
                            scoreLabel.text = score.description
                            oyunPuanlamaVeSonlandırma()
                            yapılanİşlemArray.removeAll()
                        }
                    }
                }
            }
        }
        
        
    }
    
    func saveScore(){   // oyunda alınan skoru coredata ya kaydet
        
        context  = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Infos", in: context)
        let newGameScore = NSManagedObject(entity: entity!, insertInto: context)
        
        newGameScore.setValue(self.score.description, forKey: "score")
        do{
            try context.save()
            print("SAved")
        }catch{
            print("Error accured while saving data in coredata!")
        }
        
    }
    
    func oyunPuanlamaVeSonlandırma(){
        var f = true
        for a in yatayButtons{
            for b in a{
                if b.titleLabel?.text == "" || b.titleLabel?.text == nil{
                    f = false
                }
            }
        }
        if f {
            saveScore()
            let alert = UIAlertController(title: "GAME OVER!", message: "You succesfully end the game.", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default){_ in
                self.navigationController?.popViewController(animated: true)
            }
            
            alert.addAction(ok)
            self.present(alert, animated: true)
        }
    }
    
    
    func sayıyıBoşluğaYaz(sayı:Int){
        var f = 0
        DispatchQueue.main.async {
            for i in self.ilkYüklenenSayılar{
                if self.seçiliButton == i.tag{
                f = 1
                    let alert = UIAlertController(title: "Chose Another", message: "This number is already valid!", preferredStyle: .alert)
                    self.present(alert, animated: true)
                    let time = DispatchTime.now() + 2
                    DispatchQueue.main.asyncAfter(deadline: time){
                        self.dismiss(animated: true,completion: nil)
                    }
                
            }
        }
        
        
        if f == 0{
            for a in  self.yatayButtons{
                for b in a {
                    if b.tag == self.seçiliButton{
                        self.yapılanİşlemArray.append((tag: b.tag, yazılanSayı:sayı))      // her eklenen sayı işlem listesine eklenir
                        b.setTitle("\(sayı)", for: .normal)
                        b.setTitleColor(.blue, for: .normal)
                    }
                }
            }
        }
        }

    }
    
    func animateGrup(){ // kendi kendini çağırarak çalışan grup tamamlama animasyonu
        
        UIView.animate(withDuration: 0.1,delay: 0,options: .allowUserInteraction, animations: { [self] in
            if i < 9{
                btns[i].backgroundColor = .gray
            }
            
            if i >= 4{
                btns[i-4].backgroundColor = UIColor(named: "açıkMavi")
            }
            if 12 >= i && i > 8{
                btns[i-4].backgroundColor = UIColor(named: "açıkMavi")
            }
        },completion: { [self]_ in
            i += 1
            if i<13{
                animateGrup()
            }
        })
        
    }
    
    
    

    
    func setGrups(){    // buton gruplarını set etme
        
        dikeyButtons.append([cell1,cell10,cell19,cell28,cell37,cell46,cell55,cell64,cell73])
        dikeyButtons.append([cell2,cell11,cell20,cell29,cell38,cell47,cell56,cell65,cell74])
        dikeyButtons.append([cell3,cell12,cell21,cell30,cell39,cell48,cell57,cell66,cell75])
        dikeyButtons.append([cell4,cell13,cell22,cell31,cell40,cell49,cell58,cell67,cell76])
        dikeyButtons.append([cell5,cell14,cell23,cell32,cell41,cell50,cell59,cell68,cell77])
        dikeyButtons.append([cell6,cell15,cell24,cell33,cell42,cell51,cell60,cell69,cell78])
        dikeyButtons.append([cell7,cell16,cell25,cell34,cell43,cell52,cell61,cell70,cell79])
        dikeyButtons.append([cell8,cell17,cell26,cell35,cell44,cell53,cell62,cell71,cell80])
        dikeyButtons.append([cell9,cell18,cell27,cell36,cell45,cell54,cell63,cell72,cell81])
        
        yatayButtons.append([cell1,cell2,cell3,cell4,cell5,cell6,cell7,cell8,cell9])
        yatayButtons.append([cell10,cell11,cell12,cell13,cell14,cell15,cell16,cell17,cell18])
        yatayButtons.append([cell19,cell20,cell21,cell22,cell23,cell24,cell25,cell26,cell27])
        yatayButtons.append([cell28,cell29,cell30,cell31,cell32,cell33,cell34,cell35,cell36])
        yatayButtons.append([cell37,cell38,cell39,cell40,cell41,cell42,cell43,cell44,cell45])
        yatayButtons.append([cell46,cell47,cell48,cell49,cell50,cell51,cell52,cell53,cell54])
        yatayButtons.append([cell55,cell56,cell57,cell58,cell59,cell60,cell61,cell62,cell63])
        yatayButtons.append([cell64,cell65,cell66,cell67,cell68,cell69,cell70,cell71,cell72])
        yatayButtons.append([cell73,cell74,cell75,cell76,cell77,cell78,cell79,cell80,cell81])
        
        for a in yatayButtons{
            for b in a{
                setCells(cell: b)
            }
        }
        
        grup1 = [cell1,cell2,cell3,cell10,cell11,cell12,cell19,cell20,cell21]
        grup2 = [cell4,cell5,cell6,cell13,cell14,cell15,cell22,cell23,cell24]
        grup3 = [cell7,cell8,cell9,cell16,cell17,cell18,cell25,cell26,cell27]
        grup4 = [cell28,cell29,cell30,cell37,cell38,cell39,cell46,cell47,cell48]
        grup5 = [cell31,cell32,cell33,cell40,cell41,cell42,cell49,cell50,cell51]
        grup6 = [cell34,cell35,cell36,cell43,cell44,cell45,cell52,cell53,cell54]
        grup7 = [cell55,cell56,cell57,cell64,cell65,cell66,cell73,cell74,cell75]
        grup8 = [cell58,cell59,cell60,cell67,cell68,cell69,cell76,cell77,cell78]
        grup9 = [cell61,cell62,cell63,cell70,cell71,cell72,cell79,cell80,cell81]
        grupButtons = [grup1,grup2,grup3,grup4,grup5,grup6,grup7,grup8,grup9]
        
    }
    
    
    
    
    func sudokuyuDoldurma(matris : [[Int]]){
        
        for a in 0...8 {
            for b in 0...8{
                yatayButtons[a][b].setTitle("\(matris[a][b])", for: .normal)
            }
        }
        // random yerlerde sayıları sıfırlama
        var num = 0
        var num2 = 0
        for i in 0...(boşCellSayısı-1){
            num = Int.random(in: 0...8)
            num2 = Int.random(in: 0...8)
            sudokuMatris[num][num2] = 0
            yatayButtons[num][num2].setTitle(nil, for: .normal)
        }
        
    }
    
    func setİlkYüklenenButtons(){
        for a in 0...8{
            for b in 0...8{
                        if sudokuMatris[a][b] != 0{
                            ilkYüklenenSayılar.append(yatayButtons[a][b])
                        }
                    }
                }
    }

    
  
    func generateRandomSudoku() -> [Int] {
        var sudoku = Array(repeating: 0, count: 81)

        func isValid(_ row: Int, _ col: Int, _ num: Int) -> Bool {
            for i in 0..<9 {
                if sudoku[row * 9 + i] == num || sudoku[i * 9 + col] == num || sudoku[(3 * (row / 3) + i / 3) * 9 + 3 * (col / 3) + i % 3] == num {
                    return false
                }
            }
            return true
        }

        func solveSudoku() -> Bool {
            for i in 0..<9 {
                for j in 0..<9 {
                    if sudoku[i * 9 + j] == 0 {
                        var possibleNumbers = Array(1...9).shuffled()
                        for num in possibleNumbers {
                            if isValid(i, j, num) {
                                sudoku[i * 9 + j] = num
                                if solveSudoku() {
                                    return true
                                }
                                sudoku[i * 9 + j] = 0
                            }
                        }
                        return false
                    }
                }
            }
            return true
        }

        solveSudoku()
        return sudoku
    }
   
    
    
    
    
    
    
    func unSelectCell(buttons:[[UIButton]]){
        for a in buttons{
            for b in a{
                b.backgroundColor = .white
            }
        }
    }
    
    func setCells(cell:UIButton){
        cell.setTitle("", for: .normal)
        cell.tintColor = .black
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 0.5
        tag += 1
        cell.tag = tag
    }
    
    func resetCellView(cell:UIButton){  // başka bir cell seçildiğinde seçili cell e göre cell leri tekrar düzenleme
        unSelectCell(buttons: yatayButtons)
        
        for grup in yatayButtons{
            for button in grup {
                if button.titleLabel?.text == cell.titleLabel?.text && cell.titleLabel?.text != nil{
                    button.backgroundColor = UIColor(named: "koyuMavi2")
                }
            }
        }
        
        for grup in grupButtons{
            for cel in grup{
                if cel.tag == cell.tag{
                    for c in grup{
                        c.backgroundColor = UIColor(named: "açıkMavi")
                    }
                }
            }
        }
        
        switch cell.tag%9 {
        case 0:
            cell9.backgroundColor = UIColor(named: "açıkMavi")
            cell18.backgroundColor = UIColor(named: "açıkMavi")
            cell27.backgroundColor = UIColor(named: "açıkMavi")
            cell36.backgroundColor = UIColor(named: "açıkMavi")
            cell45.backgroundColor = UIColor(named: "açıkMavi")
            cell54.backgroundColor = UIColor(named: "açıkMavi")
            cell63.backgroundColor = UIColor(named: "açıkMavi")
            cell72.backgroundColor = UIColor(named: "açıkMavi")
            cell81.backgroundColor = UIColor(named: "açıkMavi")
        case 1:
             cell1.backgroundColor = UIColor(named: "açıkMavi")
            cell10.backgroundColor = UIColor(named: "açıkMavi")
            cell19.backgroundColor = UIColor(named: "açıkMavi")
            cell28.backgroundColor = UIColor(named: "açıkMavi")
            cell37.backgroundColor = UIColor(named: "açıkMavi")
            cell46.backgroundColor = UIColor(named: "açıkMavi")
            cell55.backgroundColor = UIColor(named: "açıkMavi")
            cell64.backgroundColor = UIColor(named: "açıkMavi")
            cell73.backgroundColor = UIColor(named: "açıkMavi")
        case 2:
             cell2.backgroundColor = UIColor(named: "açıkMavi")
            cell11.backgroundColor = UIColor(named: "açıkMavi")
            cell20.backgroundColor = UIColor(named: "açıkMavi")
            cell29.backgroundColor = UIColor(named: "açıkMavi")
            cell38.backgroundColor = UIColor(named: "açıkMavi")
            cell47.backgroundColor = UIColor(named: "açıkMavi")
            cell56.backgroundColor = UIColor(named: "açıkMavi")
            cell65.backgroundColor = UIColor(named: "açıkMavi")
            cell74.backgroundColor = UIColor(named: "açıkMavi")
        case 3:
             cell3.backgroundColor = UIColor(named: "açıkMavi")
            cell12.backgroundColor = UIColor(named: "açıkMavi")
            cell21.backgroundColor = UIColor(named: "açıkMavi")
            cell30.backgroundColor = UIColor(named: "açıkMavi")
            cell39.backgroundColor = UIColor(named: "açıkMavi")
            cell48.backgroundColor = UIColor(named: "açıkMavi")
            cell57.backgroundColor = UIColor(named: "açıkMavi")
            cell66.backgroundColor = UIColor(named: "açıkMavi")
            cell75.backgroundColor = UIColor(named: "açıkMavi")
        case 4:
             cell4.backgroundColor = UIColor(named: "açıkMavi")
            cell13.backgroundColor = UIColor(named: "açıkMavi")
            cell22.backgroundColor = UIColor(named: "açıkMavi")
            cell31.backgroundColor = UIColor(named: "açıkMavi")
            cell40.backgroundColor = UIColor(named: "açıkMavi")
            cell49.backgroundColor = UIColor(named: "açıkMavi")
            cell58.backgroundColor = UIColor(named: "açıkMavi")
            cell67.backgroundColor = UIColor(named: "açıkMavi")
            cell76.backgroundColor = UIColor(named: "açıkMavi")
        case 5:
             cell5.backgroundColor = UIColor(named: "açıkMavi")
            cell14.backgroundColor = UIColor(named: "açıkMavi")
            cell23.backgroundColor = UIColor(named: "açıkMavi")
            cell32.backgroundColor = UIColor(named: "açıkMavi")
            cell41.backgroundColor = UIColor(named: "açıkMavi")
            cell50.backgroundColor = UIColor(named: "açıkMavi")
            cell59.backgroundColor = UIColor(named: "açıkMavi")
            cell68.backgroundColor = UIColor(named: "açıkMavi")
            cell77.backgroundColor = UIColor(named: "açıkMavi")
        case 6:
             cell6.backgroundColor = UIColor(named: "açıkMavi")
            cell15.backgroundColor = UIColor(named: "açıkMavi")
            cell24.backgroundColor = UIColor(named: "açıkMavi")
            cell33.backgroundColor = UIColor(named: "açıkMavi")
            cell42.backgroundColor = UIColor(named: "açıkMavi")
            cell51.backgroundColor = UIColor(named: "açıkMavi")
            cell60.backgroundColor = UIColor(named: "açıkMavi")
            cell69.backgroundColor = UIColor(named: "açıkMavi")
            cell78.backgroundColor = UIColor(named: "açıkMavi")
        case 7:
             cell7.backgroundColor = UIColor(named: "açıkMavi")
            cell16.backgroundColor = UIColor(named: "açıkMavi")
            cell25.backgroundColor = UIColor(named: "açıkMavi")
            cell34.backgroundColor = UIColor(named: "açıkMavi")
            cell43.backgroundColor = UIColor(named: "açıkMavi")
            cell52.backgroundColor = UIColor(named: "açıkMavi")
            cell61.backgroundColor = UIColor(named: "açıkMavi")
            cell70.backgroundColor = UIColor(named: "açıkMavi")
            cell79.backgroundColor = UIColor(named: "açıkMavi")
        case 8:
             cell8.backgroundColor = UIColor(named: "açıkMavi")
            cell17.backgroundColor = UIColor(named: "açıkMavi")
            cell26.backgroundColor = UIColor(named: "açıkMavi")
            cell35.backgroundColor = UIColor(named: "açıkMavi")
            cell44.backgroundColor = UIColor(named: "açıkMavi")
            cell53.backgroundColor = UIColor(named: "açıkMavi")
            cell62.backgroundColor = UIColor(named: "açıkMavi")
            cell71.backgroundColor = UIColor(named: "açıkMavi")
            cell80.backgroundColor = UIColor(named: "açıkMavi")
        
        default:
            print("Error")
        }
        if cell.tag == 9 || cell.tag == 18 || cell.tag == 27 || cell.tag == 36 || cell.tag == 45 || cell.tag == 54 || cell.tag == 63 || cell.tag == 72 || cell.tag == 81{
            
            switch cell.tag {
            case 9:
                cell1.backgroundColor = UIColor(named: "açıkMavi")
                cell2.backgroundColor = UIColor(named: "açıkMavi")
                cell3.backgroundColor = UIColor(named: "açıkMavi")
                cell4.backgroundColor = UIColor(named: "açıkMavi")
                cell5.backgroundColor = UIColor(named: "açıkMavi")
                cell6.backgroundColor = UIColor(named: "açıkMavi")
                cell7.backgroundColor = UIColor(named: "açıkMavi")
                cell8.backgroundColor = UIColor(named: "açıkMavi")
                cell9.backgroundColor = UIColor(named: "açıkMavi")
            case 18:
                cell10.backgroundColor = UIColor(named: "açıkMavi")
                cell11.backgroundColor = UIColor(named: "açıkMavi")
                cell12.backgroundColor = UIColor(named: "açıkMavi")
                cell13.backgroundColor = UIColor(named: "açıkMavi")
                cell14.backgroundColor = UIColor(named: "açıkMavi")
                cell15.backgroundColor = UIColor(named: "açıkMavi")
                cell16.backgroundColor = UIColor(named: "açıkMavi")
                cell17.backgroundColor = UIColor(named: "açıkMavi")
                cell18.backgroundColor = UIColor(named: "açıkMavi")
            case 27:
                cell19.backgroundColor = UIColor(named: "açıkMavi")
                cell20.backgroundColor = UIColor(named: "açıkMavi")
                cell21.backgroundColor = UIColor(named: "açıkMavi")
                cell22.backgroundColor = UIColor(named: "açıkMavi")
                cell23.backgroundColor = UIColor(named: "açıkMavi")
                cell24.backgroundColor = UIColor(named: "açıkMavi")
                cell25.backgroundColor = UIColor(named: "açıkMavi")
                cell26.backgroundColor = UIColor(named: "açıkMavi")
                cell27.backgroundColor = UIColor(named: "açıkMavi")
            case 36:
                cell28.backgroundColor = UIColor(named: "açıkMavi")
                cell29.backgroundColor = UIColor(named: "açıkMavi")
                cell30.backgroundColor = UIColor(named: "açıkMavi")
                cell31.backgroundColor = UIColor(named: "açıkMavi")
                cell32.backgroundColor = UIColor(named: "açıkMavi")
                cell33.backgroundColor = UIColor(named: "açıkMavi")
                cell34.backgroundColor = UIColor(named: "açıkMavi")
                cell35.backgroundColor = UIColor(named: "açıkMavi")
                cell36.backgroundColor = UIColor(named: "açıkMavi")
            case 45:
                cell37.backgroundColor = UIColor(named: "açıkMavi")
                cell38.backgroundColor = UIColor(named: "açıkMavi")
                cell39.backgroundColor = UIColor(named: "açıkMavi")
                cell40.backgroundColor = UIColor(named: "açıkMavi")
                cell41.backgroundColor = UIColor(named: "açıkMavi")
                cell42.backgroundColor = UIColor(named: "açıkMavi")
                cell43.backgroundColor = UIColor(named: "açıkMavi")
                cell44.backgroundColor = UIColor(named: "açıkMavi")
                cell45.backgroundColor = UIColor(named: "açıkMavi")
            case 54:
                cell46.backgroundColor = UIColor(named: "açıkMavi")
                cell47.backgroundColor = UIColor(named: "açıkMavi")
                cell48.backgroundColor = UIColor(named: "açıkMavi")
                cell49.backgroundColor = UIColor(named: "açıkMavi")
                cell50.backgroundColor = UIColor(named: "açıkMavi")
                cell51.backgroundColor = UIColor(named: "açıkMavi")
                cell52.backgroundColor = UIColor(named: "açıkMavi")
                cell53.backgroundColor = UIColor(named: "açıkMavi")
                cell54.backgroundColor = UIColor(named: "açıkMavi")
            case 63:
                cell55.backgroundColor = UIColor(named: "açıkMavi")
                cell56.backgroundColor = UIColor(named: "açıkMavi")
                cell57.backgroundColor = UIColor(named: "açıkMavi")
                cell58.backgroundColor = UIColor(named: "açıkMavi")
                cell59.backgroundColor = UIColor(named: "açıkMavi")
                cell60.backgroundColor = UIColor(named: "açıkMavi")
                cell61.backgroundColor = UIColor(named: "açıkMavi")
                cell62.backgroundColor = UIColor(named: "açıkMavi")
                cell63.backgroundColor = UIColor(named: "açıkMavi")
            case 72:
                cell64.backgroundColor = UIColor(named: "açıkMavi")
                cell65.backgroundColor = UIColor(named: "açıkMavi")
                cell66.backgroundColor = UIColor(named: "açıkMavi")
                cell67.backgroundColor = UIColor(named: "açıkMavi")
                cell68.backgroundColor = UIColor(named: "açıkMavi")
                cell69.backgroundColor = UIColor(named: "açıkMavi")
                cell70.backgroundColor = UIColor(named: "açıkMavi")
                cell71.backgroundColor = UIColor(named: "açıkMavi")
                cell72.backgroundColor = UIColor(named: "açıkMavi")
            case 81:
                cell73.backgroundColor = UIColor(named: "açıkMavi")
                cell74.backgroundColor = UIColor(named: "açıkMavi")
                cell75.backgroundColor = UIColor(named: "açıkMavi")
                cell76.backgroundColor = UIColor(named: "açıkMavi")
                cell77.backgroundColor = UIColor(named: "açıkMavi")
                cell78.backgroundColor = UIColor(named: "açıkMavi")
                cell79.backgroundColor = UIColor(named: "açıkMavi")
                cell80.backgroundColor = UIColor(named: "açıkMavi")
                cell81.backgroundColor = UIColor(named: "açıkMavi")
         
            default:
                print("error!")
            }
            
        }else{
            switch cell.tag/9 {
            case 0:
                cell1.backgroundColor = UIColor(named: "açıkMavi")
                cell2.backgroundColor = UIColor(named: "açıkMavi")
                cell3.backgroundColor = UIColor(named: "açıkMavi")
                cell4.backgroundColor = UIColor(named: "açıkMavi")
                cell5.backgroundColor = UIColor(named: "açıkMavi")
                cell6.backgroundColor = UIColor(named: "açıkMavi")
                cell7.backgroundColor = UIColor(named: "açıkMavi")
                cell8.backgroundColor = UIColor(named: "açıkMavi")
                cell9.backgroundColor = UIColor(named: "açıkMavi")
            case 1:
                cell10.backgroundColor = UIColor(named: "açıkMavi")
                cell11.backgroundColor = UIColor(named: "açıkMavi")
                cell12.backgroundColor = UIColor(named: "açıkMavi")
                cell13.backgroundColor = UIColor(named: "açıkMavi")
                cell14.backgroundColor = UIColor(named: "açıkMavi")
                cell15.backgroundColor = UIColor(named: "açıkMavi")
                cell16.backgroundColor = UIColor(named: "açıkMavi")
                cell17.backgroundColor = UIColor(named: "açıkMavi")
                cell18.backgroundColor = UIColor(named: "açıkMavi")
            case 2:
                cell19.backgroundColor = UIColor(named: "açıkMavi")
                cell20.backgroundColor = UIColor(named: "açıkMavi")
                cell21.backgroundColor = UIColor(named: "açıkMavi")
                cell22.backgroundColor = UIColor(named: "açıkMavi")
                cell23.backgroundColor = UIColor(named: "açıkMavi")
                cell24.backgroundColor = UIColor(named: "açıkMavi")
                cell25.backgroundColor = UIColor(named: "açıkMavi")
                cell26.backgroundColor = UIColor(named: "açıkMavi")
                cell27.backgroundColor = UIColor(named: "açıkMavi")
            case 3:
                cell28.backgroundColor = UIColor(named: "açıkMavi")
                cell29.backgroundColor = UIColor(named: "açıkMavi")
                cell30.backgroundColor = UIColor(named: "açıkMavi")
                cell31.backgroundColor = UIColor(named: "açıkMavi")
                cell32.backgroundColor = UIColor(named: "açıkMavi")
                cell33.backgroundColor = UIColor(named: "açıkMavi")
                cell34.backgroundColor = UIColor(named: "açıkMavi")
                cell35.backgroundColor = UIColor(named: "açıkMavi")
                cell36.backgroundColor = UIColor(named: "açıkMavi")
            case 4:
                cell37.backgroundColor = UIColor(named: "açıkMavi")
                cell38.backgroundColor = UIColor(named: "açıkMavi")
                cell39.backgroundColor = UIColor(named: "açıkMavi")
                cell40.backgroundColor = UIColor(named: "açıkMavi")
                cell41.backgroundColor = UIColor(named: "açıkMavi")
                cell42.backgroundColor = UIColor(named: "açıkMavi")
                cell43.backgroundColor = UIColor(named: "açıkMavi")
                cell44.backgroundColor = UIColor(named: "açıkMavi")
                cell45.backgroundColor = UIColor(named: "açıkMavi")
            case 5:
                cell46.backgroundColor = UIColor(named: "açıkMavi")
                cell47.backgroundColor = UIColor(named: "açıkMavi")
                cell48.backgroundColor = UIColor(named: "açıkMavi")
                cell49.backgroundColor = UIColor(named: "açıkMavi")
                cell50.backgroundColor = UIColor(named: "açıkMavi")
                cell51.backgroundColor = UIColor(named: "açıkMavi")
                cell52.backgroundColor = UIColor(named: "açıkMavi")
                cell53.backgroundColor = UIColor(named: "açıkMavi")
                cell54.backgroundColor = UIColor(named: "açıkMavi")
            case 6:
                cell55.backgroundColor = UIColor(named: "açıkMavi")
                cell56.backgroundColor = UIColor(named: "açıkMavi")
                cell57.backgroundColor = UIColor(named: "açıkMavi")
                cell58.backgroundColor = UIColor(named: "açıkMavi")
                cell59.backgroundColor = UIColor(named: "açıkMavi")
                cell60.backgroundColor = UIColor(named: "açıkMavi")
                cell61.backgroundColor = UIColor(named: "açıkMavi")
                cell62.backgroundColor = UIColor(named: "açıkMavi")
                cell63.backgroundColor = UIColor(named: "açıkMavi")
            case 7:
                cell64.backgroundColor = UIColor(named: "açıkMavi")
                cell65.backgroundColor = UIColor(named: "açıkMavi")
                cell66.backgroundColor = UIColor(named: "açıkMavi")
                cell67.backgroundColor = UIColor(named: "açıkMavi")
                cell68.backgroundColor = UIColor(named: "açıkMavi")
                cell69.backgroundColor = UIColor(named: "açıkMavi")
                cell70.backgroundColor = UIColor(named: "açıkMavi")
                cell71.backgroundColor = UIColor(named: "açıkMavi")
                cell72.backgroundColor = UIColor(named: "açıkMavi")
            case 8:
                cell73.backgroundColor = UIColor(named: "açıkMavi")
                cell74.backgroundColor = UIColor(named: "açıkMavi")
                cell75.backgroundColor = UIColor(named: "açıkMavi")
                cell76.backgroundColor = UIColor(named: "açıkMavi")
                cell77.backgroundColor = UIColor(named: "açıkMavi")
                cell78.backgroundColor = UIColor(named: "açıkMavi")
                cell79.backgroundColor = UIColor(named: "açıkMavi")
                cell80.backgroundColor = UIColor(named: "açıkMavi")
                cell81.backgroundColor = UIColor(named: "açıkMavi")
            case 9:
                cell73.backgroundColor = UIColor(named: "açıkMavi")
                cell74.backgroundColor = UIColor(named: "açıkMavi")
                cell75.backgroundColor = UIColor(named: "açıkMavi")
                cell76.backgroundColor = UIColor(named: "açıkMavi")
                cell77.backgroundColor = UIColor(named: "açıkMavi")
                cell78.backgroundColor = UIColor(named: "açıkMavi")
                cell79.backgroundColor = UIColor(named: "açıkMavi")
                cell80.backgroundColor = UIColor(named: "açıkMavi")
                cell81.backgroundColor = UIColor(named: "açıkMavi")
                
            default:
                print("error!")
            }
        }
        cell.backgroundColor = UIColor(named: "koyuMavi")
        seçiliButton = cell.tag
    }
    
    
    
    @IBAction func cell1(_ sender: UIButton) {
        resetCellView(cell: sender)
    }
    
    @IBAction func cell2(_ sender: UIButton) {
        resetCellView(cell: sender)
    }
    @IBAction func cell3(_ sender: UIButton) {
        resetCellView(cell: sender)
    }
    @IBAction func cell4(_ sender: UIButton) {
        resetCellView(cell: sender)
    }
    @IBAction func cell5(_ sender: UIButton) {
        resetCellView(cell: sender)
    }
    @IBAction func cell6(_ sender: UIButton) {
        resetCellView(cell: sender)
    }
    @IBAction func cell7(_ sender: UIButton) {
        resetCellView(cell: sender)
    }
    @IBAction func cell8(_ sender: UIButton) {
        resetCellView(cell: sender)
    }
    @IBAction func cell9(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell10(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell11(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell12(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell13(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell14(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell15(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell16(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell17(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell18(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell19(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell20(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell21(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell22(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell23(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell24(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell25(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell26(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell27(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell28(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell29(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell30(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell31(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell32(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell33(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell34(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell35(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell36(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell37(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell38(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell39(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell40(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell41(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell42(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell43(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell44(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell45(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell46(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell47(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell48(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell49(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell50(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell51(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell52(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell53(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell54(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell55(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell56(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell57(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell58(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell59(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell60(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell61(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell62(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell63(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell64(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell65(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell66(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell67(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell68(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell69(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell70(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell71(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell72(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell73(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell74(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell75(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell76(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell77(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell78(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell79(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell80(_ sender: UIButton){
        resetCellView(cell: sender)
    }
    @IBAction func cell81(_ sender: UIButton){
        resetCellView(cell: sender)
    }
   
}



