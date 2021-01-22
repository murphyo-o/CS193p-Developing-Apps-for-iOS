# CS193p-Developing-Apps-for-iOS
 
> [Stanford's CS193p course - Developing Applications for iOS](https://cs193p.sites.stanford.edu/), explains the fundamentals of how to build applications for iPhone and iPad using SwiftUI. Here's homework assignments of this course.
<br>

## Completion Status
| __HOMEWORK__ | __COMPLETION__ | __TASKS__ | __DISPLAYS__ |
| :-: | :-: | :-: | :-: | 
| __Memorize Game__ | 90% | - Shuffle the cards.☑️<br>- Arrange the cards in a grid view.☑️<br>- UI should be work in portrait or landscape on any iOS device.<br>- Support at least 6 different themes in the game. Example themes: animals, sports, faces.<br>- Count the scores.<br>- To animate the time counter pie in the cards.☑️ | |
| __Set Game__ | 40% | - Review the rules of the Game Set.☑️<br>- Make the game start animation flying effect.<br>- Make it a solo game ( one player ).☑️<br>- To make the squiggle shape and striped pattern, and make them view modifiers.☑️<br>- Grid view to arrange nicely and make cards stay the same aspect.☑️<br>- Support “deselection” by touching already-selected cards (but only if there are 1 or 2 cards (not 3) currently selected).<br>- Make the selection effect.☑️<br>- Be careful to test "end game".<br>- To find out the sets.☑️<br>- Mark down the right set histories.☑️  | |
<br>


## Memos

- `didSet` and `willSet`

    `didSet`  to execute code when a property has just been set.  `willSet`  to execute code before a property has been set.
<br>


## Catalog
| __Lecture__ | __Contents__ | __Videos__ | __Others__ |
| :-: | :-: | :-: | :-: | 
| __Lecture 1__ | __Course Logistics and Intro to SwiftUI__ | - [Intro](https://youtu.be/jbtqIBpUG7g) | [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/l1.pdf) |
| __Lecture 2__ | __MVVM and the Swift Type System__ | - [MVVM](https://youtu.be/4GjXq2Sr55Q?t=40) <br> - [struct vs class](https://youtu.be/4GjXq2Sr55Q?t=1205)<br>  - [Copy on write](https://youtu.be/4GjXq2Sr55Q?t=1248)<br> - [Generics](https://youtu.be/4GjXq2Sr55Q?t=1730)<br> - [Functions as Types](https://youtu.be/4GjXq2Sr55Q?t=1971) | [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/l2.pdf)<br> [Reading 1](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/r1.pdf)<br> [Assignment 1](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/a1.pdf) |
| __Lecture 3__ | __Reactive UI Protocols Layout__ | - [Protocols](https://youtu.be/SIYdYpPXil4?t=2065)<br> - [Protocols and Generics](https://youtu.be/SIYdYpPXil4?t=2694)<br> - [Layout](https://youtu.be/SIYdYpPXil4?t=3176)<br> - [GeometryReader](https://youtu.be/SIYdYpPXil4?t=4207) | [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/l3_0.pdf) |
| __Lecture 4__ | __Grid enum Optionals__ | - [@esacping](https://www.youtube.com/watch?v=eHEeWzFP6O4&feature=youtu.be&t=515)<br> - [enum](https://youtu.be/eHEeWzFP6O4?t=1973)<br> - [Optional](https://youtu.be/eHEeWzFP6O4?t=2453)<br> - [Equatable](https://youtu.be/eHEeWzFP6O4?t=3808) | [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/l4.pdf)<br> [Reading 2](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/r2_0.pdf)<br> [Assignment 2](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/a2_0.pdf)  |
| __Lecture 5__ | __ViewBuilder Shape ViewModifier__ | - [private(set)](https://youtu.be/oDKDGCRdSHc?t=282)<br> - [@ViewBuilder](https://youtu.be/oDKDGCRdSHc?t=725)<br> - [Shape](https://youtu.be/oDKDGCRdSHc?t=1226)<br> - [ViewModifier](https://youtu.be/oDKDGCRdSHc?t=2555) | [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/lecture_5.pdf) |
| __Lecture 6__ | __Animation__ | - [Property Observer](https://youtu.be/3krC2c56ceQ?t=43)<br> - [@State](https://youtu.be/3krC2c56ceQ?t=119)<br> - [Implicit("automatic") Animation](https://youtu.be/3krC2c56ceQ?t=716)<br> - [Explicit Animation](https://youtu.be/3krC2c56ceQ?t=1048)<br> - [Explicit Animation Demo](https://youtu.be/3krC2c56ceQ?t=3055)<br> - [Transitions](https://youtu.be/3krC2c56ceQ?t=1253)<br> - [AnimatableModifier](https://youtu.be/3krC2c56ceQ?t=3856) | [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/lecture_6.pdf)<br> [Reading 3](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/reading_3.pdf)<br> [Assignment 3](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/assignment_3.pdf) |
| __Lecture 7__ | __Multithreading EmojiArt__ | - [Multithreading](https://youtu.be/tmx-OwkBWxA?t=378)<br> - [Threads & Queues](https://youtu.be/tmx-OwkBWxA?t=474)<br> - [GCD](https://youtu.be/tmx-OwkBWxA?t=716)<br> - [fileprivate](https://youtu.be/tmx-OwkBWxA?t=2822) | [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/lecture_7_0.pdf) |
| __Lecture 8__ | __Gestures JSON__ | - [UserDefaults](https://youtu.be/mz-rNLWJ0bk?t=175)<br> - [Gestures](https://youtu.be/mz-rNLWJ0bk?t=526)<br> - [Discrete Gestures](https://youtu.be/mz-rNLWJ0bk?t=694)<br>  - [Non-Discrete Gestures](https://youtu.be/mz-rNLWJ0bk?t=757)<br> - [User Defaults won't write to disk right away](https://youtu.be/mz-rNLWJ0bk?t=2397)<br> - [inout gesture state](https://youtu.be/mz-rNLWJ0bk?t=3906) | [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/lecture_8.pdf)<br> [Assignment 4](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/a4_0.pdf)<br> [Assignment 5](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/assignment_5.pdf) |
| __Lecture 9__ | __Data Flow__ | - [Property Wrappers](https://youtu.be/0i152oA3T3s?t=60)<br> - [@State](https://youtu.be/0i152oA3T3s?t=376)<br> - [@ObservedObject](https://youtu.be/0i152oA3T3s?t=443)<br> - [@Binding](https://youtu.be/0i152oA3T3s?t=492)<br> - [@EnvironmentObject](https://youtu.be/0i152oA3T3s?t=746)<br> - [@Environment](https://youtu.be/0i152oA3T3s?t=934)<br> - [@Publisher](https://youtu.be/0i152oA3T3s?t=1108)<br> - [.sink{}/AnyCancellable](https://youtu.be/0i152oA3T3s?t=2212)<br> - [.onReceive{}](https://youtu.be/0i152oA3T3s?t=2570)<br> - [Publisher + URLSession(dataTaskPublisher)](https://youtu.be/0i152oA3T3s?t=2698) | [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/l9_0.pdf) |
| __Lecture 10__ | __Modal Presentation and Navigation__ | -   [Initialize @State var in initializer](https://youtu.be/CKexGQuIO7E?t=213)<br> -   [Share viewmodel via @EnviromentObject](https://youtu.be/CKexGQuIO7E?t=1011)<br> -   [Form](https://youtu.be/CKexGQuIO7E?t=1648)<br> -   [KeyPath](https://youtu.be/CKexGQuIO7E?t=2005)<br> -   [Hashable/Equatable/Identifiable](https://youtu.be/CKexGQuIO7E?t=3278)<br> -   [@EnvironmentObject](https://youtu.be/CKexGQuIO7E?t=3728)<br> -   [List](https://youtu.be/CKexGQuIO7E?t=3830)<br> -   [Inject EnvironmentObject](https://youtu.be/CKexGQuIO7E?t=3861)<br> -   [Navigation Link](https://youtu.be/CKexGQuIO7E?t=4033)<br> -   [Alert](https://youtu.be/CKexGQuIO7E?t=4785)<br> -   [Swipe to Delete](https://youtu.be/CKexGQuIO7E?t=5331)<br> -   [Edit Mode](https://youtu.be/CKexGQuIO7E?t=5467)<br> -   [Set environment](https://youtu.be/CKexGQuIO7E?t=5663)<br> -   [.zIndex()](https://youtu.be/CKexGQuIO7E?t=6102)| [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/l10.pdf)<br> [Assignment 6](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/a6.pdf) |
| __Lecture 11__ | __Enroute Picker__ |-   [Init a @Binding var(using \_var)](https://youtu.be/fCfC6m7XUew?t=1558)<br>-   [Init @State with wrappedValue](https://youtu.be/fCfC6m7XUew?t=1770)<br>-   [Picker](https://youtu.be/fCfC6m7XUew?t=1861)<br>-   [Picker in Form](https://youtu.be/fCfC6m7XUew?t=2155)<br>-   [Picker and .tag()](https://youtu.be/fCfC6m7XUew?t=2680)<br>-   [Toggle in Form](https://youtu.be/fCfC6m7XUew?t=2904)| [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/l11.pdf) |
| __Lecture 12__ | __Core Data__ | - [Core Data Features](https://youtu.be/yOhyOpXvaec?t=265)<br>-   [SwiftUI Integration](https://youtu.be/yOhyOpXvaec?t=304)<br>-   [Read/Write data](https://youtu.be/yOhyOpXvaec?t=737)<br>-   [@FetchRequest](https://youtu.be/yOhyOpXvaec?t=1009)<br>-   [Build Objects Graph in Core Data](https://youtu.be/yOhyOpXvaec?t=1610)<br>-   [Fetch/Create Object](https://youtu.be/yOhyOpXvaec?t=2361)<br>-   [NSPredicate](https://youtu.be/yOhyOpXvaec?t=2442)<br>-   [NSSortDescriptor](https://youtu.be/yOhyOpXvaec?t=2521)<br>-   [Deal with NSSet of one to many relationship](https://youtu.be/yOhyOpXvaec?t=3255)<br>-   [Deal with non-optional value](https://youtu.be/yOhyOpXvaec?t=3499)<br>-   [@FetchRequest demo](https://youtu.be/yOhyOpXvaec?t=3762)<br>-   [Init @FetchRequest](https://youtu.be/yOhyOpXvaec?t=3926)<br>-   [TRUEPREDICATE](https://youtu.be/yOhyOpXvaec?t=4884)<br>-   [Crash Error: Context in environment is not connected to a persistent store coordinator](https://youtu.be/yOhyOpXvaec?t=5160)<br>-   [Build a programmatic NSPredicate](https://youtu.be/yOhyOpXvaec?t=5406)| [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/l12.pdf) |
| __Lecture 13__ | __Persistence__ |-   [Persistence Overview](https://youtu.be/fTNPRhGGP-0?t=112)<br>-   [Cloud Kit](https://youtu.be/fTNPRhGGP-0?t=332)<br>-   [Create a record in Cloud Kit](https://youtu.be/fTNPRhGGP-0?t=840)<br>-   [Query for records](https://youtu.be/fTNPRhGGP-0?t=1173)<br>-   [File System](https://youtu.be/fTNPRhGGP-0?t=1319)<br>-   [Sandbox](https://youtu.be/fTNPRhGGP-0?t=1452)<br>-   [File Manager](https://youtu.be/fTNPRhGGP-0?t=1610)| [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/l13.pdf) |
| __Lecture 14__ | __UIKit Integration__ | [Video](https://youtu.be/GRX5Dha_Clw)| [Slides](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/l14.pdf) |


