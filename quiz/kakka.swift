//
//  kakka.swift
//  quiz
//
//  Created by IOSLevel01 on 25/10/19.
//  Copyright © 2019 Sjbit. All rights reserved.
//

import UIKit

class kakka: UIViewController
{
    @IBOutlet weak var Instruction: UILabel!
    
    @IBOutlet weak var Question: UILabel!
    
    @IBOutlet weak var Answer: UITextField!
    
    var gmde = ""
    var dif = 0
    var num = -1
    var i = 0
    var score = 0
    
    //data for the quiz
    

    let nm = ["Hydrogen","Helium","Lithium", "Beryllium", "Boron","Carbon","Nitrogen","Oxygen","Fluorine","Neon","Sodium","Magnesium","Aluminum","Silicon","Phosphorous","Sulpher","Chlorine","Argon","Potassium","Calcium","Scandium","Titanium","Vandium","Chromium","Manganese","Iron","Cobalt","Nickel","Copper","Zinc","Gallium","Germanium","Arsenic","Selenium","Bromine","Krypton","Rubidium","Strontium","Yttrium","Zicronium","Niobium","Molybdenum","Technetium","Ruthenium","Rhodium","Palladium","Silver","Cadium","Indium","Tin","Antimony","Tellurium","Iodine","Xenon","Caesium","Barium","Lanthanum","Cerium","Presodymium","Neodymium","Promethium","Samarium","Europium","Gadalinium","Terbium","Dysprasium","Halmium","Erbium","Thulium","Ytterbium","Lutetium","Hafnium","Tantalum","Tungsten","Rhenium","Osmium","Iridium","Platinum","Gold","Mercury","Thallium","Lead","Bismuth","Polonium","Astatine","Radon","Francium","Radium","Actinum","Thorium","Protactinium","Uranium","Neptumium","Pluromium","Americium","Curium","Berkelium","Califorium","Einstenium","Fermium"]
    let syb = [ "H","He","Li","Be","B","C","N","O","F","Ne","Na","Mg","Al","Si","P","S","Cl","Ar","K","Ca","Sc","Ti","V","Cr","Mn","Fe","Co","Ni","Cu","Zn","Ga","Ge","As","Se","Br","Kr","Rb","Sr","Y","Zi","Nb","Mo","Tc","Ru","Rh","Pd","Ag","Cd","In","Sn","Sb","Te","I","Xe","Cs","Ba","La","Ce","Pr","Nd","Pm","Sm","Eu","Gd","Tb","Dy","Ho","Er","Tm","Yb","Lu","Hf","Ta","W","Re","Os","Ir","Pt","Au","Hg","Ti","Pb","Bi","Po","At","Rn","Fr","Ra","Ac","Th","Pa","U","Np","Pu","Am","Cm","Bk","Cf","Es","Fm"]
    
    var reps = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "segway"
        {
            let destinationVC = segue.destination as! lallan
            destinationVC.score = score
        }
        
        
    }
    
    
    @IBAction func OnSubmit(_ sender: Any)
    {
        if(i<10)
        {
            if(gmde == "atn")
            {
                VerifyAtn()
            }
            if(gmde == "sym")
            {
                VerifySym()
            }
            
            if(gmde == "name")
            {
                VerifyName()
            }
            
            i += 1
            
            if(i == 10)
            {
                self.performSegue(withIdentifier: "segway", sender: self)
            }
           
        }
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
            genquest()
            i += 1
        
    }//viewDidLoad
    
    func genquest()
    {
        num = Int.random(in: 0 ..< dif)
        while (true)
        {
            if (reps[num] == 0)
            {
                reps[num] = 1
                break
            }
            num = Int.random(in: 0 ..< dif)
            
        }//prevent reps
        if(gmde == "atn")
        {
            Instruction.text = "Enter the Atomic number"
            Question.text = nm[num]
        }
        if(gmde == "sym")
        {
            //num = Int.random(in: 0 ..< dif)
            Instruction.text = "Enter the Symbol"
            Question.text = nm[num]
        }
        
        if(gmde == "name")
        {
            //num = Int.random(in: 0 ..< dif)
            Instruction.text = "Enter the Name"
            Question.text = syb[num]
        }
    }
    
    
    //Verify Answers
    
    func VerifyAtn()
    {
        var an = num+1
        if(Answer.text == String (an))
        {
            score += 100
            print("\(score)")
        }
        if(i<10)
        {
            genquest()
        }
    }
    
    func VerifyName()
    {
        if(Answer.text?.lowercased() == nm[num].lowercased())
        {
            score += 100
            print("\(score)")
        }
        if(i<10)
        {
            genquest()
        }
        
    }
    
    func VerifySym()
    {
        if(Answer.text?.lowercased() == syb[num].lowercased())
        {
            score += 100
            print("\(score)")
        }
        if(i<10)
        {
            genquest()
        }
    }
    


}
