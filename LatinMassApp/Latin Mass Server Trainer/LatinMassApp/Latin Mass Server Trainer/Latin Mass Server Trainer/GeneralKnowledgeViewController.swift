//
//  GeneralKnowledgeViewController.swift
//  Latin Mass Server Trainer
//
//  Created by Callum Hubka on 10/8/19.
//  Copyright © 2019 Callum Hubka. All rights reserved.
//

import UIKit

class GeneralKnowledgeViewController: UIViewController {

    //buttons triggering blurView and then respective popups
    @IBAction func showGeneralKnowledge(_ sender: Any) {
        animateIn(desiredView: blurView)
        animateIn(desiredView: generalPopupView)
    }
    @IBAction func showSittingInChoir(_ sender: Any) {
        animateIn(desiredView: blurView)
        animateIn(desiredView: sittingPopupView)
    }
    @IBAction func showDiagram(_ sender: Any) {
        animateIn(desiredView: blurView2)
        animateIn(desiredView: diagramView)
    }
    
    //buttons dismissing respective popups and blur view
    @IBAction func doneGeneral(_ sender: Any) {
        animateOut(desiredView: generalPopupView)
        animateOut(desiredView: blurView)
    }
    @IBAction func doneSitting(_ sender: Any) {
        animateOut(desiredView: sittingPopupView)
        animateOut(desiredView: blurView)
    }
    @IBAction func doneDiagram(_ sender: Any) {
        animateOut(desiredView: diagramView)
        animateOut(desiredView: blurView2)
    }
    
    //connection between popups/blurView and view controller
    @IBOutlet var generalPopupView: UIView!
    @IBOutlet var sittingPopupView: UIView!
    @IBOutlet var blurView: UIVisualEffectView!
    @IBOutlet var diagramView: UIView!
    //required because of layering of views
    @IBOutlet var blurView2: UIVisualEffectView!
    
    //connection to text view so image can be added programmatically
    @IBOutlet var generalTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // create an NSMutableAttributedString that we'll append everything to
        //generally text is handled in the viewController for readability and because images are not added in other popups
        let fullString = NSMutableAttributedString(string: """
There are numerous local variations for serving different Masses. While this is a general instruction, it is not authoritative nor will it account for all local customs and variations.

        Additional optional roles such as Crucifer (server who carries the crucifix for the procession) and Torch Bearer (holds candles during the consecration) are not included in the app owing to their extreme variation between locations and the ease of teaching them to an inexperienced server prior to Mass. If those roles are included, have the servers sit in choir and the MC will teach them their additional roles prior to Mass as directed by the priest.

        It is assumed that the server have a reasonable familiarity with the Latin Mass prior to learning how to serve. If the server does not have any prior knowledge of the Latin Mass from attending it, it is strongly recommended that he find videos of the Latin Mass online so as to be familiar with the general flow of the Mass.

        For ease of explanation, the following positions will be used for describing where to go by “position x” with x being the number referring to the position in the diagram:
""")

        // create our NSTextAttachment
        let image1Attachment = NSTextAttachment()
        image1Attachment.image = UIImage(named: "BigAltar.jpg")
        
