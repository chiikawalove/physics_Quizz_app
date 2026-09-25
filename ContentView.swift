import SwiftUI

struct ContentView: View {
    @State private var page = 0
    
    var body: some View {
        NavigationStack {
            if page == 0 {
                VStack(spacing: 20) {
                    Text("物理クイーズ！<3")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .font(.system(size: 40))
                    
                    Text("日常にある物理を探そう！")
                    
                    Button("Start Quizz") {
                        page = 1
                    }
                    
                    NavigationLink("今日の物理💡") {
                        DailyPhysicsView()
                    }
                }
            } else if page == 1 {
                TopView(page: $page)
            }
        }
    }
}
struct TopView: View {
    @Binding var page: Int
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 25) {
                
                Text("何を学びたいかな？")
                    .font(.largeTitle)
                    .bold()
                
                NavigationLink("力学🍎") {
                    MechanicsView(page: $page)
                }
    
                NavigationLink("波🌊") {
                    WavesView(page: $page) 
                }
                
                NavigationLink("熱🌡️") {
                    HeatVeiw(page: $page)
                }
                
                NavigationLink("原子☢️") {
                    AtomicVeiw(page: $page)
                }
                
                NavigationLink("電気💡") {
                    ElectricityVeiw(page: $page)
                }
                
                NavigationLink("その他・融合問題！") {
                    FusionVeiw(page: $page)
                }
            }
            .padding()
        }
    }
}
struct MechanicsView: View {
    @Binding var page: Int
    @AppStorage("mechanicsLevel1Clear") var mechanicsLevel1Clear = false
    @AppStorage("mechanicsLevel2Clear") var mechanicsLevel2Clear = false
    @AppStorage("mechanicsLevel3Clear") var mechanicsLevel3Clear = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 25) {
                
                Text("力学クイズ🍎")
                    .font(.largeTitle)
                    .bold()
                    .font(.system(size: 60))
                
                Text("身近な物理を考えてみよう！")
                    .font(.system(size: 20))
                    .font(.title2)
                
                Text("難易度を選んで！")
                HStack {
                    NavigationLink("Level 1 優しめ") {
                        QuestionView(
                            questions: mechanicsLevel1,
                            clearKey: "mechanicsLevel1Clear",
                            page: $page
                        )
                    }
                    
                    if mechanicsLevel1Clear {
                        Text("✓ CLEAR")
                            .foregroundColor(.green)
                    }
                }
                HStack {
                    NavigationLink("Level 2 ちょっとケチ") {
                        QuestionView(
                            questions: mechanicsLevel2,
                            clearKey: "mechanicsLevel2Clear",
                            page: $page
                        )
                    }
                    
                    if mechanicsLevel2Clear {
                        Text("✓ CLEAR")
                            .foregroundColor(.green)
                    }
                }
                HStack {
                    NavigationLink("Level 3 鬼さん👹") {
                        QuestionView(
                            questions: mechanicsLevel3,
                            clearKey: "mechanicsLevel3Clear",
                            page: $page
                        )
                    }
                    
                    if mechanicsLevel3Clear {
                        Text("✓ CLEAR")
                            .foregroundColor(.green)
                    }
                }
                .padding()
            }
        }
    }
}
struct WavesView: View {
        @Binding var page: Int
        @AppStorage("waveLevel1Clear") var waveLevel1Clear = false
        @AppStorage("waveLevel2Clear") var waveLevel2Clear = false
        @AppStorage("waveLevel3Clear") var waveLevel3Clear = false
        var body: some View {
            NavigationStack {
                VStack(spacing: 25) {
                    
                    Text("波クイズ🌊")
                        .font(.largeTitle)
                        .bold()
                    HStack {
                        NavigationLink("Level 1 優しめ") {
                            QuestionView(
                                questions: waveLevel1,
                                clearKey: "waveLevel1Clear",
                                page: $page
                            )
                        }
                        
                        if waveLevel1Clear {
                            Text("✓ CLEAR")
                                .foregroundColor(.green)
                        }
                    }
                    HStack {
                        NavigationLink("Level 2 ちょっとケチ") {
                            QuestionView(
                                questions: wavesLevel2,
                                clearKey: "waveLevel2Clear",
                                page: $page
                            )
                        }
                        
                        if waveLevel2Clear {
                            Text("✓ CLEAR")
                                .foregroundColor(.green)
                        }
                    }
                    HStack {
                        NavigationLink("Level 3 鬼さん👹") {
                            QuestionView(
                                questions: wavesLevel3,
                                clearKey: "waveLevel3Clear",
                                page: $page
                            )
                        }
                        
                        if waveLevel3Clear {
                            Text("✓ CLEAR")
                                .foregroundColor(.green)
                        }
                    }
                }
            }
        }
}
struct HeatVeiw: View {
        @Binding var page: Int
        @AppStorage("heatLevel1Clear") var heatLevel1Clear = false
        @AppStorage("heatLevel2Clear") var heatLevel2Clear = false
        @AppStorage("heatLevel3Clear") var heatLevel3Clear = false
        var body: some View {
            NavigationStack {
                VStack(spacing: 25) {
                    
                    Text("熱クイズ🌡️")
                        .font(.largeTitle)
                        .bold()
                    HStack {
                        NavigationLink("Level 1 優しめ") {
                            QuestionView(
                                questions: heatLevel1,
                                clearKey: "heatLevel1Clear",
                                page: $page
                            )
                        }
                        
                        if heatLevel1Clear {
                            Text("✓ CLEAR")
                                .foregroundColor(.green)
                        }
                    }
                    HStack {
                        NavigationLink("Level 2 ちょっとケチ") {
                            QuestionView(
                                questions: heatLevel2,
                                clearKey: "heatLevel2Clear",
                                page: $page
                            )
                        }
                        
                        if heatLevel2Clear {
                            Text("✓ CLEAR")
                                .foregroundColor(.green)
                        }
                    }
                    HStack {
                        NavigationLink("Level 3 鬼さん👹") {
                            QuestionView(
                                questions: heatLevel3,
                                clearKey: "heatLevel3Clear",
                                page: $page
                            )
                        }
                        
                        if heatLevel3Clear {
                            Text("✓ CLEAR")
                                .foregroundColor(.green)
                        }
                    }
                }
            }
        }
}
struct AtomicVeiw: View {
    @Binding var page: Int
    @AppStorage("atomicLevel1Clear") var atomicLevel1Clear = false
    @AppStorage("atomicLevel2Clear") var atomicLevel2Clear = false
    @AppStorage("atomicLevel3Clear") var atomicLevel3Clear = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 25) {
                
                Text("原子クイズ☢️")
                    .font(.largeTitle)
                    .bold()
                HStack {
                    NavigationLink("Level 1 優しめ") {
                        QuestionView(
                            questions: atomicLevel1,
                            clearKey: "atomicLevel1Clear",
                            page: $page
                        )
                    }
                    
                    if atomicLevel1Clear {
                        Text("✓ CLEAR")
                            .foregroundColor(.green)
                    }
                }
                HStack {
                    NavigationLink("Level 2 ちょっとケチ") {
                        QuestionView(
                            questions: atomicLevel2,
                            clearKey: "atomicLevel2Clear",
                            page: $page
                        )
                    }
                    
                    if atomicLevel2Clear {
                        Text("✓ CLEAR")
                            .foregroundColor(.green)
                    }
                }
                HStack {
                    NavigationLink("Level 3 鬼さん👹") {
                        QuestionView(
                            questions: atomicLevel3,
                            clearKey: "atomicLevel3Clear",
                            page: $page
                        )
                    }
                    
                    if atomicLevel3Clear {
                        Text("✓ CLEAR")
                            .foregroundColor(.green)
                    }
                }
            }
        }
    }
}
struct ElectricityVeiw: View {
    @Binding var page: Int
    @AppStorage("electricityLevel1Clear") var electricityLevel1Clear = false
    @AppStorage("electricityLevel2Clear") var electricityLevel2Clear = false
    @AppStorage("electricityLevel3Clear") var electricityLevel3Clear = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 25) {
                
                Text("電気クイズ💡")
                    .font(.largeTitle)
                    .bold()
                HStack {
                    NavigationLink("Level 1 優しめ") {
                        QuestionView(
                            questions: electricityLevel1,
                            clearKey: "electricityLevel1Clear",
                            page: $page
                        )
                    }
                    
                    if electricityLevel1Clear {
                        Text("✓ CLEAR")
                            .foregroundColor(.green)
                    }
                }
                HStack {
                    NavigationLink("Level 2 ちょっとケチ") {
                        QuestionView(
                            questions: electricityLevel2,
                            clearKey: "electricityLevel2Clear",
                            page: $page
                        )
                    }
                    
                    if electricityLevel2Clear {
                        Text("✓ CLEAR")
                            .foregroundColor(.green)
                    }
                }
                HStack {
                    NavigationLink("Level 3 鬼さん👹") {
                        QuestionView(
                            questions: electricityLevel3,
                            clearKey: "electricityLevel3Clear",
                            page: $page
                        )
                    }
                    
                    if electricityLevel3Clear {
                        Text("✓ CLEAR")
                            .foregroundColor(.green)
                    }
                }
            }
        }
    }
}
struct FusionVeiw: View {
    @Binding var page: Int
    @AppStorage("fusionLevel1Clear") var fusionLevel1Clear = false
    @AppStorage("fusionLevel2Clear") var fusionLevel2Clear = false
    @AppStorage("fusionLevel3Clear") var fusionLevel3Clear = false
        var body: some View {
            NavigationStack {
                VStack(spacing: 25) {
                    
                    Text("総合・融合問題")
                        .font(.largeTitle)
                        .bold()
                    HStack {
                        NavigationLink("Level 1 優しめ") {
                            QuestionView(
                                questions: fusionLevel1,
                                clearKey: "fusionLevel1Clear",
                                page: $page
                            )
                        }
                        
                        if fusionLevel1Clear {
                            Text("✓ CLEAR")
                                .foregroundColor(.green)
                        }
                    }
                    HStack {
                        NavigationLink("Level 2 ちょっとケチ") {
                            QuestionView(
                                questions: fusionLevel2,
                                clearKey: "fusionLevel2Clear",
                                page: $page
                            )
                        }
                        
                        if fusionLevel2Clear {
                            Text("✓ CLEAR")
                                .foregroundColor(.green)
                        }
                    }
                    HStack {
                        NavigationLink("Level 3 鬼さん👹") {
                            QuestionView(
                                questions: fusionLevel3,
                                clearKey: "fusionLevel3Clear",
                                page: $page
                            )
                        }
                        
                        if fusionLevel3Clear {
                            Text("✓ CLEAR")
                                .foregroundColor(.green)
                        }
                    }
                }
            }
        }
}
struct Question{
        let question: String
        let conditions:[String]
        let choices: [String]
        let correctAnswer: Int
        let explanation: String
    }
    
    /*Level. 1 */
    let mechanicsLevel1 = [
        Question(
            question: "ボールを落とした時、速さはどうなる？",
            conditions: [
                "〜条件〜",
                "そのまま静かに手を離しただけで、落とす時に勢いを加えてないよ（初速度なし）"
            ],
            choices: [
                "だんだん速くなる", // 0
                "だんだん遅くなる", // 1
                "0になる",          // 2
                "変わらない"        // 3
            ],
            correctAnswer: 0,
            explanation: "地球の重力によって、ボールは下向きに加速するため、速さはだんだん大きくなります。"
        ),
        Question(
            question: "ボールをまっすぐ落とした時と、横に転がしながら落としたときとではどっちが早く床につく？",
            conditions:[
                "〜条件〜",
                "・２物体の質量、材質、形は一緒",
                "・下向きの力は加えない",
                "・ボールは空気中で回転を一切しないものとする"
            ],
            choices: [
                "まっすぐ落とした方", // 0
                "横に転がした方", // 1
                "同時",          // 2
                "条件によって変わる"        // 3
            ],
            correctAnswer: 2,
            explanation: "地球の重力による落下運動は、水平方向の運動とはドク立しているため、理想的には同時に床につく"
        )        
    ]
    let waveLevel1 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )
    ]
    let heatLevel1 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
    let atomicLevel1 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