        image1Attachment.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.88, height: (self.view.bounds.width * 0.88) * (442/577))
        
        // wrap the attachment in its own attributed string so we can append it
        let image1String = NSAttributedString(attachment: image1Attachment)

        // add the NSTextAttachment wrapper to our full string, then add some more text.
        fullString.append(image1String)
        fullString.append(NSAttributedString(string: """
When kneeling in positions 2-5, unless specifically noted, kneel on the first step.

Basics:

Unless you are holding something, always keep your hands folded (open hands with fingers extended pointing forwards and slightly up with the right thumb crossed over the left thumb).

Always bow at the name of Jesus and the name of the saint whose feast day is being celebrated that day.
When you make a bow it is forwards unless it is for the name of Jesus or the saint of the day in which case you bow towards the crucifix at the center of the altar.

A boat is what incense is stored in, a spoon is the name of what it is used to place incense into the thurible which is the thing where the incense is burned.

In some locations it is customary to always kiss the item and then the priest’s hand when handing him an item. In those same places it is also customary to always kiss the priest’s hand and then the item after he has handed it to you.

Whenever you walk across the line from the center of the altar to the back of the Church, always stop and genuflect (kneel) on your right knee towards the Crucifix on the center of the altar.

When you are carrying only one item, place the item in your right hand and place your left hand over your heart.

Whenever you are not carrying something, you must proceed around the altar at the bottom of the altar steps. When you are carrying something you may ascend or descend the steps diagonally. This rule does not apply to MCs who legitimately exercise free range of movement throughout the sanctuary.

The servers never touch the sacred vessels (Ciborium, Chalice, Monstrance, Priest’s Patten) with their bare hands whether inside or outside of the liturgy.

The Epistle side of the altar is the right side of the altar as it is being faced from the pews (left side as faced by the crucifix).
The Gospel side of the altar is the left side of the altar as it is being faced from the pews (right side as faced by the crucifix).

“In plano” is standing on the floor of the sanctuary as opposed to on the steps.
If you are standing on the Epistle side of the altar you are standing on the front of the altar on the Epistle side in plano.  If you are standing on the Gospel side of the altar you are standing on the front of the altar on the Gospel side in plano.
If you are to stand to the side of the altar itself it will be specifically noted.

During private masses said at side altars, the bells are often omitted.

Set up the altar as the priest has directed you. Light the candles beginning with the inner most candle on the Epistle side proceeding out. After lighting all candles that are to be lit on the Epistle side do in like manner on the Gospel side. Extinguish candles in reverse order.

For a low mass there will be two candles lit.
For a Missa Cantata there will be two or six candles lit as local custom dictates.
For Solemn Mass there will be six candles lit.

Unlike in Germanic languages such as English, there are not clear breaks in-between words in Latin. Thus, if a word ends in “s” and the next word begins in “s” the words may flow together. This does not mean one may be lazy in their pronunciation, but this more fluid approach to words does make them flow off of your tongue better.

There are three kinds of bows:
Simple bows (referred to from here on as “bows”) are only a bow of the head straight ahead.
Profound bows are a larger head bow with the shoulders and upper body moving roughly 1 inch forward in the process and always towards the altar cross.

Generally speaking, when you are the only server for a Mass, you will always kneel/stand on the diagonally opposite side of the altar as the missal unless you are doing something else at that time.

When the missal is on the Epistle side, it is always facing straight towards the front of the altar. When the missal is on the Gospel side, it is always angled towards the center of the altar.

When walking from one location to the next, never walk across the steps at the foot of the altar unless specifically directed (only occurs when carrying something). When going from the side of the altar to the front of the altar (or vice versa) always walk along the base of the steps and make a 90 degree turn when appropriate.

“✚” signifies to do the sign of the cross.
“‡” signifies to strike the breast (left side of chest over your heart) with your open hand.
“P” indicates that the priest is to say these prayers.
“S” indicates that the server is to say these prayers.

Prayers you need to learn:

These are the prayers prayed by the priest and the server. Most prayers prayed by the priest are omitted and only enough are retained to give sufficient context for when the server must say their prayers or do certain things during the Mass. While the server does not need to have the priest’s prayers memorized, the server must be familiar enough with them that he know when to begin his prayers without any pauses or hesitation. While the translations are not included here, it is expected that servers will be familiar with the meanings of what they are praying. Good translations of the prayers can be found in many different missals found at most parishes that have the Latin Mass as well as on various websites online.


Where it is customary, prior to Mass the priest and servers will turn to the crucifix in the sacristy and will say:
P Procedamus in pace
S In nómine Christe. Amen.


P In nómine Patris ✚ et Fíllii, et Spíritus Sancti. Amen.
P Introíbo ad altáre Dei.
S Ad Deum qui lætíficat iuventútem meam.
P Iúdica me, Deus et discérne causam meam de gente non sancta: ab hómine iníquo, et dolóso érue me.
S Quia tu es Deus fortitúdo mea: quare me repulísti, et quare tristis incédo, dum afflígit me inimícus?
P Emítte lucem tuam, et veritátem tuam: ipsa me deduxérunt, et adduxérunt in montem santum tuum et in tabernácula tua.
S Et introíbo ad altáre Dei: ad Deum qui lætíficat iuventútem meam.
P Confitébor tibi in cíthara, Deus, Deus meus: quare tristis es ánima mea, et quare contúrbas me?
S Spera in Deo, quóniam adhunc confitébor illi: salutáre vlutus mei, et Deus meus.
P Glória Patri, et Fílio et Spíritui Sancto.
S Sicut erat in princípio, et nunc, et semper: et in sæcula saeculórum. Amen.
P Introíbo ad altáre Dei.
S Ad Deum qui lætifícat iuventútem meam.
P Adjutórium ✚ nostrum in nómine Dómini.
S Qui fecit cœlum et terram.
P Confítior Deo omnipoténti…oráre pro me ad Dóminum Deum Nostrum.
S Misereátur tui omnípotens Deus, et dimíssis peccátis tuis, perdúcat te ad vitam ætérnam.
P Amen.
    Bow head and upper body low and say.
S Confíteor Deo omnipoténti, beátæ Maríæ semper Virgini, beáto Michaéli Archángelo, beáto Ioánni Baptístæ, sanctis Apóstolis Petro et Paulo, ómnibus Sanctis, (turn toward the priest during these words and then return to bowing straight ahead) et tibi pater: quia peccávi nimis cogitatióne, verbo, et opere: mea culpa ‡ , mea culpa ‡, mea máxima culpa ‡ . Ideo precor beátam Maríam semper Vírginem, beátam Michaélem Archángelum, beátum Iuánnem Baptístam, sanctos Apóstolos Petrum et Paulum, omnes Sanctos, (turn toward the priest during these words and then return to bowing straight ahead) et te pater, oráre pro me ad Dóminum Deum Nostrum.
P Misereátur tu omnípotens … ad vitam ætérnam. Amen
    The bow ends here. Kneel straight up.
P Indulgéntiam, ✚ absolutiónem … et miséricors Dóminus. Amen.
P Deus, (make profound bow) tu convérsus vivificábis nos.
S Et plebs tua lætábitur in te.
P Osténde nobis, Dómine, misericórdiam tuam.
S Et Salutáre tuum da nobis.
P Dómine, exáudi oratiónem meam. S Et clamor meus ad te véniat.
P Dominus vobíscum.
S Et cum spíritu tuo.
    As the priest ascends the stairs, lift the front of his alb so he does not trip on it.
 …
    During the Introit, the servers will make the sign of the cross at the same time as the priest.
    After the Introit the priest returns to the center of the altar.
P Kyrie, eléison.
S Kyrie, eléison.
P Kyrie, eléison.
S Christe, eléison.
P Christe, eléison.
S Christe, eléison.
P Kyrie, eléison.
S Kyrie, eléison.
P Kyrie, eléison.
…
P Glória in excélsis Deo (simple bow) Et in terra pax homínibus bonæ voluntátis. Laudámus te. Benedícimus te. Adorámus te (simple bow). Glorificámus te. Grátias ágimus (simple bow) tibi propter magnam glóriam tuam. Dómine Deus, Rex cæléstis, Deus Pater omnípotens. Dómine Fili unigénite, Iesu Christe (simple bow). Dómine Deus, Agnus Dei, Fílius Patris. Qui tollis peccáta mundi, miserére nobis. Qui tollis peccáta mundi, súcipe (simple bow) deprecatiónem nostram. Qui sedes ad déxteram Patris, miserére nobis. Quóniam tu solus Sanctus. Tu solus Dóminus. Tu solus Altíssimus, Iesu (simple bow) Christe. Cum ✚ Sancto Spíritu, in glória Dei Patris. Amen.
P Dóminus vobíscum.
S Et cum spíritu tuo.
…
    At the end of the first and last (if there is more than one) Collect, the server will respond at the end:
S Amen.
…
    At the end of the Epistle the priest will typically place his left hand on the altar to signal that he is finished and the server will respond.
S Deo grátias.
…
    Just prior to the Gospel the priest begins. The server makes the sign of the cross on his forehead, lips, and heart with his thumb as the priest does it.
P Dóminus vobíscum.
S Et cum spíritu tuo.
P Sequéntia (or Inítium) sancti Evangélii secundum (name of the gospel)
S Glória tibi Domine.
    At the end of the Gospel the server will respond.
S Laus tibi Christe.
…
P Credo (simple bow) in unum Deum. Patrem omnipoténtem, factórem cæli et terræ, visibílium ómnium et invisibílium. Et in unum Dóminum Iesum (simple bow) Christum, Fílium Dei unigénitum. Et ex Patre natum ante ómnia sæcula. Deum de Deo, lumen de lúmine, Deum verum de Deo vero. Génitum, non factum, consubstantiálem Patri: per quem ómnia facta sunt. Qui propter not hómines et prompter nostram salútem descéndit de cælis. (Genuflect) Et incarnätus est de Spíritu Sancto ex María Vírgine: Et homo factus est. (Rise) Crucifíxus étiam pro nobis: sub Póntio Piläto passus, et sepúlctus est. Et resurréxit tértia die, secúndum Scriptúras. Et ascéndit in cælum: sedet ad déxteram Patris. Et íterum ventúrus est cum glória iudicáre vivos et mórtuos: cuius regni non erit finis. Et in Spíritum Sanctum, Dóminum et vivificántem: qui ex Patre, Filióque procédit. Qui cum Patre, et Fílio simul (simple bow) adorátur, et conglorificátur: qui locútus est per Prophétas. Et unam sanctam cathólicam et apostólicam Ecclesiam. Confiteor unum baptísma in remisiónem peccatórum. Et expécto resurrectiónem mortuórum. Et vitam ✚ ventúrri sæculi. Amen.
P Dóminus vobíscum.
S Et cum spíritu tuo.
…
P Oráte, fratres: ut meum ac vestrum sacrifīcium acceptäbile fiat apud Deum Patrem omnipoténtem.
S Sucípiat Dóminus sacrifícium de mánibus tuis (if the server is the only person other than the priest at Mass “meis”) ad laudem, et glóriam nóminis sui, ad utilitátem quoque nostram, totiúsque Ecclésiæ suæ sanctæ.
…
P Per ómnia sæcula sæculórum.
S Amen.
P Dóminus vobíscum.
S Et cum spíritu tuo.
P Sursum corda.
S Habémus ad Dóminum.
P Grátias agámus Dómino Deo nostro.
S Dignum et iustum est.
…
P Sanctus, Sanctus, Sanctus Dóminus Deus Sábaoth. Pleni sunt cæli et terra glória tua. Hosánna in excélsis. Benedictus ✚ qui venit in nómine Dómini. Hosánna in excélsis.
…
P Per ómnia sæcula sæculórum.
S Amen.
P Orémus: Præcéptis salutáribus móniti, et divína institutióne formáti, audémus dícere: Pater noster, qui es in cális: Sanctificétur nomen tuum: Advéniat regnum tuum: Fiat volúntas tua, sicut in cälo, et in terra. Panem nostrum cotidiánum da nobis hódie: Et dimítte nobis débita nostra, sicut et nos demíttimus debitóribus nostris. Et ne nos indúcas in tentatiónem.
S Sed líbera nos a malo.
…
P Per ómnia sæcula sæculórum.
S Amen
…
P Agnus Dei, qui tollis peccáta mundi: miserére nobis ‡. Agnus Dei, qui tollis peccáta mundi: miserére nobis ‡ . Agnus Dei, qui tollis peccáta mundi: dona nobis pacem ‡ .
…
P Ecce Agnus Dei, ecce qui tollit peccáta mundi.
P Dómine ‡ non sum dignus, ut intres sub tectum meaum: sed tantum dic verbo, et sanábitur ánima mea. Dómine ‡ non sum dignus, ut intres sub tectum meaum: sed tantum dic verbo, et sanábitur ánima mea. Dómine ‡ non sum dignus, ut intres sub tectum meaum: sed tantum dic verbo, et sanábitur ánima mea.
…
P Dóminus vobíscum.
S Et cum spíritu tuo.
P Orémus.
    At the end of the Post Communion:
S Amen.
P Dóminus vobíscum.
S Et cum spíritu tuo.
P Ite, missa est (or on some occasions): Benedicámus Dómino.
S Deo grátias.
P Benedícat vos omnípotens Deus, Pater ✚ , et Fílius, et Spíritus Sanctus.
S Amen.
P Dóminus vobíscrum.
S Et cum spíritu tuo.
P Inítium sancti Evangélii secúndum Ioánnem.
S Glória tibi, Dómine.
P In princípio erat … neque ex voluntáte carnis, neque ex voluntáte viri, sed ex Deo nati sunt (Genuflect) Et Verbum caro factum est (Rise), et habitávit in nobis: et vídimus glóriam eius, glóriam quasi Unigéniti a Patre, plenum grátiæ et veritátis.
S Deo grátias.
    After processing out the priest will typically turn to the servers:
P Procit.
    Kneel.
S Per ómnibus et síngulis.
P Benedíctio ... ✚ … Amen.
"""))
        //full set of text that will appear in generalPopup
        generalTextView.attributedText = fullString
        generalTextView.font = UIFont(name: "Papyrus", size: 18)
        
        //sets blurview to be entire page when called for popups
        blurView.bounds = self.view.bounds
        //second blurview so you don't eliminate the blur view when dismissing the diagram popup
        blurView2.bounds = self.view.bounds
        //sets sizes of popups
        generalPopupView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.9)
        sittingPopupView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.9)
        diagramView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: (self.view.bounds.width * 0.9) * (442/577))
    }
    
//function that manages animateIn for popups
func animateIn(desiredView: UIView) {
    let backgroundView = self.view! //needs to be within viewController, cannot place in another file and imported in
    
    backgroundView.addSubview(desiredView)
    
    //starts larger and invisible and fades in while shrinking to scale
    desiredView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
    desiredView.alpha = 0
    desiredView.center = backgroundView.center
    
    UIView.animate(withDuration: 0.3, animations: {
        desiredView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        desiredView.alpha = 1
    })
}
//function that manages animateOut for popups
func animateOut(desiredView: UIView) {
    UIView.animate(withDuration: 0.3, animations: { desiredView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        desiredView.alpha = 0
    }, completion: { _ in
        desiredView.removeFromSuperview()
    })
}

}