let electricityLevel1 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
    let fusionLevel1 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
    
    /*Level. 2*/
    let mechanicsLevel2 = [
        Question(
            question: "エレベーターが上昇している（上向きに加速）。エレベーターの中で体重計に乗ると、体重計が示す重さは静止している時と比べてどうなる？",        conditions:[
                "〜条件〜",
                "上がっていくスピードは一様であるとする（加速度は一定）"
            ],
            choices:[
                "大きくなる",
                "小さくなる",
                "変わらない",
                "そんなのは知らん"
            ],
            correctAnswer: 0,
            explanation:
                "物体は自分では勝手に動かない上、他から力を加えられてもなかなか動きたがらない怠け者です（慣性の法則）。そのため、エレベーターが加速をしても元の位置に戻りたいと駄々を捏ねて、進む向きとは逆方向に力を加えます（慣性力）。なので、体重計の値は大きくなります。（太ったわけではないよ！）"
            
        ),
        Question(
            question:"エレベーターが下降している（下向きに加速）。エレベーターの中で体重計に乗ると、静止している時と比べ静止している時と比べて、どうなる？",
            conditions:[
                "〜条件〜",
                "上がっていくスピードは一様であるものとする（加速度は一定）。"
            ],
            choices:[
                "大きくなる",
                "小さくなる",
                "変わらない",
                "うーん、、、",
            ],
            correctAnswer: 1,
            explanation:"物体は自分では勝手に動かない上、他から力を加えられてもなかなか動きたがらない怠け者です（慣性の法則）。そのため、エレベーターが加速をしても元の位置に戻りたいと駄々を捏ねて、進む向きとは逆方向に力を加えます（慣性力）。なので、体重計の値は小さくなります。（痩せたたわけではないよ！）"
        )
    ]
    let wavesLevel2 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
let heatLevel2 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
    let atomicLevel2 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
    let electricityLevel2 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
    let fusionLevel2 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
    
    /*Level 3*/
let mechanicsLevel3 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )
    ]
    let wavesLevel3 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )
    ]
        let heatLevel3 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
    let atomicLevel3 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
    let electricityLevel3 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
let fusionLevel3 = [
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        ),
        Question(
            question: "",
            conditions:[
                "",
                "",
                "",
            ],
            choices:[
                "",
                "",
                "",
                "",
            ],
            correctAnswer: 1,
            explanation:""
        )    
    ]
struct QuestionView: View {
        let questions: [Question]
        let clearKey: String
        @Binding var page: Int
        @State private var questionNumber = 0
        @State private var result = ""
        @State private var explanation = ""
        @State private var answered = false
        @Environment(\.dismiss) private var dismiss
        var body: some View {
            VStack {
                Text(questions[questionNumber].question)
                
                ForEach(questions[questionNumber].conditions, id: \.self) { condition in
                    Text("・" + condition)
                }
                ForEach(questions[questionNumber].choices, id: \.self) { choice in
                    Button(choice) {
                        if answered {
                            return
                        }
                        
                        answered = true
                        
                        if choice == questions[questionNumber].choices[
                            questions[questionNumber].correctAnswer
                        ] {
                            result = "正解！"
                        } else {
                            result = "不正解！"
                        }
                        
                        explanation = questions[questionNumber].explanation
                    }
                }
                Text(result)
                Text(explanation)
                Button("Next!") {
                    if questionNumber == questions.count - 1 {
                        UserDefaults.standard.set(true, forKey: clearKey)
                        result = "🎉 Level 1 CLEAR！"
                        explanation = "おつかれさま！Level 1をクリアしました。クイズをやめるを押してください。"
                    } else {
                        questionNumber += 1
                        answered = false
                        result = ""
                        explanation = ""
                    }
                }
                Button("クイズをやめる") {
                    page = 0
                }
            }
        }
    }
struct DailyPhysics {
    let title: String
    let explanation: String
    let category: String
    let imageName: String
}
let dailyPhysics = [
    DailyPhysics(
        title: "ペットボトルに水滴がつくのはなぜ？",
        explanation: "空気中の水蒸気が冷やされて水滴になります。",
        category: "熱",
        imageName: "cop water"
    ),
    
    DailyPhysics(
        title: "夕焼けが赤く見えるのはなぜ？",
        explanation: "光の散乱が関係しています。",
        category: "波",
        imageName: ""
    )
]
struct DailyPhysicsView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("今日の物理💡")
                .font(.largeTitle)
                .bold()
            
            Text(dailyPhysics[0].title)
                .font(.title2)
                .bold()
            
            Text("分野：\(dailyPhysics[0].category)")
            /*Image("Image Asset")
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 250)*/
            Image(dailyPhysics[0].imageName)
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 250)
            
            Text(dailyPhysics[0].explanation)
                .padding()
        }
        .padding()
    }
}

    
      

