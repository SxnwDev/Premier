-- game variables
local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()
local char = player.Character
-- Library variables
local library = {
	Name = "Premier X",
	IsLoaded = false,
	data = {},
	end_funcs = {},
	Icons = {
		["activity"] = "rbxassetid://7733655755",
		["add"] = "rbxassetid://3944675151",
		["add-circle"] = "rbxassetid://3605017115",
		["AED"] = "rbxassetid://4370336019",
		["airplane"] = "rbxassetid://4483363527",
		["airplay"] = "rbxassetid://7733655834",
		["alarm-check"] = "rbxassetid://7733655912",
		["alarm-clock"] = "rbxassetid://7733656100",
		["alarm-clock-off"] = "rbxassetid://7733656003",
		["alarm-minus"] = "rbxassetid://7733656164",
		["alarm-plus"] = "rbxassetid://7733658066",
		["album"] = "rbxassetid://7733658133",
		["album-2"] = "rbxassetid://4400695581",
		["alert"] = "rbxassetid://4370336704",
		["alert-circle"] = "rbxassetid://7733658271",
		["alert-octagon"] = "rbxassetid://7733658335",
		["alert-triangle"] = "rbxassetid://7733658504",
		["align-center"] = "rbxassetid://7733909776",
		["align-justify"] = "rbxassetid://7733661326",
		["align-left"] = "rbxassetid://7733911357",
		["align-right"] = "rbxassetid://7733663582",
		["anchor"] = "rbxassetid://7733911490",
		["android"] = "rbxassetid://3944664684",
		["android-head"] = "rbxassetid://4450736564",
		["aperture"] = "rbxassetid://7733666258",
		["apps"] = "rbxassetid://4483364237",
		["archive"] = "rbxassetid://7733911621",
		["arrow-big-down"] = "rbxassetid://7733668653",
		["arrow-big-left"] = "rbxassetid://7733911731",
		["arrow-big-right"] = "rbxassetid://7733671493",
		["arrow-big-up"] = "rbxassetid://7733671663",
		["arrow-down"] = "rbxassetid://7733672933",
		["arrow-down-circle"] = "rbxassetid://7733671763",
		["arrow-down-left"] = "rbxassetid://7733672282",
		["arrow-down-right"] = "rbxassetid://7733672831",
		["arrow-left"] = "rbxassetid://7733673136",
		["arrow-left-circle"] = "rbxassetid://7733673056",
		["arrow-right"] = "rbxassetid://7733673345",
		["arrow-right-circle"] = "rbxassetid://7733673229",
		["arrow-up"] = "rbxassetid://7733673717",
		["arrow-up-circle"] = "rbxassetid://7733673466",
		["arrow-up-left"] = "rbxassetid://7733673539",
		["arrow-up-right"] = "rbxassetid://7733673646",
		["asterisk"] = "rbxassetid://7733673800",
		["at-sign"] = "rbxassetid://7733673907",
		["attachment"] = "rbxassetid://4483345278",
		["award"] = "rbxassetid://7733673987",
		["axe"] = "rbxassetid://7733674079",
		["back"] = "rbxassetid://4370337241",
		["backspace"] = "rbxassetid://4483345463",
		["backup"] = "rbxassetid://4335477481",
		["backup-restore"] = "rbxassetid://4400696294",
		["banknote"] = "rbxassetid://7733674153",
		["bar-chart"] = "rbxassetid://7733674319",
		["bar-chart-2"] = "rbxassetid://7733674239",
		["barcode"] = "rbxassetid://4384394779",
		["battery"] = "rbxassetid://7733674820",
		["battery-charging"] = "rbxassetid://7733674402",
		["battery-full"] = "rbxassetid://7733674503",
		["battery-low"] = "rbxassetid://7733674589",
		["battery-medium"] = "rbxassetid://7733674731",
		["beaker"] = "rbxassetid://7733674922",
		["bell"] = "rbxassetid://7733911828",
		["bell-minus"] = "rbxassetid://7733675028",
		["bell-off"] = "rbxassetid://7733675107",
		["bell-plus"] = "rbxassetid://7733675181",
		["bell-ring"] = "rbxassetid://7733675275",
		["bike"] = "rbxassetid://7733678330",
		["binary"] = "rbxassetid://7733678388",
		["block"] = "rbxassetid://3944675664",
		["bluetooth"] = "rbxassetid://7733687147",
		["bluetooth-connected"] = "rbxassetid://7734110952",
		["bluetooth-off"] = "rbxassetid://7733914252",
		["bluetooth-searching"] = "rbxassetid://7733914320",
		["blur"] = "rbxassetid://4400696929",
		["blur-linear"] = "rbxassetid://4400698359",
		["blur-off"] = "rbxassetid://4400697855",
		["blur-radial"] = "rbxassetid://4400698963",
		["book"] = "rbxassetid://7733914390",
		["book-2"] = "rbxassetid://4330060040",
		["book-open"] = "rbxassetid://7733687281",
		["bookmark"] = "rbxassetid://7733692043",
		["bookmark-2"] = "rbxassetid://3605522284",
		["bookmark-minus"] = "rbxassetid://7733689754",
		["bookmark-plus"] = "rbxassetid://7734111084",
		["border-all"] = "rbxassetid://4483364408",
		["bot"] = "rbxassetid://7733916988",
		["box"] = "rbxassetid://7733917120",
		["box-select"] = "rbxassetid://7733696665",
		["briefcase"] = "rbxassetid://7733919017",
		["brush"] = "rbxassetid://7733701455",
		["bug"] = "rbxassetid://7733701545",
		["building"] = "rbxassetid://7733701625",
		["bus"] = "rbxassetid://7733701715",
		["calculator"] = "rbxassetid://7733919105",
		["calendar"] = "rbxassetid://7733919198",
		["camera"] = "rbxassetid://7733708692",
		["camera-off"] = "rbxassetid://7733919260",
		["cancel"] = "rbxassetid://4400699701",
		["candle"] = "rbxassetid://4483345607",
		["car"] = "rbxassetid://7733708835",
		["cast"] = "rbxassetid://7733919326",
		["CD"] = "rbxassetid://7734110220",
		["cellphone"] = "rbxassetid://4384403999",
		["charging"] = "rbxassetid://4370338095",
		["check"] = "rbxassetid://7733715400",
		["check-circle"] = "rbxassetid://7733919427",
		["check-circle-2"] = "rbxassetid://7733710700",
		["check-square"] = "rbxassetid://7733919526",
		["chevron-down"] = "rbxassetid://7733717447",
		["chevron-left"] = "rbxassetid://7733717651",
		["chevron-right"] = "rbxassetid://7733717755",
		["chevron-up"] = "rbxassetid://7733919605",
		["chevrons-down"] = "rbxassetid://7733720604",
		["chevrons-down-up"] = "rbxassetid://7733720483",
		["chevrons-left"] = "rbxassetid://7733720701",
		["chevrons-right"] = "rbxassetid://7733919682",
		["chevrons-up"] = "rbxassetid://7733723433",
		["chevrons-up-down"] = "rbxassetid://7733723321",
		["chrome"] = "rbxassetid://7733919783",
		["circle"] = "rbxassetid://7733919881",
		["clear"] = "rbxassetid://3944676352",
		["clipboard"] = "rbxassetid://7733734762",
		["clipboard-check"] = "rbxassetid://7733919947",
		["clipboard-list"] = "rbxassetid://7733920117",
		["clipboard-x"] = "rbxassetid://7733734668",
		["clock"] = "rbxassetid://7733734848",
		["cloud"] = "rbxassetid://7733746980",
		["cloud-2"] = "rbxassetid://4384402413",
		["cloud-alert"] = "rbxassetid://4384402990",
		["cloud-check"] = "rbxassetid://4384403532",
		["cloud-drizzle"] = "rbxassetid://7733920226",
		["cloud-fog"] = "rbxassetid://7733920317",
		["cloud-hail"] = "rbxassetid://7733920444",
		["cloud-lightning"] = "rbxassetid://7733741741",
		["cloud-moon"] = "rbxassetid://7733920519",
		["cloud-off"] = "rbxassetid://7733745572",
		["cloud-rain"] = "rbxassetid://7733746651",
		["cloud-rain-wind"] = "rbxassetid://7733746456",
		["cloud-snow"] = "rbxassetid://7733746798",
		["cloud-sun"] = "rbxassetid://7733746880",
		["clover"] = "rbxassetid://7733747233",
		["code"] = "rbxassetid://7733749837",
		["code-2"] = "rbxassetid://7733920644",
		["codepen"] = "rbxassetid://7733920768",
		["codesandbox"] = "rbxassetid://7733752575",
		["coffee"] = "rbxassetid://7733752630",
		["cogs"] = "rbxassetid://4483345737",
		["coins"] = "rbxassetid://7743866529",
		["coins-2"] = "rbxassetid://4483345875",
		["columns"] = "rbxassetid://7733757178",
		["command"] = "rbxassetid://7733924046",
		["commute"] = "rbxassetid://4335478275",
		["compare"] = "rbxassetid://4483363084",
		["compass"] = "rbxassetid://7733924216",
		["contact"] = "rbxassetid://7743866666",
		["contacts"] = "rbxassetid://4384401919",
		["contrast"] = "rbxassetid://7733764005",
		["copy"] = "rbxassetid://7733764083",
		["copyleft"] = "rbxassetid://7733764196",
		["copyright"] = "rbxassetid://7733764275",
		["copyright-2"] = "rbxassetid://3944676934",
		["corner-down-left"] = "rbxassetid://7733764327",
		["corner-down-right"] = "rbxassetid://7733764385",
		["corner-left-down"] = "rbxassetid://7733764448",
		["corner-left-up"] = "rbxassetid://7733764536",
		["corner-right-down"] = "rbxassetid://7733764605",
		["corner-right-up"] = "rbxassetid://7733764680",
		["corner-up-left"] = "rbxassetid://7733764800",
		["corner-up-right"] = "rbxassetid://7733764915",
		["cpu"] = "rbxassetid://7733765045",
		["create"] = "rbxassetid://3944677737",
		["creation"] = "rbxassetid://4483362748",
		["crop"] = "rbxassetid://7733765140",
		["cross"] = "rbxassetid://7733765224",
		["crosshair"] = "rbxassetid://7733765307",
		["crosshairs"] = "rbxassetid://4483345998",
		["crown"] = "rbxassetid://7733765398",
		["cube-scan"] = "rbxassetid://4483362458",
		["currency"] = "rbxassetid://7733765592",
		["database"] = "rbxassetid://7743866778",
		["delete"] = "rbxassetid://7733768142",
		["delete-2"] = "rbxassetid://4483361337",
		["delete-outline"] = "rbxassetid://4483362299",
		["delta"] = "rbxassetid://4400700924",
		["diskette"] = "rbxassetid://7072729672",
		["divide"] = "rbxassetid://7733769365",
		["divide-circle"] = "rbxassetid://7733769152",
		["divide-square"] = "rbxassetid://7733769261",
		["dollar-sign"] = "rbxassetid://7733770599",
		["dollar-sign-2"] = "rbxassetid://4400700509",
		["done"] = "rbxassetid://3944680095",
		["dots-horizontal"] = "rbxassetid://4384401360",
		["download"] = "rbxassetid://7733770755",
		["download-cloud"] = "rbxassetid://7733770689",
		["dribbble"] = "rbxassetid://7733770843",
		["droplet"] = "rbxassetid://7733770982",
		["droplets"] = "rbxassetid://7733771078",
		["edit"] = "rbxassetid://7733771472",
		["edit-2"] = "rbxassetid://7733771217",
		["edit-3"] = "rbxassetid://7733771361",
		["edit-4"] = "rbxassetid://4370186570",
		["electricity"] = "rbxassetid://7733771628",
		["electricity-off"] = "rbxassetid://7733771563",
		["equal"] = "rbxassetid://7733771811",
		["equal-not"] = "rbxassetid://7733771726",
		["equalizer"] = "rbxassetid://4384400812",
		["error"] = "rbxassetid://3944669799",
		["euro"] = "rbxassetid://7733771891",
		["expand"] = "rbxassetid://7733771982",
		["explore"] = "rbxassetid://4335479121",
		["explore-off"] = "rbxassetid://4335479658",
		["export"] = "rbxassetid://4400701343",
		["extension"] = "rbxassetid://4335480353",
		["external-link"] = "rbxassetid://7743866903",
		["eye"] = "rbxassetid://7733774602",
		["eye-off"] = "rbxassetid://7733774495",
		["face"] = "rbxassetid://4335480896",
		["face-id"] = "rbxassetid://4370335364",
		["fast-forward"] = "rbxassetid://7743867090",
		["favorite"] = "rbxassetid://4370033185",
		["favorite-border"] = "rbxassetid://4335482118",
		["feather"] = "rbxassetid://7733777166",
		["figma"] = "rbxassetid://7743867310",
		["file"] = "rbxassetid://7733793319",
		["file-check"] = "rbxassetid://7733779668",
		["file-check-2"] = "rbxassetid://7733779610",
		["file-code"] = "rbxassetid://7733779730",
		["file-digit"] = "rbxassetid://7733935829",
		["file-input"] = "rbxassetid://7733935917",
		["file-minus"] = "rbxassetid://7733936115",
		["file-minus-2"] = "rbxassetid://7733936010",
		["file-output"] = "rbxassetid://7733788742",
		["file-plus"] = "rbxassetid://7733788885",
		["file-plus-2"] = "rbxassetid://7733788816",
		["file-search"] = "rbxassetid://7733788966",
		["file-text"] = "rbxassetid://7733789088",
		["file-x"] = "rbxassetid://7733938136",
		["file-x-2"] = "rbxassetid://7743867554",
		["files"] = "rbxassetid://7743867811",
		["film"] = "rbxassetid://7733942579",
		["filter"] = "rbxassetid://7733798407",
		["filter_sort"] = "rbxassetid://4370342507",
		["fingerprint"] = "rbxassetid://3944703587",
		["flag"] = "rbxassetid://7733798691",
		["flag-2"] = "rbxassetid://3944688398",
		["flag-triangle-left"] = "rbxassetid://7733798509",
		["flag-triangle-right"] = "rbxassetid://7733798634",
		["flame"] = "rbxassetid://7733798747",
		["flashlight"] = "rbxassetid://7733798851",
		["flashlight-off"] = "rbxassetid://7733798799",
		["flask-conical"] = "rbxassetid://7733798901",
		["flask-round"] = "rbxassetid://7733798957",
		["flower"] = "rbxassetid://4483346149",
		["folder"] = "rbxassetid://7733799185",
		["folder-minus"] = "rbxassetid://7733799022",
		["folder-plus"] = "rbxassetid://7733799092",
		["forest"] = "rbxassetid://4370343755",
		["form-input"] = "rbxassetid://7733799275",
		["forward"] = "rbxassetid://7733799371",
		["framer"] = "rbxassetid://7733799486",
		["frown"] = "rbxassetid://7733799591",
		["function-square"] = "rbxassetid://7733799682",
		["gamepad"] = "rbxassetid://7733799901",
		["gamepad-2"] = "rbxassetid://7733799795",
		["gamepad-3"] = "rbxassetid://4384396122",
		["gamepad-circle"] = "rbxassetid://4384396714",
		["gauge"] = "rbxassetid://7733799969",
		["gavel"] = "rbxassetid://7733800044",
		["gem"] = "rbxassetid://7733942651",
		["ghost"] = "rbxassetid://7743868000",
		["GIF"] = "rbxassetid://3610246221",
		["gift"] = "rbxassetid://7733946818",
		["gift-2"] = "rbxassetid://4370344279",
		["gift-card"] = "rbxassetid://7733945018",
		["git-branch"] = "rbxassetid://7733949149",
		["git-branch-plus"] = "rbxassetid://7743868200",
		["git-commit"] = "rbxassetid://7743868360",
		["git-merge"] = "rbxassetid://7733952195",
		["git-pull-request"] = "rbxassetid://7733952287",
		["github"] = "rbxassetid://7733954058",
		["gitlab"] = "rbxassetid://7733954246",
		["glasses"] = "rbxassetid://7733954403",
		["globe"] = "rbxassetid://7733954760",
		["globe-2"] = "rbxassetid://7733954611",
		["globe-3"] = "rbxassetid://4370344717",
		["grab"] = "rbxassetid://7733954884",
		["grade"] = "rbxassetid://4335482575",
		["graduation-cap"] = "rbxassetid://7733955058",
		["grid"] = "rbxassetid://7733955179",
		["grip-horizontal"] = "rbxassetid://7733955302",
		["grip-vertical"] = "rbxassetid://7733955410",
		["hammer"] = "rbxassetid://7733955511",
		["hand"] = "rbxassetid://7733955740",
		["hand-metal"] = "rbxassetid://7733955664",
		["hard-drive"] = "rbxassetid://7733955793",
		["hard-hat"] = "rbxassetid://7733955850",
		["hash"] = "rbxassetid://7733955906",
		["haze"] = "rbxassetid://7733955969",
		["headphones"] = "rbxassetid://7733956063",
		["heart"] = "rbxassetid://7733956134",
		["heart-pulse"] = "rbxassetid://4483346354",
		["help-circle"] = "rbxassetid://7733956210",
		["hexagon"] = "rbxassetid://7743868527",
		["highlighter"] = "rbxassetid://7743868648",
		["history"] = "rbxassetid://7733960880",
		["home"] = "rbxassetid://7733960981",
		["home-2"] = "rbxassetid://4370345144",
		["http"] = "rbxassetid://3610248649",
		["image"] = "rbxassetid://7733964126",
		["image-minus"] = "rbxassetid://7733963797",
		["image-off"] = "rbxassetid://7733963907",
		["image-plus"] = "rbxassetid://7733964016",
		["import"] = "rbxassetid://7733964240",
		["inbox"] = "rbxassetid://7733964370",
		["indent"] = "rbxassetid://7733964452",
		["indian-rupee"] = "rbxassetid://7733964536",
		["infinity"] = "rbxassetid://7733964640",
		["infinity-2"] = "rbxassetid://4370345701",
		["info"] = "rbxassetid://7733964719",
		["inspect"] = "rbxassetid://7733964808",
		["italic"] = "rbxassetid://7733964917",
		["jersey-pound"] = "rbxassetid://7733965029",
		["key"] = "rbxassetid://7733965118",
		["king"] = "rbxassetid://4370316039",
		["knight"] = "rbxassetid://4370316596",
		["landmark"] = "rbxassetid://7733965184",
		["language"] = "rbxassetid://3610245066",
		["languages"] = "rbxassetid://7733965249",
		["laptop"] = "rbxassetid://7733965386",
		["laptop-2"] = "rbxassetid://7733965313",
		["lasso"] = "rbxassetid://7733967892",
		["lasso-select"] = "rbxassetid://7743868832",
		["layers"] = "rbxassetid://7743868936",
		["layers-2"] = "rbxassetid://4384400106",
		["layout"] = "rbxassetid://7733970543",
		["layout-dashboard"] = "rbxassetid://7733970318",
		["layout-grid"] = "rbxassetid://7733970390",
		["layout-list"] = "rbxassetid://7733970442",
		["layout-template"] = "rbxassetid://7733970494",
		["library"] = "rbxassetid://7743869054",
		["life-buoy"] = "rbxassetid://7733973479",
		["lightbulb"] = "rbxassetid://7733975185",
		["lightbulb-off"] = "rbxassetid://7733975123",
		["link"] = "rbxassetid://7733978098",
		["link-2"] = "rbxassetid://7743869163",
		["link-2-off"] = "rbxassetid://7733975283",
		["link-3"] = "rbxassetid://4503342956",
		["link-off"] = "rbxassetid://3944689656",
		["list"] = "rbxassetid://7743869612",
		["list-checks"] = "rbxassetid://7743869317",
		["list-minus"] = "rbxassetid://7733980795",
		["list-ordered"] = "rbxassetid://7743869411",
		["list-plus"] = "rbxassetid://7733984995",
		["list-x"] = "rbxassetid://7743869517",
		["loader"] = "rbxassetid://7733992358",
		["loader-2"] = "rbxassetid://7733989869",
		["locate"] = "rbxassetid://7733992469",
		["locate-fixed"] = "rbxassetid://7733992424",
		["lock"] = "rbxassetid://7733992528",
		["lock-2"] = "rbxassetid://3610239960",
		["lock-open"] = "rbxassetid://3610242099",
		["log-in"] = "rbxassetid://7733992604",
		["log-out"] = "rbxassetid://7733992677",
		["mail"] = "rbxassetid://7733992732",
		["map"] = "rbxassetid://7733992829",
		["map-pin"] = "rbxassetid://7733992789",
		["maximize"] = "rbxassetid://7733992982",
		["maximize-2"] = "rbxassetid://7733992901",
		["megaphone"] = "rbxassetid://7733993049",
		["meh"] = "rbxassetid://7733993147",
		["memory"] = "rbxassetid://4384394237",
		["menu"] = "rbxassetid://7733993211",
		["menu-2"] = "rbxassetid://4370318685",
		["menu-four"] = "rbxassetid://4370319235",
		["message-circle"] = "rbxassetid://7733993311",
		["message-square"] = "rbxassetid://7733993369",
		["mic"] = "rbxassetid://7743869805",
		["mic-off"] = "rbxassetid://7743869714",
		["minimize"] = "rbxassetid://7733997941",
		["minimize-2"] = "rbxassetid://7733997870",
		["minus"] = "rbxassetid://7734000129",
		["minus-circle"] = "rbxassetid://7733998053",
		["minus-square"] = "rbxassetid://7743869899",
		["monitor"] = "rbxassetid://7734002839",
		["monitor-off"] = "rbxassetid://7734000184",
		["monitor-speaker"] = "rbxassetid://7743869988",
		["moon"] = "rbxassetid://7743870134",
		["more-horizontal"] = "rbxassetid://7734006080",
		["more-vertical"] = "rbxassetid://7734006187",
		["mountain"] = "rbxassetid://7734008868",
		["mountain-snow"] = "rbxassetid://7743870286",
		["mouse-pointer"] = "rbxassetid://7743870392",
		["mouse-pointer-2"] = "rbxassetid://7734010405",
		["mouse-pointer-click"] = "rbxassetid://7734010488",
		["move"] = "rbxassetid://7743870731",
		["move-diagonal"] = "rbxassetid://7743870505",
		["move-diagonal-2"] = "rbxassetid://7734013178",
		["move-horizontal"] = "rbxassetid://7734016210",
		["move-vertical"] = "rbxassetid://7743870608",
		["music"] = "rbxassetid://7734020554",
		["navigation"] = "rbxassetid://7734020989",
		["navigation-2"] = "rbxassetid://7734020942",
		["network"] = "rbxassetid://7734021047",
		["notification"] = "rbxassetid://3944670656",
		["octagon"] = "rbxassetid://7734021165",
		["on-charge"] = "rbxassetid://7734021231",
		["online"] = "rbxassetid://4370317928",
		["opacity"] = "rbxassetid://4335483334",
		["option"] = "rbxassetid://7734021300",
		["outdent"] = "rbxassetid://7734021384",
		["package"] = "rbxassetid://7734021469",
		["paint"] = "rbxassetid://4384393547",
		["palette"] = "rbxassetid://7734021595",
		["palette-2"] = "rbxassetid://4335483762",
		["palette-swatch"] = "rbxassetid://4400704299",
		["palm-scan"] = "rbxassetid://4370334869",
		["paperclip"] = "rbxassetid://7734021680",
		["pause"] = "rbxassetid://7734021897",
		["pause-circle"] = "rbxassetid://7734021767",
		["pause-octagon"] = "rbxassetid://7734021827",
		["pen-tool"] = "rbxassetid://7734022041",
		["pencil"] = "rbxassetid://7734022107",
		["percent"] = "rbxassetid://7743870852",
		["person-standing"] = "rbxassetid://7743871002",
		["pets"] = "rbxassetid://3610237052",
		["phone"] = "rbxassetid://7734032056",
		["phone-2"] = "rbxassetid://4506892591",
		["phone-call"] = "rbxassetid://7734027264",
		["phone-forwarded"] = "rbxassetid://7734027345",
		["phone-incoming"] = "rbxassetid://7743871120",
		["phone-missed"] = "rbxassetid://7734029465",
		["phone-off"] = "rbxassetid://7734029534",
		["phone-outgoing"] = "rbxassetid://7743871253",
		["photo-camera"] = "rbxassetid://4335484343",
		["pie-chart"] = "rbxassetid://7734034378",
		["piggy-bank"] = "rbxassetid://7734034513",
		["pin"] = "rbxassetid://4384392959",
		["pipette"] = "rbxassetid://7743871384",
		["plane"] = "rbxassetid://7734037723",
		["play"] = "rbxassetid://7743871480",
		["play-circle"] = "rbxassetid://7734037784",
		["plus"] = "rbxassetid://7734042071",
		["plus-circle"] = "rbxassetid://7734040271",
		["plus-square"] = "rbxassetid://7734040369",
		["pocket"] = "rbxassetid://7734042139",
		["podcast"] = "rbxassetid://7734042234",
		["pointer"] = "rbxassetid://7734042307",
		["pound-sterling"] = "rbxassetid://7734042354",
		["power"] = "rbxassetid://7734042493",
		["power-off"] = "rbxassetid://7734042423",
		["print"] = "rbxassetid://4377193226",
		["printer"] = "rbxassetid://7734042580",
		["qr-code"] = "rbxassetid://7743871575",
		["QRcode-scan"] = "rbxassetid://4384395384",
		["quote"] = "rbxassetid://7734045100",
		["radar"] = "rbxassetid://4384392464",
		["radio"] = "rbxassetid://7743871662",
		["radio-2"] = "rbxassetid://4370305054",
		["radio-receiver"] = "rbxassetid://7734045155",
		["radio-tower"] = "rbxassetid://4370305588",
		["redo"] = "rbxassetid://7743871739",
		["redo-2"] = "rbxassetid://3944702361",
		["refresh"] = "rbxassetid://4335476290",
		["refresh-ccw"] = "rbxassetid://7734050715",
		["refresh-cw"] = "rbxassetid://7734051052",
		["regex"] = "rbxassetid://7734051188",
		["remove"] = "rbxassetid://4370317406",
		["repeat"] = "rbxassetid://7734051454",
		["repeat-1"] = "rbxassetid://7734051342",
		["reply"] = "rbxassetid://7734051594",
		["reply-2"] = "rbxassetid://3944691398",
		["reply-all"] = "rbxassetid://7734051524",
		["reply-all-2"] = "rbxassetid://3944691867",
		["restart"] = "rbxassetid://4370306254",
		["rewind"] = "rbxassetid://7734051670",
		["rhombus"] = "rbxassetid://4384405947",
		["rocking-chair"] = "rbxassetid://7734051769",
		["rotate-90"] = "rbxassetid://4384406773",
		["rotate-ccw"] = "rbxassetid://7734051861",
		["rotate-cw"] = "rbxassetid://7734051957",
		["rss"] = "rbxassetid://7734052075",
		["ruler"] = "rbxassetid://7734052157",
		["russian-ruble"] = "rbxassetid://7734052248",
		["save"] = "rbxassetid://7734052335",
		["scale"] = "rbxassetid://7734052454",
		["schedule"] = "rbxassetid://4335484884",
		["scissors"] = "rbxassetid://7734052570",
		["screen-share"] = "rbxassetid://7734052814",
		["screen-share-off"] = "rbxassetid://7734052653",
		["search"] = "rbxassetid://7734052925",
		["search-2"] = "rbxassetid://3605509925",
		["send"] = "rbxassetid://7734053039",
		["send-2"] = "rbxassetid://3944690667",
		["separator-horizontal"] = "rbxassetid://7734053146",
		["separator-vertical"] = "rbxassetid://7734053213",
		["server"] = "rbxassetid://7734053426",
		["server-crash"] = "rbxassetid://7734053281",
		["server-off"] = "rbxassetid://7734053361",
		["settings"] = "rbxassetid://7734053495",
		["settings-2"] = "rbxassetid://3605022185",
		["share"] = "rbxassetid://7734053697",
		["share-2"] = "rbxassetid://7734053595",
		["sheet"] = "rbxassetid://7743871876",
		["shield"] = "rbxassetid://7734056608",
		["shield-alert"] = "rbxassetid://7734056326",
		["shield-check"] = "rbxassetid://7734056411",
		["shield-close"] = "rbxassetid://7734056470",
		["shield-off"] = "rbxassetid://7734056540",
		["shirt"] = "rbxassetid://7734056672",
		["shopping-bag"] = "rbxassetid://7734056747",
		["shopping-cart"] = "rbxassetid://7734056813",
		["shovel"] = "rbxassetid://7734056878",
		["shrink"] = "rbxassetid://7734056971",
		["shuffle"] = "rbxassetid://7734057059",
		["sidebar"] = "rbxassetid://7734058260",
		["sidebar-close"] = "rbxassetid://7734058092",
		["sidebar-open"] = "rbxassetid://7734058165",
		["sigma"] = "rbxassetid://7734058345",
		["skip-back"] = "rbxassetid://7734058404",
		["skip-forward"] = "rbxassetid://7734058495",
		["skip-next"] = "rbxassetid://4384407160",
		["skip-previous"] = "rbxassetid://4384407582",
		["skull"] = "rbxassetid://7734058599",
		["slack"] = "rbxassetid://7072722471",
		["slash"] = "rbxassetid://7072722603",
		["sliders"] = "rbxassetid://7734058803",
		["smartphone"] = "rbxassetid://7734058979",
		["smartphone-charging"] = "rbxassetid://7734058894",
		["smile"] = "rbxassetid://7734059095",
		["snowflake"] = "rbxassetid://7734059180",
		["snowflake-2"] = "rbxassetid://4384392025",
		["sort"] = "rbxassetid://3944704135",
		["sort-asc"] = "rbxassetid://7734060715",
		["sort-desc"] = "rbxassetid://7743871973",
		["speaker"] = "rbxassetid://7734063416",
		["speech"] = "rbxassetid://4370313618",
		["sprout"] = "rbxassetid://7743872071",
		["square"] = "rbxassetid://7743872181",
		["stack"] = "rbxassetid://4370346095",
		["star"] = "rbxassetid://7734068321",
		["star-half"] = "rbxassetid://7734068258",
		["stop-circle"] = "rbxassetid://7734068379",
		["strikethrough"] = "rbxassetid://7734068425",
		["sun"] = "rbxassetid://7734068495",
		["sunrise"] = "rbxassetid://7743872365",
		["sunset"] = "rbxassetid://7734070982",
		["swiss-franc"] = "rbxassetid://7734071038",
		["switch"] = "rbxassetid://4400702457",
		["switch-camera"] = "rbxassetid://7743872492",
		["switch-off"] = "rbxassetid://4400702947",
		["synchronize"] = "rbxassetid://4370226511",
		["table"] = "rbxassetid://7734073253",
		["tablet"] = "rbxassetid://7743872620",
		["tag"] = "rbxassetid://7734075797",
		["target"] = "rbxassetid://7743872758",
		["taxi"] = "rbxassetid://4506892784",
		["tent"] = "rbxassetid://7734078943",
		["terminal"] = "rbxassetid://7743872929",
		["terminal-square"] = "rbxassetid://7734079055",
		["texture"] = "rbxassetid://4335485422",
		["thermometer"] = "rbxassetid://7734084149",
		["thermometer-snowflake"] = "rbxassetid://7743873074",
		["thermometer-sun"] = "rbxassetid://7734084018",
		["thumbs-down"] = "rbxassetid://7734084236",
		["thumbs-up"] = "rbxassetid://7743873212",
		["ticket"] = "rbxassetid://7734086558",
		["timer"] = "rbxassetid://7743873443",
		["timer-2"] = "rbxassetid://4335485957",
		["timer-off"] = "rbxassetid://4335486524",
		["timer-reset"] = "rbxassetid://7743873336",
		["toggle-left"] = "rbxassetid://7734091286",
		["toggle-right"] = "rbxassetid://7743873539",
		["tonality"] = "rbxassetid://4335487169",
		["tool"] = "rbxassetid://7072723685",
		["tornado"] = "rbxassetid://7743873633",
		["transform"] = "rbxassetid://4335487866",
		["translate"] = "rbxassetid://4335488543",
		["trash"] = "rbxassetid://7743873871",
		["trash-2"] = "rbxassetid://7743873772",
		["trello"] = "rbxassetid://7743873996",
		["trend-down"] = "rbxassetid://3944704985",
		["trend-flat"] = "rbxassetid://3944705374",
		["trend-up"] = "rbxassetid://3944705939",
		["trending-down"] = "rbxassetid://7743874143",
		["trending-up"] = "rbxassetid://7743874262",
		["triangle"] = "rbxassetid://7743874367",
		["truck"] = "rbxassetid://7743874482",
		["tune"] = "rbxassetid://4335489011",
		["tv"] = "rbxassetid://7743874674",
		["tv-2"] = "rbxassetid://7743874599",
		["type"] = "rbxassetid://7743874740",
		["typing"] = "rbxassetid://4370314188",
		["umbrella"] = "rbxassetid://7743874820",
		["underline"] = "rbxassetid://7743874904",
		["undo"] = "rbxassetid://7743874974",
		["undo-2"] = "rbxassetid://3944702835",
		["unfold-less"] = "rbxassetid://4400703447",
		["unfold-more"] = "rbxassetid://4400703888",
		["unlink"] = "rbxassetid://7743875149",
		["unlink-2"] = "rbxassetid://7743875069",
		["unlock"] = "rbxassetid://7743875263",
		["upgrade"] = "rbxassetid://4370346582",
		["upload"] = "rbxassetid://7743875428",
		["upload-cloud"] = "rbxassetid://7743875358",
		["user"] = "rbxassetid://7743875962",
		["user-check"] = "rbxassetid://7743875503",
		["user-minus"] = "rbxassetid://7743875629",
		["user-plus"] = "rbxassetid://7743875759",
		["user-x"] = "rbxassetid://7743875879",
		["users"] = "rbxassetid://7743876054",
		["verified"] = "rbxassetid://7743876142",
		["verified-user"] = "rbxassetid://4335489513",
		["vibrate"] = "rbxassetid://7743876302",
		["video"] = "rbxassetid://7743876610",
		["video-off"] = "rbxassetid://7743876466",
		["view"] = "rbxassetid://7743876754",
		["visibility"] = "rbxassetid://3610254229",
		["visibility-off"] = "rbxassetid://3610254425",
		["voicemail"] = "rbxassetid://7743876916",
		["volume"] = "rbxassetid://7743877487",
		["volume-1"] = "rbxassetid://7743877081",
		["volume-2"] = "rbxassetid://7743877250",
		["volume-x"] = "rbxassetid://7743877381",
		["vote"] = "rbxassetid://4400704837",
		["wallet"] = "rbxassetid://7743877573",
		["warning"] = "rbxassetid://3944668821",
		["watch"] = "rbxassetid://7743877668",
		["watch-2"] = "rbxassetid://4384391488",
		["webcam"] = "rbxassetid://7743877896",
		["wet"] = "rbxassetid://4370347078",
		["wifi"] = "rbxassetid://7743878148",
		["wifi-off"] = "rbxassetid://7743878056",
		["wind"] = "rbxassetid://7743878264",
		["wrench"] = "rbxassetid://7743878358",
		["x"] = "rbxassetid://7743878857",
		["x-circle"] = "rbxassetid://7743878496",
		["x-octagon"] = "rbxassetid://7743878618",
		["x-square"] = "rbxassetid://7743878737",
		["zoom-in"] = "rbxassetid://7743878977",
		["zoom-in-2"] = "rbxassetid://3610253578",
		["zoom-out"] = "rbxassetid://7743879082",
		["zoom-out-2"] = "rbxassetid://3610253853",
	},
	Settings = {
		NewUser = true,
		theme = {
			Background = Color3.fromRGB(14, 17, 24),
			Contrast = Color3.fromRGB(22, 27, 33),
			DarkContrast = Color3.fromRGB(0, 3, 12),
			LightContrast = Color3.fromRGB(160, 160, 160),
			TextColor = Color3.fromRGB(255, 255, 255),
			Accent = Color3.fromRGB(239, 35, 35),
		},
		Games = {},
	},
	Functions = {},
	Signal = {},
}
library.Settings.fileName = library.Name .. "_Settings.txt"
local page = {}
local section = {}
local objects = {}
local connections = {}
local binds = {}
local InstancesOpacity = {}
local checkboxGroups = {}

for i, _ in pairs(library.Settings.theme) do
	if not objects[tostring(i)] then
		objects[tostring(i)] = {}
	end

	if not objects[tostring(i)]["BackgroundColor3"] then
		objects[tostring(i)]["BackgroundColor3"] = {}
	end
	if not objects[tostring(i)]["TextColor3"] then
		objects[tostring(i)]["TextColor3"] = {}
	end
	if not objects[tostring(i)]["ImageColor3"] then
		objects[tostring(i)]["ImageColor3"] = {}
	end
end
-- Functions
do
	function library.Functions.mergeTable(t1: table, t2: table): table
		for i, v in pairs(t2) do
			t1[i] = v
		end
		return t1
	end
	function library.Functions.findByIndex(t: table, value)
		for i, v in pairs(t) do
			if tostring(i):lower() == value:lower() then
				return v
			end
		end
	end
	function library.Functions.findValue(t: table, value)
		for i, v in pairs(t) do
			if v == value then
				return i
			end
		end
	end
	function library.Functions.colorToHex(color: Color3): string
		local int = math.floor(color.r * 255) * 256 ^ 2 + math.floor(color.g * 255) * 256 + math.floor(color.b * 255)
		local current = int
		local final = ""
		local hexChar = {
			"A",
			"B",
			"C",
			"D",
			"E",
			"F",
		}
		repeat
			local remainder = current % 16
			local char = tostring(remainder)
			if remainder >= 10 then
				char = hexChar[1 + remainder - 10]
			end
			current = math.floor(current / 16)
			final = final .. char
		until current <= 0
		return "#" .. string.reverse(final)
	end
	function library.Functions.randomIcon(): string
		local t = {}
		for i, v in pairs(library.Icons) do
			table.insert(t, i)
		end
		return library.Icons[t[math.random(1, #t)]]
	end
	function library.Functions.Tween(instance: Instance, properties, duration: number, ...): Tween
		local Tween = game:GetService("TweenService"):Create(instance, TweenInfo.new(duration, ...), properties)
		Tween:Play()
		return Tween
	end
	function library.Functions.newInstance(className: string, properties: table, children: table): Instance
		local object = Instance.new(className)
		for i, v in pairs(properties or {}) do
			object[i] = v
			if typeof(v) == "Color3" then
				local theme = library.Functions:findValue(library.Settings.theme, v)
				if theme then
					objects[theme] = objects[theme] or {}
					objects[theme][i] = objects[theme][i] or setmetatable({}, { _mode = "k" })
					table.insert(objects[theme][i], object)
				end
			end
		end
		for i, module in pairs(children or {}) do
			module.Parent = object
		end
		return object
	end
	function library.Functions.Ripple(instance: Instance, duration: number)
		local Ripple = library.Functions.newInstance("Frame", {
			Parent = instance,
			BackgroundColor3 = library.Settings.theme.TextColor,
			BackgroundTransparency = 0.8,
			ZIndex = 10,
		}, {
			library.Functions.newInstance("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		})
		Ripple.Position = UDim2.new(0, mouse.X - Ripple.AbsolutePosition.X, 0, mouse.Y - Ripple.AbsolutePosition.Y)
		local Size = instance.AbsoluteSize.X
		instance.ClipsDescendants = true
		local Tween = library.Functions.Tween(Ripple, {
			Position = UDim2.fromScale(
				math.clamp(mouse.X - instance.AbsolutePosition.X, 0, instance.AbsoluteSize.X) / instance.AbsoluteSize.X,
				instance,
				math.clamp(mouse.Y - instance.AbsolutePosition.Y, 0, instance.AbsoluteSize.Y) / instance.AbsoluteSize.Y
			) - UDim2.fromOffset(Size / 2, Size / 2),
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(Size, Size),
		}, duration or 0)
		Tween.Completed:connect(function()
			Ripple:Destroy()
		end)
		return Tween
	end
	function library.Functions.Pop(instance: Instance, shrink: number, duration: number)
		if instance:FindFirstChildOfClass("UIListLayout") or instance:FindFirstChildOfClass("UIGridLayout") then
			return
		end
		local clone = instance:Clone()
		clone.AnchorPoint = Vector2.new(0.5, 0.5)
		clone.Size = clone.Size - UDim2.new(0, shrink, 0, shrink)
		clone.Position = UDim2.new(0.5, 0, 0.5, 0)
		clone.Parent = instance
		for i, v in pairs(clone:getChildren()) do
			if v.ClassName ~= "UICorner" then
				v:Destroy()
			end
		end
		library.Functions.Tween(clone, { Size = instance.Size }, duration or 0.2)
		task.spawn(function()
			task.wait(duration or 0.2)
			clone:Destroy()
		end)
		return clone
	end
	function library.Functions.TextEffect(TextLabel: Instance, delay: number)
		TextLabel.Visible = true
		local displayText = TextLabel.Text
		displayText = displayText:gsub("<br%s*/>", "\n")
		displayText:gsub("<[^<>]->", "")
		local index = 0
		for i, v in utf8.graphemes(displayText) do
			index = index + 1
			TextLabel.MaxVisibleGraphemes = index
			task.wait(delay)
		end
	end
	function library.Functions.GetTextSize(Text: string, TextSize: number, Font: EnumItem): Vector2
		return game
			:GetService("TextService")
			:GetTextSize(Text:gsub("<[^<>]->", ""), TextSize, Font, Vector2.new(math.huge, TextSize))
	end
	function library.Functions.DraggingEnabled(instance: Instance, parent: Instance)
		parent = parent or instance
		instance.InputBegan:Connect(function(input, processed)
			if library.DraggingDisable then return end
			if not processed and input.UserInputType == Enum.UserInputType.MouseButton1 then
				local mousePos, framePos = input.Position, parent.Position
				repeat
					task.wait()
					local delta = Vector2.new(mouse.X - mousePos.X, mouse.Y - mousePos.Y)
					library.Functions.Tween(
						parent,
						{
							Position = UDim2.new(
								framePos.X.Scale,
								framePos.X.Offset + delta.X,
								framePos.Y.Scale,
								framePos.Y.Offset + delta.Y
							),
						},
						0.1
					)
				until not game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
			end
		end)
	end
	function library.Functions.DraggingEnded(callback)
		table.insert(library.Functions.ended, callback)
	end
	function library.Functions.InitializeKeybind()
		library.Functions.keybinds = {}
		library.Functions.ended = {}
		game:GetService("UserInputService").InputBegan:Connect(function(key, proc)
			if library.Functions.keybinds[key.KeyCode] and not proc then
				for i, bind in pairs(library.Functions.keybinds[key.KeyCode]) do
					bind()
				end
			end
		end)
		game:GetService("UserInputService").InputEnded:Connect(function(key)
			if key.UserInputType == Enum.UserInputType.MouseButton1 then
				for i, callback in pairs(library.Functions.ended) do
					callback()
				end
			end
		end)
	end
	function library.Functions.BindToKey(key, callback)
		library.Functions.keybinds[key] = library.Functions.keybinds[key] or {}
		table.insert(library.Functions.keybinds[key], callback)
		return {
			UnBind = function()
				for i, bind in pairs(library.Functions.keybinds[key]) do
					if bind == callback then
						table.remove(library.Functions.keybinds[key], i)
					end
				end
			end,
		}
	end
	function library.Functions.KeyPressed()
		local key = game:GetService("UserInputService").InputBegan:Wait()
		while key.UserInputType ~= Enum.UserInputType.Keyboard do
			key = game:GetService("UserInputService").InputBegan:Wait()
		end
		task.wait()
		return key
	end
	function library.Functions.hideInstance(instance: Instance, duration: number)
		if not InstancesOpacity[instance] then
			InstancesOpacity[instance] = {}
		end
		pcall(function()
			if not InstancesOpacity[instance].ScrollBarImageTransparency then
				InstancesOpacity[instance].ScrollBarImageTransparency = instance.ScrollBarImageTransparency
			end
			library.Functions.Tween(instance, { ScrollBarImageTransparency = 1 }, ((instance.ScrollBarImageTransparency)/duration) or 0)
		end)
		pcall(function()
			if not InstancesOpacity[instance].BackgroundTransparency then
				InstancesOpacity[instance].BackgroundTransparency = instance.BackgroundTransparency
			end
			library.Functions.Tween(instance, { BackgroundTransparency = 1 }, (instance.BackgroundTransparency/duration) or 0)
		end)
		pcall(function()
			if not InstancesOpacity[instance].TextTransparency then
				InstancesOpacity[instance].TextTransparency = instance.TextTransparency
			end
			library.Functions.Tween(instance, { TextTransparency = 1 }, (instance.TextTransparency/duration) or 0)
		end)
		pcall(function()
			if not InstancesOpacity[instance].ImageTransparency then
				InstancesOpacity[instance].ImageTransparency = instance.ImageTransparency
			end
			library.Functions.Tween(instance, { ImageTransparency = 1 }, (instance.ImageTransparency/duration) or 0)
		end)
		task.spawn(function()
			task.wait(duration or 0)
			pcall(function()
				instance.Visible = false
			end)
		end)
		for i, v in pairs(instance:GetDescendants()) do
			if not InstancesOpacity[v] then
				InstancesOpacity[v] = {}
			end
			pcall(function()
				if not InstancesOpacity[v].ScrollBarImageTransparency then
					InstancesOpacity[v].ScrollBarImageTransparency = v.ScrollBarImageTransparency
				end
				library.Functions.Tween(v, { ScrollBarImageTransparency = 1 }, ((v.ScrollBarImageTransparency)/duration) or 0)
			end)
			pcall(function()
				if not InstancesOpacity[v].BackgroundTransparency then
					InstancesOpacity[v].BackgroundTransparency = v.BackgroundTransparency
				end
				library.Functions.Tween(v, { BackgroundTransparency = 1 }, (v.BackgroundTransparency/duration) or 0)
			end)
			pcall(function()
				if not InstancesOpacity[v].TextTransparency then
					InstancesOpacity[v].TextTransparency = v.TextTransparency
				end
				library.Functions.Tween(v, { TextTransparency = 1 }, (v.TextTransparency/duration) or 0)
			end)
			pcall(function()
				if not InstancesOpacity[v].ImageTransparency then
					InstancesOpacity[v].ImageTransparency = v.ImageTransparency
				end
				library.Functions.Tween(v, { ImageTransparency = 1 }, (v.ImageTransparency/duration) or 0)
			end)
		end
	end
	function library.Functions.showInstance(instance: Instance, duration: number)
		pcall(function()
			instance.Visible = true
			task.wait()
		end)
		pcall(function()
			library.Functions.Tween(instance, {
				ScrollBarImageTransparency = InstancesOpacity[instance].ScrollBarImageTransparency
					or instance.ScrollBarImageTransparency,
			}, (((InstancesOpacity[instance].ScrollBarImageTransparency or instance.ScrollBarImageTransparency))/duration) or 0)
		end)
		pcall(function()
			library.Functions.Tween(instance, {
				BackgroundTransparency = InstancesOpacity[instance].BackgroundTransparency
					or instance.BackgroundTransparency,
			}, (((InstancesOpacity[instance].BackgroundTransparency or instance.BackgroundTransparency))/duration) or 0)
		end)
		pcall(function()
			library.Functions.Tween(
				instance,
				{ TextTransparency = InstancesOpacity[instance].TextTransparency or instance.TextTransparency },
				(((InstancesOpacity[instance].TextTransparency or instance.TextTransparency))/duration) or 0
			)
		end)
		pcall(function()
			library.Functions.Tween(
				instance,
				{ ImageTransparency = InstancesOpacity[instance].ImageTransparency or instance.ImageTransparency },
				(((InstancesOpacity[instance].ImageTransparency or instance.ImageTransparency))/duration) or 0
			)
		end)
		if InstancesOpacity[instance] then
			InstancesOpacity[instance] = nil
		end
		for i, v in pairs(instance:GetDescendants()) do
			pcall(function()
				library.Functions.Tween(
					v,
					{ ScrollBarImageTransparency = InstancesOpacity[v].ScrollBarImageTransparency or v.ScrollBarImageTransparency },
					(((InstancesOpacity[v].ScrollBarImageTransparency or v.ScrollBarImageTransparency))/duration) or 0)
			end)
			pcall(function()
				library.Functions.Tween(
					v,
					{ BackgroundTransparency = InstancesOpacity[v].BackgroundTransparency or v.BackgroundTransparency },
					(((InstancesOpacity[v].BackgroundTransparency or v.BackgroundTransparency))/duration) or 0
				)
			end)
			pcall(function()
				library.Functions.Tween(
					v,
					{ TextTransparency = InstancesOpacity[v].TextTransparency or v.TextTransparency },
					(((InstancesOpacity[v].TextTransparency or v.TextTransparency))/duration) or 0
				)
			end)
			pcall(function()
				library.Functions.Tween(
					v,
					{ ImageTransparency = InstancesOpacity[v].ImageTransparency or v.ImageTransparency },
					(((InstancesOpacity[v].ImageTransparency or v.ImageTransparency))/duration) or 0
				)
			end)
			if InstancesOpacity[v] then
				InstancesOpacity[v] = nil
			end
		end
	end
	function library.Functions.getDistanceFromMouse(position): number
		local screenpos, vis = workspace.CurrentCamera.WorldToViewportPoint(workspace.CurrentCamera, position)
		if vis and screenpos.Z > 0 then
			return (Vector2.new(mouse.X, mouse.Y) - Vector2.new(screenpos.X, screenpos.Y)).Magnitude
		end
		return math.huge
	end
	function library.Functions.getNearestPlayerToMouse(config: table)
		local PLAYERS = {}
		local PLAYER_HOLD = {}
		local DISTANCES = {}
		local CAMERA = game.Workspace.CurrentCamera
		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= player then
				table.insert(PLAYERS, v)
			end
		end
		for i, v in pairs(PLAYERS) do
			if table.findByIndex(config, "IgnoreTeam") or true == false then
				if v and v.Character ~= nil and v.TeamColor ~= player.TeamColor then
					local AIM = v.Character:FindFirstChild(table.findByIndex(config, "Target") or "Head")
					if AIM ~= nil then
						local DISTANCE = (AIM.Position - CAMERA.CoordinateFrame.p).magnitude
						local RAY = Ray.new(
							CAMERA.CoordinateFrame.p,
							(mouse.Hit.p - CAMERA.CoordinateFrame.p).unit * DISTANCE
						)
						local HIT, POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
						local DIFF = math.floor((POS - AIM.Position).magnitude)
						PLAYER_HOLD[v.Name .. i] = {}
						PLAYER_HOLD[v.Name .. i].dist = DISTANCE
						PLAYER_HOLD[v.Name .. i].plr = v
						PLAYER_HOLD[v.Name .. i].diff = DIFF
						table.insert(DISTANCES, DIFF)
					end
				end
			elseif table.findByIndex(config, "IgnoreTeam") or true == true then
				local AIM = v.Character:FindFirstChild(table.findByIndex(config, "Target") or "Head")
				if AIM ~= nil then
					local DISTANCE = (AIM.Position - CAMERA.CoordinateFrame.p).magnitude
					local RAY = Ray.new(
						CAMERA.CoordinateFrame.p,
						(mouse.Hit.p - CAMERA.CoordinateFrame.p).unit * DISTANCE
					)
					local HIT, POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
					local DIFF = math.floor((POS - AIM.Position).magnitude)
					PLAYER_HOLD[v.Name .. i] = {}
					PLAYER_HOLD[v.Name .. i].dist = DISTANCE
					PLAYER_HOLD[v.Name .. i].plr = v
					PLAYER_HOLD[v.Name .. i].diff = DIFF
					table.insert(DISTANCES, DIFF)
				end
			end
		end

		if unpack(DISTANCES) == nil then
			return false
		end

		local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
		if L_DISTANCE > 20 then
			return false
		end

		for i, v in pairs(PLAYER_HOLD) do
			if v.diff == L_DISTANCE then
				return v.plr
			end
		end
		return false
	end
end
-- de../serialize functions
do
	local function hex_encode(IN: number, len: number): string
		local B, K, OUT, I, D = 16, "0123456789ABCDEF", "", 0, nil
		while IN > 0 do
			I = I + 1
			IN, D = math.floor(IN / B), IN % B + 1
			OUT = string.sub(K, D, D) .. OUT
		end
		if len then
			OUT = ("0"):rep(len - #OUT) .. OUT
		end
		return OUT
	end
	local function hex_decode(IN: string): number
		return tonumber(IN, 16)
	end
	local types = {
		["nil"] = "0",
		["boolean"] = "1",
		["number"] = "2",
		["string"] = "3",
		["table"] = "4",

		["Vector3"] = "5",
		["CFrame"] = "6",
		["Instance"] = "7",

		["Color3"] = "8",
	}
	local rtypes = (function(): table
		local a = {}
		for i, v in pairs(types) do
			a[v] = i
		end
		return a
	end)()
	local typeof = typeof or type
	local function encode(t, ...)
		local type = typeof(t)
		local s = types[type]
		local c = ""
		if type == "nil" then
			c = types[type] .. "0"
		elseif type == "boolean" then
			local t = t == true and "1" or "0"
			c = s .. t
		elseif type == "number" then
			local new = tostring(t)
			local len = #new
			c = s .. len .. "." .. new
		elseif type == "string" then
			local new = t
			local len = #new
			c = s .. len .. "." .. new
		elseif type == "Vector3" then
			local x, y, z = tostring(t.X), tostring(t.Y), tostring(t.Z)
			local new = hex_encode(#x, 2) .. x .. hex_encode(#y, 2) .. y .. hex_encode(#z, 2) .. z
			c = s .. new
		elseif type == "CFrame" then
			local a = { t:GetComponents() }
			local new = ""
			for i, v in pairs(a) do
				local l = tostring(v)
				new = new .. hex_encode(#l, 2) .. l
			end
			c = s .. new
		elseif type == "Color3" then
			local a = { t.R, t.G, t.B }
			local new = ""
			for i, v in pairs(a) do
				local l = tostring(v)
				new = new .. hex_encode(#l, 2) .. l
			end
			c = s .. new
		elseif type == "table" then
			return library.Functions.serialize(t, ...)
		end
		return c
	end
	local function decode(t, extra)
		local p = 0
		local function read(l)
			l = l or 1
			p = p + l
			return t:sub(p - l + 1, p)
		end
		local function get(a)
			local k = ""
			while p < #t do
				if t:sub(p + 1, p + 1) == a then
					break
				else
					k = k .. read()
				end
			end
			return k
		end
		local type = rtypes[read()]
		local c

		if type == "nil" then
			read()
		elseif type == "boolean" then
			local d = read()
			c = d == "1" and true or false
		elseif type == "number" then
			local length = tonumber(get("."))
			local d = read(length + 1):sub(2, -1)
			c = tonumber(d)
		elseif type == "string" then
			local length = tonumber(get(".")) --read()
			local d = read(length + 1):sub(2, -1)
			c = d
		elseif type == "Vector3" then
			local function getnext()
				local length = hex_decode(read(2))
				local a = read(tonumber(length))
				return tonumber(a)
			end
			local x, y, z = getnext(), getnext(), getnext()
			c = Vector3.new(x, y, z)
		elseif type == "CFrame" then
			local a = {}
			for i = 1, 12 do
				local l = hex_decode(read(2))
				local b = read(tonumber(l))
				a[i] = tonumber(b)
			end
			c = CFrame.new(unpack(a))
		elseif type == "Instance" then
			local pos = hex_decode(read(2))
			c = extra[tonumber(pos)]
		elseif type == "Color3" then
			local a = {}
			for i = 1, 3 do
				local l = hex_decode(read(2))
				local b = read(tonumber(l))
				a[i] = tonumber(b)
			end
			c = Color3.new(unpack(a))
		end
		return c
	end
	function library.Functions.serialize(data, p)
		if data == nil then
			return
		end
		local type = typeof(data)
		if type == "table" then
			local extra = {}
			local s = types[type]
			local new = ""
			local p = p or 0
			for i, v in pairs(data) do
				local i1, camera
				local t0, t1 = typeof(i), typeof(v)

				local a, b
				if t0 == "Instance" then
					p = p + 1
					extra[p] = i
					i1 = types[t0] .. hex_encode(p, 2)
				else
					i1, a = encode(i, p)
					if a then
						for i, v in pairs(a) do
							extra[i] = v
						end
					end
				end

				if t1 == "Instance" then
					p = p + 1
					extra[p] = v
					camera = types[t1] .. hex_encode(p, 2)
				else
					camera, b = encode(v, p)
					if b then
						for i, v in pairs(b) do
							extra[i] = v
						end
					end
				end
				new = new .. i1 .. camera
			end
			return s .. #new .. "." .. new, extra
		elseif type == "Instance" then
			return types[type] .. hex_encode(1, 2), { data }
		else
			return encode(data), {}
		end
	end
	function library.Functions.deserialize(data, extra)
		if data == nil then
			return
		end
		extra = extra or {}

		local type = rtypes[data:sub(1, 1)]
		if type == "table" then
			local p = 0
			local function read(l)
				l = l or 1
				p = p + l
				return data:sub(p - l + 1, p)
			end
			local function get(a)
				local k = ""
				while p < #data do
					if data:sub(p + 1, p + 1) == a then
						break
					else
						k = k .. read()
					end
				end
				return k
			end

			local length = tonumber(get("."):sub(2, -1))
			read()

			local new = {}

			local l = 0
			while p <= length do
				l = l + 1

				local function getnext()
					local i
					local t = read()
					local type = rtypes[t]

					if type == "nil" then
						i = decode(t .. read())
					elseif type == "boolean" then
						i = decode(t .. read())
					elseif type == "number" then
						local l = get(".")

						local dc = t .. l .. read()
						local a = read(tonumber(l))
						dc = dc .. a

						i = decode(dc)
					elseif type == "string" then
						local l = get(".")
						local dc = t .. l .. read()
						local a = read(tonumber(l))
						dc = dc .. a

						i = decode(dc)
					elseif type == "Vector3" then
						local function getnext()
							local length = hex_decode(read(2))
							local a = read(tonumber(length))
							return tonumber(a)
						end
						local x, y, z = getnext(), getnext(), getnext()
						i = Vector3.new(x, y, z)
					elseif type == "CFrame" then
						local a = {}
						for i = 1, 12 do
							local l = hex_decode(read(2))
							local b = read(tonumber(l)) -- why did I decide to do this
							a[i] = tonumber(b)
						end
						i = CFrame.new(unpack(a))
					elseif type == "Instance" then
						local pos = hex_decode(read(2))
						i = extra[tonumber(pos)]
					elseif type == "Color3" then
						local a = {}
						for i = 1, 3 do
							local l = hex_decode(read(2))
							local b = read(tonumber(l))
							a[i] = tonumber(b)
						end
						i = Color3.new(unpack(a))
					elseif type == "table" then
						local l = get(".")
						local dc = t .. l .. read() .. read(tonumber(l))
						i = library.Functions.deserialize(dc, extra)
					end
					return i
				end
				local i = getnext()
				local v = getnext()

				new[(typeof(i) ~= "nil" and i or l)] = v
			end

			return new
		elseif type == "Instance" then
			local pos = tonumber(hex_decode(data:sub(2, 3)))
			return extra[pos]
		else
			return decode(data, extra)
		end
	end
end
-- Settings functions
do
	function library.SettingsGet(name, default)
		local self = {}
		local value = library.Settings[name]
		if value == nil and default ~= nil then
			value = default
			library.Settings[name] = value
			library:SettingsSave()
		end
		self.Value = value
		function self:Set(val)
			self.Value = val
			library.Settings[name] = val
			library:SettingsSave()
		end
		return self --value or default
	end
	function library.SettingsSet(name, value)
		library.Settings[name] = value
		library:SettingsSave()
		return library.Settings[name]
	end
	function library:SettingsSave()
		local savesettings = library.SettingsGetAll() or {}
		local new = library.Functions.mergeTable(savesettings, library.Settings)
		local js = library.Functions.serialize(new)

		writefile(library.Settings.fileName, js)
	end
	function library.SettingsGetAll()
		if not isfile(library.Settings.fileName) then
			return
		end
		local fileContents = readfile(library.Settings.fileName)

		local data
		pcall(function()
			data = library.Functions.deserialize(fileContents)
		end)
		return data
	end
	function library.SettingsLoad()
		if not isfile(library.Settings.fileName) then
			return
		end
		local fileContents = readfile(library.Settings.fileName)

		local data
		pcall(function()
			data = library.Functions.deserialize(fileContents)
		end)

		if data then
			library.Settings = library.Functions.mergeTable(library.Settings, data)
		end
		return data
	end
	library.SettingsLoad()
end
-- End function
table.insert(library.end_funcs, function()
	for i, v in pairs(connections) do
		pcall(function()
			v:Disconnect()
		end)
		connections[i] = nil
	end
end)
function library.End()
	library.Enabled = false
	library:SettingsSave()
	task.spawn(function()
		for _, func in pairs(library.end_funcs) do
			func()
		end
		for _, key in pairs(binds) do
			key:UnBind()
		end
	end)
end
-- Librery functions
do
	library.__index = library
	page.__index = page
	section.__index = section

	function library:new(): table
		repeat
			task.wait()
		until game:IsLoaded()
		repeat
			pcall(function()
				game.CoreGui:FindFirstChild(library.Name):Destroy()
			end)
		until not game.CoreGui:FindFirstChild(library.Name)
		library.Enabled = true
		task.spawn(function()
			while library.Enabled do
				library:SettingsSave()
				task.wait(5)
			end
		end)

		local AntiAFK = player.Idled:connect(function()
			game:service("VirtualUser"):ClickButton2(Vector2.new())
		end)
		table.insert(connections, AntiAFK)
		local ScreenGui = library.Functions.newInstance("ScreenGui", {
			Name = library.Name,
			Parent = game.CoreGui,
		}, {
			library.Functions.newInstance("Frame", { -- UI
				Size = UDim2.new(0, 380, 0, 200),
				BackgroundColor3 = library.Settings.theme.Background,
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
			}, {
				library.Functions.newInstance("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
				library.Functions.newInstance("Frame", { -- Square 1
					Name = "Square_1",
					BackgroundColor3 = library.Settings.theme.Background,
					BackgroundTransparency = 1,
					ZIndex = 2,
					Size = UDim2.new(0, 200, 0, 200),
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 0, 0),
				}, {
					library.Functions.newInstance("UICorner", {
						CornerRadius = UDim.new(0, 8),
					}),
				}),
				library.Functions.newInstance("Frame", { -- Square 2
					Name = "Square_2",
					BackgroundColor3 = library.Settings.theme.Accent,
					BackgroundTransparency = 1,
					ZIndex = 1,
					Size = UDim2.new(0, 200, 0, 200),
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 0, 0),
				}, {
					library.Functions.newInstance("UICorner", {
						CornerRadius = UDim.new(0, 8),
					}),
				}),
			}),
		})

		local closeGui = ScreenGui.Destroying:connect(function()
			library.End()
		end)
		table.insert(connections, closeGui)

		do
			task.spawn(function()
				library.IsLoaded = pcall(function()
					--library.data = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://snxw.glitch.me/"))
				end)
				if library.Settings.NewUser then
					local Frame = library.Functions.newInstance("Frame", {
						Parent = ScreenGui.Frame,
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
					}, {
						library.Functions.newInstance("UIPadding", {
							PaddingTop = UDim.new(0, 15),
							PaddingBottom = UDim.new(0, 15),
							PaddingLeft = UDim.new(0, 15),
							PaddingRight = UDim.new(0, 15),
						}),
						library.Functions.newInstance("TextLabel", {
							Name = "WelcomeLabel",
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							Size = UDim2.new(1, 0, 0, 20),
							BackgroundTransparency = 1,
							LayoutOrder = 1,
							RichText = true,
							TextColor3 = library.Settings.theme.TextColor,
							Text = "<b>Welcome <font color='" .. library.Functions.colorToHex(
								library.Settings.theme.Accent
							) .. "'>" .. player.DisplayName .. "</font>!</b>",
							Visible = false,
							MaxVisibleGraphemes = 1,
							TextYAlignment = Enum.TextYAlignment.Top,
							TextSize = 20,
							Font = Enum.Font.SciFi,
						}),
						library.Functions.newInstance("Frame", { -- Terms & Conditions
							Name = "Terms&Conditions",
							Size = UDim2.new(1, 0, 0, 165),
							BackgroundTransparency = 1,
							LayoutOrder = 2,
							Visible = false,
						}, {
							library.Functions.newInstance("UIListLayout", {
								Padding = UDim.new(0, 5),
								SortOrder = Enum.SortOrder.LayoutOrder,
								HorizontalAlignment = Enum.HorizontalAlignment.Center,
							}),
							library.Functions.newInstance("ScrollingFrame", {
								ClipsDescendants = true,
								Size = UDim2.new(1, 0, 0, 130),
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								LayoutOrder = 1,
								ScrollBarThickness = 3,
								CanvasSize = UDim2.new(0, 0, 0, 0),
								ScrollBarImageColor3 = library.Settings.theme.TextColor,
							}, {
								library.Functions.newInstance("UIPadding", {
									PaddingRight = UDim.new(0, 5),
								}),
								library.Functions.newInstance("TextLabel", {
									Size = UDim2.new(1, 0, 0, 14),
									BackgroundTransparency = 1,
									RichText = true,
									TextColor3 = library.Settings.theme.TextColor,
									TextWrapped = true,
									TextYAlignment = Enum.TextYAlignment.Top,
									TextXAlignment = Enum.TextXAlignment.Left,
									TextSize = 14,
									Font = Enum.Font.SciFi,
								}),
							}),
							library.Functions.newInstance("Frame", {
								Name = "Buttons",
								Size = UDim2.new(1, 0, 0, 30),
								BackgroundTransparency = 1,
								LayoutOrder = 2,
							}, {
								library.Functions.newInstance("UIListLayout", {
									Padding = UDim.new(0, 15),
									SortOrder = Enum.SortOrder.LayoutOrder,
									FillDirection = Enum.FillDirection.Horizontal,
									HorizontalAlignment = Enum.HorizontalAlignment.Center,
								}),
								library.Functions.newInstance("TextButton", {
									Name = "Cancel",
									AutoButtonColor = false,
									Size = UDim2.new(0, 120, 1, 0),
									BackgroundColor3 = library.Settings.theme.Contrast,
									TextColor3 = library.Settings.theme.TextColor,
									TextSize = 14,
									RichText = true,
									Text = "<b>Cancel</b>",
									Font = Enum.Font.SciFi,
								}, {
									library.Functions.newInstance("UICorner", {
										CornerRadius = UDim.new(0, 8),
									}),
								}),
								library.Functions.newInstance("TextButton", {
									Name = "Accept",
									AutoButtonColor = false,
									Size = UDim2.new(0, 120, 1, 0),
									BackgroundColor3 = library.Settings.theme.Accent,
									TextColor3 = library.Settings.theme.TextColor,
									TextSize = 14,
									RichText = true,
									Text = "<b>Accept</b>",
									Font = Enum.Font.SciFi,
								}, {
									library.Functions.newInstance("UICorner", {
										CornerRadius = UDim.new(0, 8),
									}),
								}),
							}),
						}),
						library.Functions.newInstance("Frame", { -- How to use
							Name = "HowToUse",
							Size = UDim2.new(1, 0, 0, 165),
							BackgroundTransparency = 1,
							LayoutOrder = 2,
							Visible = false,
						}, {
							library.Functions.newInstance("UIListLayout", {
								Padding = UDim.new(0, 5),
								SortOrder = Enum.SortOrder.LayoutOrder,
								HorizontalAlignment = Enum.HorizontalAlignment.Center,
							}),
							library.Functions.newInstance("ScrollingFrame", {
								ClipsDescendants = true,
								Size = UDim2.new(1, 0, 0, 146),
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								LayoutOrder = 1,
								ScrollBarThickness = 3,
								CanvasSize = UDim2.new(0, 0, 0, 205),
								ScrollBarImageColor3 = library.Settings.theme.TextColor,
							}, {
								library.Functions.newInstance("UIGridLayout", {
									HorizontalAlignment = Enum.HorizontalAlignment.Center,
									CellPadding = UDim2.new(0, 5, 0, 5),
									CellSize = UDim2.new(0, 100, 0, 100),
								}),
							}),
							library.Functions.newInstance("TextButton", { -- Skip Button
								Name = "Skip",
								AutoButtonColor = false,
								Size = UDim2.new(1, 0, 0, 14),
								BackgroundTransparency = 1,
								LayoutOrder = 2,
								TextColor3 = library.Settings.theme.TextColor,
								Text = "<b>Skip</b>",
								RichText = true,
								TextXAlignment = Enum.TextXAlignment.Right,
								TextSize = 14,
								Font = Enum.Font.SciFi,
							}),
						}),
					})
					local text = "By accepting the terms and conditions, <b>we are not responsible</b> for any prohibition or inconvenience caused by the use of scripts provided by "
						.. library.Name
						.. ".\n<u><b>UNAUTHORIZED USE</b></u><br/>The marketing of modified products is not authorized. You may not claim intellectual or exclusive property in any of our products, modified or unmodified. All products are the property of the content providers. Unless otherwise specified, our products are provided without warranty of any kind, express or implied."
					for i = 1, text:len() do
						Frame["Terms&Conditions"].ScrollingFrame.TextLabel.Text = text:sub(1, i)
						Frame["Terms&Conditions"].ScrollingFrame.TextLabel.Size = UDim2.new(
							1,
							0,
							0,
							Frame["Terms&Conditions"].ScrollingFrame.TextLabel.TextBounds.Y
						)
					end
					Frame["Terms&Conditions"].ScrollingFrame.CanvasSize = UDim2.new(
						0,
						0,
						0,
						Frame["Terms&Conditions"].ScrollingFrame.TextLabel.AbsoluteSize.Y
					)
					local help = {
						["Title"] = "Description",
						["Title 2"] = "Description",
						["Title 3"] = "Description",
						["Title 4"] = "Description",
						["Title 5"] = "Description",
					}
					for i, v in pairs(help) do
						local button = library.Functions.newInstance("ImageButton", {
							Name = i,
							Parent = Frame.HowToUse.ScrollingFrame,
							AutoButtonColor = false,
							BackgroundColor3 = library.Settings.theme.DarkContrast,
						}, {
							library.Functions.newInstance("UICorner", {
								CornerRadius = UDim.new(0, 8),
							}),
							library.Functions.newInstance("Frame", {
								Size = UDim2.new(1, -2, 1, -2),
								Position = UDim2.new(0.5, 0, 0.5, 0),
								AnchorPoint = Vector2.new(0.5, 0.5),
								BackgroundColor3 = library.Settings.theme.Background,
							}, {
								library.Functions.newInstance("UICorner", {
									CornerRadius = UDim.new(0, 8),
								}),
								library.Functions.newInstance("UIListLayout", {
									SortOrder = Enum.SortOrder.LayoutOrder,
									VerticalAlignment = Enum.VerticalAlignment.Center,
									HorizontalAlignment = Enum.HorizontalAlignment.Center,
									Padding = UDim.new(0, 10),
								}),
								library.Functions.newInstance("UIPadding", {
									PaddingTop = UDim.new(0, 10),
									PaddingLeft = UDim.new(0, 5),
									PaddingRight = UDim.new(0, 5),
									PaddingBottom = UDim.new(0, 10),
								}),
								library.Functions.newInstance("TextLabel", {
									Name = "Title",
									Size = UDim2.new(1, 0, 0, 16),
									LayoutOrder = 1,
									BackgroundTransparency = 1,
									TextColor3 = library.Settings.theme.TextColor,
									TextSize = 16,
									Text = "<b>" .. i .. "</b>",
									RichText = true,
									Font = Enum.Font.SciFi,
									ClipsDescendants = true,
									TextWrapped = true,
									TextTruncate = Enum.TextTruncate.AtEnd,
								}),
								library.Functions.newInstance("TextLabel", {
									Name = "Description",
									Size = UDim2.new(1, 0, 1, -26),
									LayoutOrder = 2,
									BackgroundTransparency = 1,
									TextColor3 = library.Settings.theme.LightContrast,
									TextYAlignment = Enum.TextYAlignment.Top,
									TextSize = 14,
									Text = "<b>" .. v .. "</b>",
									RichText = true,
									Font = Enum.Font.SciFi,
									ClipsDescendants = true,
									TextWrapped = true,
									TextTruncate = Enum.TextTruncate.AtEnd,
								}),
							}),
						})
						button.MouseEnter:connect(function()
							library.Functions.Tween(button, { BackgroundColor3 = library.Settings.theme.Accent }, 0.2)
						end)
						button.MouseLeave:connect(function()
							pcall(function()
								library.Functions.Tween(
									button,
									{ BackgroundColor3 = library.Settings.theme.DarkContrast },
									0.2
								)
							end)
						end)
					end
					Frame["Terms&Conditions"].Buttons.Cancel.MouseButton1Click:Connect(function()
						library.Functions.Ripple(Frame["Terms&Conditions"].Buttons.Cancel, 0.5).Completed:Wait()
						pcall(function()
							game.CoreGui:FindFirstChild(library.Name):Destroy()
						end)
					end)
					Frame["Terms&Conditions"].Buttons.Accept.MouseButton1Click:Connect(function()
						library.Functions.Ripple(Frame["Terms&Conditions"].Buttons.Accept, 0.5).Completed:Wait()
					end)
					library.Functions.hideInstance(Frame["Terms&Conditions"])
					library.Functions.hideInstance(Frame.HowToUse)
				end
			end)

			library.Functions.Tween(ScreenGui.Frame.Square_1, { BackgroundTransparency = 0 }, 0.3).Completed:Wait()
			library.Functions.Tween(ScreenGui.Frame.Square_2, { BackgroundTransparency = 0.5 }, 0.3)

			local Tween = library.Functions.Tween(
				ScreenGui.Frame,
				{ Rotation = 360 },
				1,
				Enum.EasingStyle.Linear,
				Enum.EasingDirection.In,
				-1
			)

			repeat
				task.wait()
			until library.IsLoaded

			Tween:Cancel()
			library.Functions.Tween(ScreenGui.Frame, { Rotation = 0 }, 0.3)
			library.Functions.Tween(ScreenGui.Frame.Square_1, { Rotation = 180 }, 0.3)
			library.Functions.Tween(ScreenGui.Frame.Square_2, { Rotation = 180 }, 0.3).Completed:Wait()

			library.Functions.Tween(ScreenGui.Frame.Square_1, { Rotation = 45 }, 0.8)
			library.Functions.Tween(ScreenGui.Frame.Square_2, { Rotation = 45 }, 0.8).Completed:Wait()

			library.Functions.Tween(
				ScreenGui.Frame.Square_1,
				{ Position = UDim2.new(0, 0, 0, 0), AnchorPoint = Vector2.new(0, 0) },
				0.2
			)
			library.Functions.Tween(
				ScreenGui.Frame.Square_2,
				{ Position = UDim2.new(1, 0, 0, 0), AnchorPoint = Vector2.new(1, 0) },
				0.2
			)
			task.wait(1)

			library.Functions.Tween(
				ScreenGui.Frame.Square_1,
				{ Position = UDim2.new(0.5, 0, 0, 0), AnchorPoint = Vector2.new(0.5, 0) },
				0.2
			)
			library.Functions.Tween(
				ScreenGui.Frame.Square_2,
				{ Position = UDim2.new(0.5, 0, 0, 0), AnchorPoint = Vector2.new(0.5, 0) },
				0.2
			).Completed:Wait()

			library.Functions.Tween(ScreenGui.Frame.Square_1, { Rotation = 0 }, 0.3)
			library.Functions.Tween(ScreenGui.Frame.Square_2, { Rotation = 0 }, 0.3).Completed:Wait()

			library.Functions.Tween(ScreenGui.Frame.Square_1, { Size = UDim2.new(1, 0, 1, 0) }, 0.2)
			library.Functions.Tween(ScreenGui.Frame.Square_2, { Size = UDim2.new(1, 0, 1, 0) }, 0.2)

			library.Functions.Tween(ScreenGui.Frame, { Size = UDim2.new(0, 380, 0, 220) }, 0.2).Completed:Wait()

			ScreenGui.Frame.BackgroundTransparency = 0
			task.wait()
			ScreenGui.Frame.Square_1:Destroy()
			ScreenGui.Frame.Square_2:Destroy()
		end

		library.Functions.InitializeKeybind()
		library.Functions.DraggingEnabled(ScreenGui.Frame)

		if library.Settings.NewUser then
			library.Functions.TextEffect(ScreenGui.Frame.Frame.WelcomeLabel, 0.05)
			library.Functions.Tween(
				ScreenGui.Frame.Frame.WelcomeLabel,
				{ Position = UDim2.new(0.5, 0, 0, 0), AnchorPoint = Vector2.new(0.5, 0), Size = UDim2.new(1, 0, 0, 25) },
				0.4
			).Completed:Wait()

			library.Functions.newInstance("UIListLayout", {
				Parent = ScreenGui.Frame.Frame,
				Padding = UDim.new(0, 5),
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			})
			library.Functions.showInstance(ScreenGui.Frame.Frame["Terms&Conditions"], 0.4)
			ScreenGui.Frame.Frame["Terms&Conditions"].Buttons.Accept.MouseButton1Click:Wait()
			library.Functions.hideInstance(ScreenGui.Frame.Frame["Terms&Conditions"], 0.2)
			task.wait(0.2)
			library.Functions.showInstance(ScreenGui.Frame.Frame.HowToUse, 0.4)
			ScreenGui.Frame.Frame.HowToUse.Skip.MouseButton1Click:Wait()
			library.Functions.hideInstance(ScreenGui.Frame.Frame, 0.2)
			library.Settings.NewUser = false
			task.wait(0.2)
			ScreenGui.Frame.Frame:Destroy()
		end
		library.Functions.Tween(ScreenGui.Frame, { Size = UDim2.new(0, 600, 0, 350) }, 0.2).Completed:Wait()

		local Sidebar = library.Functions.newInstance("Frame", { -- Side bar
			Name = "Sidebar",
			Parent = ScreenGui.Frame,
			Size = UDim2.new(0, 45, 1, 0),
			BackgroundTransparency = 1,
		}, {
			library.Functions.newInstance("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			library.Functions.newInstance("Frame", { -- Title
				Name = "Title",
				Size = UDim2.new(1, 0, 0, 60),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				library.Functions.newInstance("ImageButton", { -- Logo
					Name = "Logo",
					Size = UDim2.new(0, 30, 0, 30),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = library.Settings.theme.DarkContrast,
					AutoButtonColor = false,
				}, {
					library.Functions.newInstance("UICorner", {
						CornerRadius = UDim.new(0, 2),
					}),
					library.Functions.newInstance("ImageLabel", {
						Size = UDim2.new(0, 16, 0, 16),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Image = library.Icons.code,
						ImageColor3 = library.Settings.theme.Accent,
						BackgroundTransparency = 1,
					}),
				}),
			}),
			library.Functions.newInstance("Frame", { --Page Container
				Name = "PageContainer",
				Size = UDim2.new(1, 0, 1, -60),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				library.Functions.newInstance("UIGridLayout", {
					CellPadding = UDim2.new(0, 0, 0, 15),
					CellSize = UDim2.new(0, 18, 0, 26),
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					FillDirectionMaxCells = 1,
				}),
			}),
		})
		library.Functions.Tween(
			Sidebar.Title.Logo,
			{ Rotation = 360 },
			1.5,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.In,
			-1
		)
		library.Functions.Tween(
			Sidebar.Title.Logo.UICorner,
			{ CornerRadius = UDim.new(1, 0) },
			1.5,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.In,
			-1
		)

		local Topbar = library.Functions.newInstance("Frame", { -- Top bar
			Name = "Topbar",
			Parent = ScreenGui.Frame,
			Size = UDim2.new(1, -45, 0, 60),
			Position = UDim2.new(0, 45, 0, 0),
			BackgroundTransparency = 1,
		}, {
			library.Functions.newInstance("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
			}),
			library.Functions.newInstance("UIPadding", {
				PaddingLeft = UDim.new(0, 15),
				PaddingRight = UDim.new(0, 15),
			}),
			library.Functions.newInstance("Frame", { -- Watch
				Name = "Watch",
				Size = UDim2.new(1, -250, 1, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				library.Functions.newInstance("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				library.Functions.newInstance("TextLabel", {
					Name = "Time",
					Size = UDim2.new(1, 0, 0, 18),
					BackgroundTransparency = 1,
					Text = "<b>" .. os.date("%X") .. " " .. os.date("%p") .. "</b>",
					RichText = true,
					LayoutOrder = 1,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextColor3 = library.Settings.theme.TextColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Bottom,
					TextSize = 18,
					Font = Enum.Font.SciFi,
				}),
				library.Functions.newInstance("TextLabel", {
					Name = "Date",
					Size = UDim2.new(1, 0, 0, 14),
					BackgroundTransparency = 1,
					Text = "<b>" .. os.date("%A") .. ", " .. os.date("%d") .. " " .. os.date("%b") .. "</b>",
					RichText = true,
					LayoutOrder = 2,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextColor3 = library.Settings.theme.LightContrast,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextSize = 14,
					Font = Enum.Font.SciFi,
				}),
			}),
			library.Functions.newInstance("Frame", {
				Name = "SearchBar",
				Size = UDim2.new(0, 250, 0, 30),
				LayoutOrder = 2,
				BackgroundTransparency = 1,
			}, {
				library.Functions.newInstance("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, 5),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Bottom,
				}),
				library.Functions.newInstance("TextBox", {
					Size = UDim2.new(1, 0, 1, -10),
					BackgroundTransparency = 1,
					LayoutOrder = 1,
					TextColor3 = library.Settings.theme.LightContrast,
					Text = "",
					Font = Enum.Font.SciFi,
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}, {
					library.Functions.newInstance("TextLabel", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 1, 0),
						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.new(0, 0, 0.5, 0),
						Font = Enum.Font.SciFi,
						TextColor3 = library.Settings.theme.LightContrast,
						Text = "<b>Search...</b>",
						TextSize = 13,
						RichText = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
					}),
					library.Functions.newInstance("Frame", {
						BackgroundColor3 = library.Settings.theme.DarkContrast,
						BorderSizePixel = 0,
						Size = UDim2.new(1, 0, 0, 2),
						AnchorPoint = Vector2.new(0, 1),
						Position = UDim2.new(0, 0, 1, 0),
					}, {
						library.Functions.newInstance("UICorner", {
							CornerRadius = UDim.new(0, 8),
						}),
					}),
				}),
			}),
		})
		Topbar.SearchBar.TextBox.Focused:connect(function()
			if library.Settings_Visible then
				return
			end
			library.Functions.Tween(Topbar.SearchBar.TextBox, { TextTransparency = 0 }, 0.2)
			library.Functions.Tween(
				Topbar.SearchBar.TextBox.Frame,
				{ BackgroundColor3 = library.Settings.theme.Accent },
				0.2
			)
			library.Functions.Tween(Topbar.SearchBar.TextBox.TextLabel, {
				TextColor3 = library.Settings.theme.TextColor,
				TextSize = 11,
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(0, 0.8),
			}, 0.2)
		end)
		Topbar.SearchBar.TextBox.FocusLost:Connect(function()
			library.Functions.Tween(Topbar.SearchBar.TextBox, { TextTransparency = 1 }, 0.2).Completed:Wait()
			library.Functions.Tween(
				Topbar.SearchBar.TextBox.Frame,
				{ BackgroundColor3 = library.Settings.theme.DarkContrast },
				0.2
			)
			library.Functions.Tween(Topbar.SearchBar.TextBox.TextLabel, {
				TextColor3 = library.Settings.theme.LightContrast,
				TextSize = 14,
				Position = UDim2.new(0, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
			}, 0.2)
		end)
		Topbar.SearchBar.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
			if library.focusedPage then
				for i, v in pairs(library.focusedPage.container:GetDescendants()) do
					if v:FindFirstChild("Section") and v:FindFirstChild("Section").ClassName == "NumberValue" then
						local Elements = 0
						for i, v in pairs(v:GetChildren()) do
							if v.Name:match("_Element") then
								Elements += 1
							end
						end
						if Topbar.SearchBar.TextBox.Text ~= "" then
							if Elements == 0 then
								v.Visible = false
							else
								v.Visible = true
							end
						else
							v.Visible = true
						end
					end
					if v.Name:match("_Element") then
						if v:FindFirstChild("SearchValue") then
							if
								v
									:FindFirstChild("SearchValue").Value
									:lower()
									:find(Topbar.SearchBar.TextBox.Text:lower())
							then
								v.Visible = true
							else
								v.Visible = false
							end
							local toggle = true
							for _, p in pairs(v.Parent:GetChildren()) do
								if p.Name:match("_Element") then
									if p.Visible then
										toggle = false
									end
								end
							end
							if toggle then
								v.Parent.Visible = false
							else
								v.Parent.Visible = true
							end
						end
					end
				end
				task.spawn(function()
					library.focusedPage:Resize()
				end)
			else
				Topbar.SearchBar.TextBox.Text = ""
			end
		end)
		task.spawn(function()
			while library.Enabled do
				task.wait()
				pcall(function()
					Topbar.Watch.Time.Text = "<b>" .. os.date("%X") .. " " .. os.date("%p") .. "</b>"
					Topbar.Watch.Date.Text = "<b>"
						.. os.date("%A")
						.. ", "
						.. os.date("%d")
						.. " "
						.. os.date("%b")
						.. "</b>"
				end)
			end
		end)

		local Settings = library.Functions.newInstance("Frame", {
			Parent = ScreenGui.Frame,
			Name = "Settings",
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = 5,
			Visible = false,
			BackgroundTransparency = 0.5,
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
		}, {
			library.Functions.newInstance("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
			library.Functions.newInstance("Frame", {
				Size = UDim2.new(1, -100, 1, -100),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = library.Settings.theme.Background,
				ZIndex = 6,
			}, {
				library.Functions.newInstance("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
				library.Functions.newInstance("TextLabel", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(1, 0, 0, 20),
					BackgroundTransparency = 1,
					RichText = true,
					TextColor3 = library.Settings.theme.TextColor,
					Text = "<b>Coming Soon</b>",
					TextSize = 20,
					Font = Enum.Font.SciFi,
					ZIndex = 6,
				}),
			}),
		})
		library.Functions.hideInstance(Settings)
		library.Settings_Visible = false
		local Settings_MouseOver = false
		Sidebar.Title.Logo.MouseButton1Click:Connect(function()
			if not library.Settings_Visible then
				task.spawn(function()
					task.spawn(function()
						for i, v in pairs(ScreenGui.Frame:GetChildren()) do
							if v.Name ~= "Settings" then
								for i, v in pairs(v:GetDescendants()) do
									pcall(function()
										v.Active = false
									end)
								end
							end
						end
					end)
					library.Functions.showInstance(Settings, 0.2)
					task.wait(0.2)
					library.Settings_Visible = true
				end)
			end
		end)
		Settings.Frame.MouseEnter:Connect(function()
			Settings_MouseOver = true
		end)
		Settings.Frame.MouseLeave:Connect(function()
			Settings_MouseOver = false
		end)
		Settings.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if not Settings_MouseOver and library.Settings_Visible then
					task.spawn(function()
						task.spawn(function()
							for i, v in pairs(ScreenGui.Frame:GetChildren()) do
								if v.Name ~= "Settings" then
									for i, v in pairs(v:GetDescendants()) do
										pcall(function()
											v.Active = true
										end)
									end
								end
							end
						end)
						library.Functions.hideInstance(Settings, 0.2)
						task.wait(0.2)
						library.Settings_Visible = false
					end)
				end
			end
		end)

		local SectionContainer = library.Functions.newInstance("Frame", {
			Name = "SectionContainer",
			Parent = ScreenGui.Frame,
			Size = UDim2.new(1, -45, 1, -60),
			Position = UDim2.new(0, 45, 0, 60),
			BackgroundTransparency = 1,
		}, {
			library.Functions.newInstance("UIPadding", {
				PaddingRight = UDim.new(0, 15),
				PaddingBottom = UDim.new(0, 15),
			}),
		})

		return setmetatable({
			container = ScreenGui,
			pageContainer = Sidebar.PageContainer,
			sectionContainer = SectionContainer,
			pages = {},
		}, library)
	end
	function library.ToolTip(config: table)
		config = config or {}
		local ToolTip = library.Functions.newInstance("Frame", {
			Name = "ToolTip",
			Parent = library.Functions.findByIndex(config, "Parent"),
			Visible = false,
			Size = UDim2.new(0, 200, 0, 50),
			BackgroundColor3 = library.Settings.theme.LightContrast,
			BackgroundTransparency = 0.5,
			Position = UDim2.new(1, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			ZIndex = 4,
		}, {
			library.Functions.newInstance("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
			library.Functions.newInstance("Frame", {
				Size = UDim2.new(1, -2, 1, -2),
				BackgroundColor3 = library.Settings.theme.DarkContrast,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				ZIndex = 4,
			}, {
				library.Functions.newInstance("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
				library.Functions.newInstance("UIPadding", {
					PaddingTop = UDim.new(0, 10),
					PaddingLeft = UDim.new(0, 10),
					PaddingRight = UDim.new(0, 10),
					PaddingBottom = UDim.new(0, 10),
				}),
				library.Functions.newInstance("TextLabel", {
					Name = "Title",
					Size = UDim2.new(1, 0, 0, 14),
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					TextColor3 = library.Settings.theme.TextColor,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextSize = 13,
					Text = "<b>" .. (library.Functions.findByIndex(config, "Title") or "Title") .. "</b>",
					Font = Enum.Font.SciFi,
					RichText = true,
					ClipsDescendants = true,
					TextTruncate = Enum.TextTruncate.AtEnd,
					ZIndex = 4,
				}),
				library.Functions.newInstance("TextLabel", {
					Name = "Description",
					Size = UDim2.new(1, 0, 0, 14),
					Position = UDim2.new(0, 0, 0, 14),
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					TextColor3 = library.Settings.theme.LightContrast,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextSize = 12,
					Font = Enum.Font.SciFi,
					RichText = true,
					ClipsDescendants = true,
					TextWrapped = true,
					TextTruncate = Enum.TextTruncate.AtEnd,
					ZIndex = 4,
				}),
			}),
		})
		library.Functions.hideInstance(ToolTip)

		for i = 1, (library.Functions.findByIndex(config, "Description") or "Description"):len() do
			ToolTip.Frame.Description.Text =
				(library.Functions.findByIndex(config, "Description") or "Description"):sub(
					1,
					i
				)
			ToolTip.Frame.Description.Size = UDim2.new(1, 0, 0, ToolTip.Frame.Description.TextBounds.Y)
		end
		ToolTip.Frame.Description.Text = "<b>" .. ToolTip.Frame.Description.Text .. "</b>"

		if library.Functions.findByIndex(config, "Shortcut") then
			local Frame = library.Functions.newInstance("Frame", {
				Parent = ToolTip.Frame,
				Size = UDim2.new(1, 0, 0, 27),
				BackgroundTransparency = 1,
				Position = UDim2.new(
					0,
					0,
					0,
					ToolTip.Frame.Title.AbsoluteSize.Y + ToolTip.Frame.Description.AbsoluteSize.Y
				),
				ZIndex = 4,
			}, {
				library.Functions.newInstance("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					BackgroundColor3 = library.Settings.theme.LightContrast,
					Position = UDim2.new(0, 0, 0, 5),
					ZIndex = 4,
				}, {
					library.Functions.newInstance("UICorner", {
						CornerRadius = UDim.new(0, 8),
					}),
				}),
				library.Functions.newInstance("TextLabel", {
					Name = "Shortcut",
					Size = UDim2.new(1, 0, 0, 16),
					Position = UDim2.new(0, 0, 0, 11),
					BackgroundColor3 = library.Settings.theme.Background,
					TextColor3 = library.Settings.theme.LightContrast,
					TextYAlignment = Enum.TextYAlignment.Center,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextSize = 11,
					Font = Enum.Font.SciFi,
					RichText = true,
					ClipsDescendants = true,
					TextTruncate = Enum.TextTruncate.AtEnd,
					ZIndex = 4,
				}, {
					library.Functions.newInstance("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					library.Functions.newInstance("UIPadding", {
						PaddingLeft = UDim.new(0, 5),
						PaddingRight = UDim.new(0, 5),
					}),
				}),
			})
			if typeof(library.Functions.findByIndex(config, "Shortcut")) == "table" then
				for i, v in pairs(library.Functions.findByIndex(config, "Shortcut")) do
					if typeof(v) == "EnumItem" then
						library.Functions.findByIndex(config, "Shortcut")[i] = v.Name
					end
				end
				Frame.Shortcut.Text = "<b>"
					.. table.concat(library.Functions.findByIndex(config, "Shortcut"), " + ")
					.. "</b>"
			else
				Frame.Shortcut.Text = "<b>None</b>"
			end
		end

		local Size = 20
		for i, v in pairs(ToolTip.Frame:GetChildren()) do
			local k = pcall(function()
				return v.AbsoluteSize
			end)
			if k then
				Size += v.AbsoluteSize.Y
			end
		end
		ToolTip.Size = UDim2.new(0, 200, 0, Size)

		local button = library.Functions.findByIndex(config, "Button")
			or library.Functions.findByIndex(config, "Parent")

		local toggle = false
		local ToolTipVisible = false
		button.MouseEnter:Connect(function()
			if library.Settings_Visible then
				return
			end
			toggle = true

			local value = false
			task.spawn(function()
				task.wait(0.6)
				value = true
			end)
			task.spawn(function()
				while toggle do
					task.wait()
					if value and not ToolTipVisible then
						library.Functions.showInstance(ToolTip, 0.2)
						library.Functions.Tween(ToolTip, { Position = UDim2.new(1, 30, 0.5, 0) }, 0.2)
						library.Functions.Tween(
							ToolTip,
							{ BackgroundColor3 = library.Settings.theme.LightContrast },
							0.2
						)
						break
					end
				end
				task.wait(0.2)
				ToolTipVisible = true
			end)
		end)
		button.MouseLeave:Connect(function()
			toggle = false
			task.spawn(function()
				while not toggle do
					task.wait()
					if ToolTipVisible then
						library.Functions.hideInstance(ToolTip, 0.2)
						library.Functions.Tween(ToolTip, { Position = UDim2.new(1, 0, 0.5, 0) }, 0.2)
						library.Functions.Tween(
							ToolTip,
							{ BackgroundColor3 = library.Settings.theme.DarkContrast },
							0.2
						)
						break
					end
				end
				task.wait(0.2)
				ToolTipVisible = false
			end)
		end)
	end
	function page.new(config: table): table
		config = config or {}
		local Frame = library.Functions.newInstance("Frame", {
			Parent = library.Functions.findByIndex(config, "library").pageContainer,
			BackgroundTransparency = 1,
		}, {
			library.Functions.newInstance("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				library.Functions.newInstance("ImageButton", {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(0.5, 0, 0, 0),
					AnchorPoint = Vector2.new(0.5, 0),
					Image = (library.Functions.findByIndex(config, "icon") and (library.Functions.findByIndex(
						config,
						"icon"
					):match("//") and library.Functions.findByIndex(config, "icon") or "rbxassetid://" .. library.Functions.findByIndex(
						config,
						"icon"
					))) or library.Functions.randomIcon(),
					ImageColor3 = library.Settings.theme.LightContrast,
				}),
				library.Functions.newInstance("ImageLabel", {
					Name = "Dot",
					BackgroundTransparency = 1,
					Visible = false,
					Size = UDim2.new(0, 5, 0, 5),
					Position = UDim2.new(0.5, 0, 1, 5),
					AnchorPoint = Vector2.new(0.5, 1),
					Image = "rbxassetid://6034407081",
					ImageColor3 = library.Settings.theme.Accent,
				}),
			}),
		})
		library.ToolTip({
			Parent = Frame.Frame,
			Button = Frame.Frame.ImageButton,
			Title = library.Functions.findByIndex(config, "Title"),
			Description = library.Functions.findByIndex(config, "Description"),
		})
		library.Functions.hideInstance(Frame.Frame.Dot)
		local container = library.Functions.newInstance("ScrollingFrame", {
			Name = library.Functions.findByIndex(config, "Title") or "Container",
			Parent = library.Functions.findByIndex(config, "library").sectionContainer,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			CanvasSize = UDim2.new(0, 0, 0, 0),
			ScrollBarThickness = 3,
			ScrollBarImageColor3 = library.Settings.theme.TextColor,
			Visible = false,
		}, {
			library.Functions.newInstance("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 10),
			}),
			library.Functions.newInstance("UIPadding", {
				PaddingRight = UDim.new(0, 15),
			}),
		})
		return setmetatable({
			library = library.Functions.findByIndex(config, "library"),
			button = Frame.Frame.ImageButton,
			container = container,
			sections = {},
		}, page)
	end
	function section.new(config: table): table
		config = config or {}

		local divisions = library.Functions.findByIndex(config, "Divisions") or 1

		local container = library.Functions.newInstance("Frame", {
			Parent = library.Functions.findByIndex(config, "page").container,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 30),
		}, {
			library.Functions.newInstance("UIListLayout", {
				Padding = UDim.new(0, 5),
				FillDirection = Enum.FillDirection.Horizontal,
			}),
		})

		local sections = {}
		for i = 1, divisions do
			local section = library.Functions.newInstance("Frame", {
				Parent = container,
				BackgroundColor3 = library.Settings.theme.DarkContrast,
				Size = UDim2.new(1 / divisions, -(((5 * (divisions - 1)) / divisions) + 1), 0, 16),
			}, {
				library.Functions.newInstance("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
				library.Functions.newInstance("UIPadding", {
					PaddingTop = UDim.new(0, 10),
					PaddingLeft = UDim.new(0, 10),
					PaddingRight = UDim.new(0, 10),
					PaddingBottom = UDim.new(0, 10),
				}),
				library.Functions.newInstance("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 4),
				}),
				library.Functions.newInstance("NumberValue", {
					Name = "Section",
					Value = divisions,
				}),
			})
			table.insert(sections, i, section)
		end

		return setmetatable({
			page = library.Functions.findByIndex(config, "page"),
			parent = container,
			container = sections,
			colorpickers = {},
			modules = {},
			binds = {},
			lists = {},
		}, section)
	end

	function library:addPage(config: table): table
		config = config or {}
		config.library = self
		local page = page.new(config)

		table.insert(self.pages, page)

		page.button.MouseEnter:Connect(function()
			if library.Settings_Visible then
				return
			end
			if library.focusedPage ~= page then
				library.Functions.Tween(page.button, { Size = UDim2.new(0, 19, 0, 19) }, 0.2)
			end
		end)
		page.button.MouseLeave:Connect(function()
			library.Functions.Tween(page.button, { Size = UDim2.new(0, 18, 0, 18) }, 0.2)
		end)
		page.button.MouseButton1Click:Connect(function()
			if library.Settings_Visible then
				return
			end
			library.Functions.Tween(page.button, { Size = UDim2.new(0, 18, 0, 18) }, 0.2)
			self:SelectPage(page, true)
		end)
		return page
	end
	function page:addSection(config: table): table
		config = config or {}
		config.page = self
		local section = section.new(config)

		table.insert(self.sections, section)

		return section
	end

	function page:Resize()
		local size = (#self.sections - 1) * 10

		for i, section in pairs(self.sections) do
			section:Resize()
			size += section.parent.UIListLayout.AbsoluteContentSize.Y
		end
		if self.container.CanvasSize.Y.Offset < self.container.AbsoluteSize.Y then
			self.container.UIPadding.PaddingRight = UDim.new(0, 0)
		else
			self.container.UIPadding.PaddingRight = UDim.new(0, 15)
		end
		for i, section in pairs(self.sections) do
			section:Resize()
		end
		self.container.CanvasSize = UDim2.new(0, 0, 0, size)
		if self.container.CanvasSize.Y.Offset < self.container.AbsoluteSize.Y then
			self.container.UIPadding.PaddingRight = UDim.new(0, 0)
		else
			self.container.UIPadding.PaddingRight = UDim.new(0, 15)
		end
	end
	function section:Resize()
		local allSizes = {}

		local containerI = 0
		for i, v in pairs(self.container) do
			if v.ClassName == "Frame" then
				if v.Visible then
					containerI += 1
				end
			end
		end
		for i, v in pairs(self.container) do
			if v.ClassName == "Frame" then
				local a = 16
				for _, v in pairs(v:GetChildren()) do
					if v.Name:match("_Element") then
						if v.Visible then
							a += v.AbsoluteSize.Y + 4
						end
					end
				end
				-- library.Functions.Tween(v, { Size = UDim2.new(1 / containerI, -(((5 * (containerI - 1)) / containerI) + 1), 0, a) }, 0)
				v.Size = UDim2.new(1 / containerI, -(((5 * (containerI - 1)) / containerI) + 1), 0, a)
				table.insert(allSizes, i, a)
			end
		end
		if containerI == 0 then
			self.parent.Visible = false
			return
		else
			self.parent.Visible = true
		end

		local size = 0
		for i = 1, #allSizes do
			local a = allSizes[i]
			size = math.max(size, a)
		end

		library.Functions.Tween(self.parent, { Size = UDim2.new(1, 0, 0, size) }, 0)
	end
	function section:getModule(info): Instance
		if table.find(self.modules, info) then
			return info
		end

		for i, module in pairs(self.modules) do
			if (module:FindFirstChild("Title") or module:FindFirstChild("TextBox", true)).Text == info then
				return module
			end
		end

		error("No module found under " .. tostring(info))
	end
	function library:SelectPage(page: table, toggle: boolean)
		if toggle and library.focusedPage == page then
			return
		end

		if not page and #self.pages > 0 then
			page = self.pages[1]
			library.Functions.Tween(page.button, { ImageColor3 = library.Settings.theme.Accent }, 0.2)
			library.Functions.Tween(page.button.Parent.Dot, { Position = UDim2.new(0.5, 0, 1, 0) }, 0.4)
			library.Functions.showInstance(page.button.Parent.Dot, 0.4)

			local focusedPage = library.focusedPage
			library.focusedPage = page

			if focusedPage then
				self:SelectPage(focusedPage)
			end
			task.wait(0.1)

			page.container.Visible = true

			task.spawn(function()
				page:Resize()
			end)
			return
		end

		if toggle then
			library.Functions.Tween(page.button, { ImageColor3 = library.Settings.theme.Accent }, 0.2)
			library.Functions.Tween(page.button.Parent.Dot, { Position = UDim2.new(0.5, 0, 1, 0) }, 0.4)
			library.Functions.showInstance(page.button.Parent.Dot, 0.4)

			local focusedPage = library.focusedPage
			library.focusedPage = page

			if focusedPage then
				self:SelectPage(focusedPage)
			end
			task.wait(0.1)

			page.container.Visible = true

			task.spawn(function()
				page:Resize()
			end)
		else
			library.Functions.Tween(page.button, { ImageColor3 = library.Settings.theme.LightContrast }, 0.2)
			library.Functions.Tween(page.button.Parent.Dot, { Position = UDim2.new(0.5, 0, 1, 5) }, 0.2)
			library.Functions.hideInstance(page.button.Parent.Dot, 0.2)
			page.container.Visible = false
			if page == library.focusedPage then
				library.focusedPage = nil
			end
			task.spawn(function()
				for i, v in pairs(page.container:GetDescendants()) do
					if v:FindFirstChild("Section") and v:FindFirstChild("Section").ClassName == "NumberValue" then
						v.Visible = true
					end
					if v.Name:match("_Element") then
						v.Visible = true
					end
				end
			end)
		end
	end
	function library:toggle()
		if self.toggling then
			return
		end

		self.toggling = true

		local container = self.container:FindFirstChild("Frame")
		if not container then
			return
		end

		if container.Visible then
			library.Functions.hideInstance(container, 0.4)
		else
			library.Functions.showInstance(container, 0.4)
		end

		self.toggling = false
	end

	function section:addButton(config: table): Instance
		config = config or {}
		local button = library.Functions.newInstance("TextButton", {
			Name = "Button_Element",
			Parent = (library.Functions.findByIndex(config, "section") or 1) > #self.container
					and self.container[#self.container]
				or self.container[library.Functions.findByIndex(config, "section") or 1],
			BackgroundColor3 = library.Settings.theme.Background,
			Font = Enum.Font.SciFi,
			Text = "<b>" .. (library.Functions.findByIndex(config, "Title") or "Button") .. "</b>",
			RichText = true,
			TextColor3 = library.Settings.theme.TextColor,
			TextSize = 12,
			AutoButtonColor = false,
			Size = UDim2.new(1, 0, 0, 30),
		}, {
			library.Functions.newInstance("UICorner", {
				CornerRadius = UDim.new(0, library.Functions.findByIndex(config, "Corner") or 5),
			}),
			library.Functions.newInstance("StringValue", {
				Name = "SearchValue",
				Value = library.Functions.findByIndex(config, "Title") or "Button",
			}),
		})

		table.insert(self.modules, button)

		local debounce

		button.MouseButton1Click:Connect(function()
			if debounce or library.OpenedWindow then
				return
			end

			library.Functions.Ripple(button, 0.5)

			debounce = true

			if library.Functions.findByIndex(config, "CallBack") then
				library.Functions.findByIndex(config, "CallBack")(function(...)
					self:updateButton(button, { ... })
				end)
			end

			debounce = false
		end)

		return button
	end
	function section:addLabel(config: table): Instance
		config = config or {}
		local label = library.Functions.newInstance("TextLabel", {
			Name = "Label_Element",
			Parent = (library.Functions.findByIndex(config, "section") or 1) > #self.container
					and self.container[#self.container]
				or self.container[library.Functions.findByIndex(config, "section") or 1],
			BackgroundTransparency = 1,
			TextSize = library.Functions.findByIndex(config, "TextSize") or 12,
			TextXAlignment = library.Functions.findByIndex(config, "TextXAlignment") or Enum.TextXAlignment.Left,
			Font = library.Functions.findByIndex(config, "Font") or Enum.Font.SciFi,
			TextColor3 = library.Settings.theme.TextColor,
			TextWrapped = true,
			RichText = true,
			TextYAlignment = 0,
		}, {
			library.Functions.newInstance("StringValue", {
				Name = "SearchValue",
				Value = library.Functions.findByIndex(config, "Text") or "Text Label",
			}),
		})

		local text = (
				library.Functions.findByIndex(config, "Text")
				and library.Functions.findByIndex(config, "Text") ~= ""
				and library.Functions.findByIndex(config, "Text")
			) or "Text Label"
		for i = 1, text:len() do
			label.Text = text:sub(1, i)
			label.Size = UDim2.new(1, 0, 0, label.TextBounds.Y)
		end

		label:GetPropertyChangedSignal("Size"):Connect(function()
			self:Resize()
		end)

		table.insert(self.modules, label)

		return label
	end
	function section:addDualLabel(config: table): Instance
		config = config or {}
		local titleText = (
				(
					library.Functions.findByIndex(config, "Title")
					and library.Functions.findByIndex(config, "Title") ~= ""
					and library.Functions.findByIndex(config, "Title")
				) or "<b>Title</b>"
			) .. ":"
		local descText = (
				library.Functions.findByIndex(config, "Description")
				and library.Functions.findByIndex(config, "Description") ~= ""
				and library.Functions.findByIndex(config, "Description")
			) or "Description"
		local titleSize = library.Functions.GetTextSize(titleText, 12, Enum.Font.SciFi)
		local descSize = library.Functions.GetTextSize(descText, 12, Enum.Font.SciFi)

		local frame = library.Functions.newInstance("Frame", {
			Name = "DualLabel_Element",
			Parent = (library.Functions.findByIndex(config, "section") or 1) > #self.container
					and self.container[#self.container]
				or self.container[library.Functions.findByIndex(config, "section") or 1],
			BackgroundColor3 = library.Settings.theme.Background,
			Size = UDim2.new(1, 0, 0, 20),
		}, {
			library.Functions.newInstance("UICorner", {
				CornerRadius = UDim.new(0, library.Functions.findByIndex(config, "Corner") or 5),
			}),
			library.Functions.newInstance("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
			}),
			library.Functions.newInstance("TextLabel", {
				Name = "Title",
				BackgroundTransparency = 1,
				Size = UDim2.new(0, titleSize.X, 1, 0),
				Text = titleText,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				Font = Enum.Font.SciFi,
				TextColor3 = library.Settings.theme.TextColor,
				ClipsDescendants = true,
				RichText = true,
			}),
			library.Functions.newInstance("TextLabel", {
				Name = "Description",
				BackgroundTransparency = 1,
				Position = UDim2.new(1, 0, 0, 0),
				AnchorPoint = Vector2.new(1, 0),
				Text = descText,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Right,
				TextYAlignment = Enum.TextYAlignment.Center,
				Font = Enum.Font.SciFi,
				TextColor3 = library.Settings.theme.LightContrast,
				ClipsDescendants = true,
				RichText = true,
			}),
			library.Functions.newInstance("StringValue", {
				Name = "SearchValue",
				Value = titleText:gsub("<[^<>]->", ""),
			}),
		})
		frame.Description.Size = UDim2.new(0, math.min(descSize.X, frame.AbsoluteSize.X - titleSize.X - 5), 1, 0)

		table.insert(self.modules, frame)

		return frame
	end
	function section:addClipboardLabel(config: table): Instance
		config = config or {}

		local ClipboardLabel = library.Functions.newInstance("Frame", {
			Name = "ClipboardLabel_Element",
			Parent = (library.Functions.findByIndex(config, "section") or 1) > #self.container
					and self.container[#self.container]
				or self.container[library.Functions.findByIndex(config, "section") or 1],
			BackgroundColor3 = library.Settings.theme.Background,
			Size = UDim2.new(1, 0, 0, 30),
		}, {
			library.Functions.newInstance("UICorner", {
				CornerRadius = UDim.new(0, library.Functions.findByIndex(config, "Corner") or 5),
			}),
			library.Functions.newInstance("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
			}),
			library.Functions.newInstance("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -30, 1, 0),
				Text = (
						library.Functions.findByIndex(config, "Text")
						and library.Functions.findByIndex(config, "Text") ~= ""
						and library.Functions.findByIndex(config, "Text")
					) or "<b>Clipboard Label</b>",
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				Font = Enum.Font.SciFi,
				TextColor3 = library.Settings.theme.LightContrast,
				ClipsDescendants = true,
				RichText = true,
			}),
			library.Functions.newInstance("ImageButton", {
				BackgroundColor3 = library.Settings.theme.Contrast,
				AutoButtonColor = false,
				Size = UDim2.new(0, 25, 0, 25),
				Position = UDim2.new(1, 0, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
			}, {
				library.Functions.newInstance("UICorner", {
					CornerRadius = UDim.new(0, 5),
				}),
				library.Functions.newInstance("ImageLabel", {
					Image = library.Icons.copy,
					ImageColor3 = library.Settings.theme.TextColor,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 15, 0, 15),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
				}),
			}),
			library.Functions.newInstance("StringValue", {
				Name = "SearchValue",
				Value = ((library.Functions.findByIndex(config, "Text") and library.Functions.findByIndex(
					config,
					"Text"
				) ~= "" and library.Functions.findByIndex(config, "Text")) or "<b>Clipboard Label</b>"):gsub(
					"<[^<>]->",
					""
				),
			}),
		})
		table.insert(self.modules, ClipboardLabel)

		ClipboardLabel.ImageButton.MouseButton1Click:connect(function()
			library.Functions.Ripple(ClipboardLabel.ImageButton, 0.5)
			if setclipboard then
				setclipboard(ClipboardLabel.TextLabel.Text:gsub("<[^<>]->", ""))
			end
		end)

		return ClipboardLabel
	end
	function section:addSlider(config: table): Instance
		config = config or {}
		local slider = library.Functions.newInstance("Frame", {
			Name = "Slider_Element",
			BackgroundTransparency = 1,
			Parent = (library.Functions.findByIndex(config, "section") or 1) > #self.container
					and self.container[#self.container]
				or self.container[library.Functions.findByIndex(config, "section") or 1],
			Size = UDim2.new(1, 0, 0, 30),
		}, {
			library.Functions.newInstance("TextLabel", {
				Name = "Title",
				BackgroundTransparency = 1,
				Size = UDim2.new(
					0,
					game:GetService("TextService"):GetTextSize(
						library.Functions.findByIndex(config, "Title") or "Slider",
						12,
						Enum.Font.SciFi,
						Vector2.new(math.huge, 12)
					).X + 5,
					0,
					12
				),
				Font = Enum.Font.SciFi,
				RichText = true,
				Text = "<b>" .. (library.Functions.findByIndex(config, "Title") or "Slider") .. "</b>",
				TextColor3 = library.Settings.theme.TextColor,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			library.Functions.newInstance("TextLabel", {
				Name = "Count",
				BackgroundTransparency = 1,
				Size = UDim2.new(
					0,
					game:GetService("TextService"):GetTextSize(
						library.Functions.findByIndex(config, "Default")
							or library.Functions.findByIndex(config, "Min")
							or 0,
						12,
						Enum.Font.SciFi,
						Vector2.new(math.huge, 12)
					).X + 5,
					0,
					12
				),
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, 0, 0, 0),
				Font = Enum.Font.SciFi,
				RichText = true,
				Text = "<b>" .. (library.Functions.findByIndex(config, "Default") or library.Functions.findByIndex(
					config,
					"Min"
				) or 0) .. "</b>",
				TextColor3 = library.Settings.theme.TextColor,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Right,
			}),
			library.Functions.newInstance("ImageButton", {
				BackgroundTransparency = 1,
				Name = "Slider",
				Size = UDim2.new(1, 0, 0, 10),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, -2),
			}, {
				library.Functions.newInstance("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),
				library.Functions.newInstance("Frame", {
					Name = "Bar",
					Size = UDim2.new(1, 0, 0, 4),
					BorderSizePixel = 0,
					BackgroundColor3 = library.Settings.theme.LightContrast,
				}, {
					library.Functions.newInstance("UICorner", {
						CornerRadius = UDim.new(1, 0),
					}),
					library.Functions.newInstance("Frame", {
						Name = "Fill",
						Size = UDim2.new(0.8, 0, 1, 0),
						BorderSizePixel = 0,
						BackgroundColor3 = library.Settings.theme.Accent,
					}, {
						library.Functions.newInstance("UICorner", {
							CornerRadius = UDim.new(1, 0),
						}),
						library.Functions.newInstance("Frame", {
							Name = "Circle",
							AnchorPoint = Vector2.new(0, 0.5),
							Position = UDim2.new(1, -5, 0.5, 0),
							Size = UDim2.new(0, 10, 0, 10),
							BackgroundColor3 = library.Settings.theme.Accent,
							BorderSizePixel = 0,
							BackgroundTransparency = 1,
						}, {
							library.Functions.newInstance("UICorner", {
								CornerRadius = UDim.new(1, 0),
							})
						}),
					}),
				}),
			}),
			library.Functions.newInstance("StringValue", {
				Name = "SearchValue",
				Value = library.Functions.findByIndex(config, "Title") or "Slider",
			}),
		})

		table.insert(self.modules, slider)

		local value = library.Functions.findByIndex(config, "Default")
			or library.Functions.findByIndex(config, "Min")
			or 0
		local dragging, last

		local callback = function(value)
			if library.Functions.findByIndex(config, "CallBack") then
				library.Functions.findByIndex(config, "CallBack")(value, function(...)
					self:updateSlider(slider, { ... })
				end)
			end
		end

		self:updateSlider(slider, {
			Value = value,
			Min = library.Functions.findByIndex(config, "Min") or 0,
			Max = library.Functions.findByIndex(config, "Max") or 0,
		})

		slider.Slider.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)

				while dragging do
					task.wait()
					library.Functions.Tween(slider.Slider.Bar.Fill.Circle, { BackgroundTransparency = 0 }, 0.1)

					value = self:updateSlider(slider, {
						Min = library.Functions.findByIndex(config, "Min") or 0,
						Max = library.Functions.findByIndex(config, "Max") or 0,
						LastValue = value,
					})
					callback(value)

					game:GetService("RunService").RenderStepped:Wait()
				end

				task.wait(0.5)
				library.Functions.Tween(slider.Slider.Bar.Fill.Circle, { BackgroundTransparency = 1 }, 0.2)
			end
		end)

		return slider
	end
	function section:addToggle(config: table): Instance
		config = config or {}
		local toggle = library.Functions.newInstance("ImageButton", {
			Name = "Toggle_Element",
			Parent = (library.Functions.findByIndex(config, "section") or 1) > #self.container
					and self.container[#self.container]
				or self.container[library.Functions.findByIndex(config, "section") or 1],
			AutoButtonColor = false,
			BackgroundColor3 = library.Settings.theme.Background,
			-- BackgroundTransparency = 0.3,
			Size = UDim2.new(1, 0, 0, 30),
		}, {
			library.Functions.newInstance("UICorner", {
				CornerRadius = UDim.new(0, library.Functions.findByIndex(config, "Corner") or 5),
			}),
			library.Functions.newInstance("TextLabel", {
				Name = "Title",
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0.5, 0),
				Size = UDim2.new(0.5, 0, 1, 0),
				Font = Enum.Font.SciFi,
				RichText = true,
				Text = "<b>" .. (library.Functions.findByIndex(config, "Title") or "Toggle") .. "</b>",
				TextColor3 = library.Settings.theme.TextColor,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			library.Functions.newInstance("Frame", {
				BackgroundColor3 = library.Settings.theme.Contrast,
				BorderSizePixel = 0,
				Position = UDim2.new(1, -50, 0.5, -8),
				Size = UDim2.new(0, 40, 0, 16),
			}, {
				library.Functions.newInstance("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
				library.Functions.newInstance("Frame", {
					Name = "Button",
					BackgroundColor3 = library.Settings.theme.LightContrast,
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, 16, 0, 16),
				}, {
					library.Functions.newInstance("UICorner", {
						CornerRadius = UDim.new(1, 0),
					}),
				}),
			}),
			library.Functions.newInstance("StringValue", {
				Name = "SearchValue",
				Value = library.Functions.findByIndex(config, "Title") or "Toggle",
			}),
		})

		table.insert(self.modules, toggle)
		--self:Resize()

		local active = library.Functions.findByIndex(config, "Default") or false
		self:updateToggle(toggle, { Default = active })

		toggle.MouseButton1Click:Connect(function()
			active = not active
			self:updateToggle(toggle, { Default = active })

			if library.Functions.findByIndex(config, "CallBack") then
				library.Functions.findByIndex(config, "CallBack")(active, function(...)
					self:updateToggle(toggle, { ... })
				end)
			end
		end)
		local this = {}
		-- return toggle
		return setmetatable({}, {
			__index = function(_, k)
				return this[k] or toggle[k]
			end,
		})
	end
	function section:addCheckbox(config: table): Instance
		config = config or {}
		local checkbox = library.Functions.newInstance("ImageButton", {
			Name = "Checkbox_Element",
			BackgroundTransparency = 1,
			Parent = (library.Functions.findByIndex(config, "section") or 1) > #self.container
					and self.container[#self.container]
				or self.container[library.Functions.findByIndex(config, "section") or 1],
			Size = UDim2.new(1, 0, 0, 25),
		}, {
			library.Functions.newInstance("BoolValue", {
				Name = "IsEnabled",
				Value = library.Functions.findByIndex(config, "Default") or false,
			}),
			library.Functions.newInstance("UIListLayout", {
				Padding = UDim.new(0, 10),
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
			}),
			library.Functions.newInstance("ImageButton", {
				BackgroundColor3 = library.Settings.theme.Background,
				Size = UDim2.new(0, 20, 0, 20),
				AutoButtonColor = false,
			}, {
				library.Functions.newInstance("UICorner", {
					CornerRadius = UDim.new(0, 5),
				}),
				library.Functions.newInstance("Frame", {
					BackgroundColor3 = library.Settings.theme.Background,
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(0, 1, 0, 1),
				}, {
					library.Functions.newInstance("UICorner", {
						CornerRadius = UDim.new(0, 5),
					}),
				}),
				library.Functions.newInstance("ImageLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 16, 0, 16),
					Position = UDim2.new(0, 2, 0, 2),
					Image = "rbxassetid://7072706620",
					ImageColor3 = library.Settings.theme.TextColor,
					ImageTransparency = 1,
				}),
			}),
			library.Functions.newInstance("TextLabel", {
				Name = "Title",
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0.5, 1),
				Size = UDim2.new(0.5, 0, 1, 0),
				Font = Enum.Font.SciFi,
				RichText = true,
				Text = "<b>" .. (library.Functions.findByIndex(config, "Title") or "Checkbox") .. "</b>",
				TextColor3 = library.Settings.theme.TextColor,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			library.Functions.newInstance("StringValue", {
				Name = "SearchValue",
				Value = library.Functions.findByIndex(config, "Title") or "Checkbox",
			}),
		})
		table.insert(self.modules, checkbox)

		local GroupName = library.Functions.findByIndex(config, "Group")
		if GroupName then
			if not checkboxGroups[GroupName] then
				checkboxGroups[GroupName] = {}
			end
			table.insert(checkboxGroups[GroupName], checkbox)
		end
		self:updateCheckbox(
			checkbox,
			{ Default = checkbox.IsEnabled.Value },
			library.Functions.findByIndex(config, "Group")
		)

		checkbox.MouseButton1Click:Connect(function()
			checkbox.IsEnabled.Value = not checkbox.IsEnabled.Value

			self:updateCheckbox(
				checkbox,
				{ Default = checkbox.IsEnabled.Value },
				library.Functions.findByIndex(config, "Group")
			)

			if library.Functions.findByIndex(config, "CallBack") then
				library.Functions.findByIndex(config, "CallBack")(checkbox.IsEnabled.Value, function(...)
					self:updateCheckbox(checkbox, { ... }, library.Functions.findByIndex(config, "Group"))
				end)
			end
		end)
		checkbox.ImageButton.MouseButton1Click:Connect(function()
			checkbox.IsEnabled.Value = not checkbox.IsEnabled.Value

			self:updateCheckbox(
				checkbox,
				{ Default = checkbox.IsEnabled.Value },
				library.Functions.findByIndex(config, "Group")
			)

			if library.Functions.findByIndex(config, "CallBack") then
				library.Functions.findByIndex(config, "CallBack")(checkbox.IsEnabled.Value, function(...)
					self:updateCheckbox(checkbox, { ... }, library.Functions.findByIndex(config, "Group"))
				end)
			end
		end)

		--self:Resize()

		return checkbox
	end
	function section:addKeybind(config: table): Instance
		config = config or {}
		local keybind = library.Functions.newInstance("ImageButton", {
			Name = "Keybind_Element",
			Parent = (library.Functions.findByIndex(config, "section") or 1) > #self.container
					and self.container[#self.container]
				or self.container[library.Functions.findByIndex(config, "section") or 1],
			BackgroundColor3 = library.Settings.theme.Background,
			-- BackgroundTransparency = 0.3,
			AutoButtonColor = false,
			Size = UDim2.new(1, 0, 0, 30),
		}, {
			library.Functions.newInstance("UICorner", {
				CornerRadius = UDim.new(0, library.Functions.findByIndex(config, "Corner") or 5),
			}),
			library.Functions.newInstance("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
			}),
			library.Functions.newInstance("TextLabel", {
				Name = "Title",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -100, 1, 0),
				Font = Enum.Font.SciFi,
				RichText = true,
				ClipsDescendants = true,
				Text = "<b>" .. (library.Functions.findByIndex(config, "Title") or "KeyBind") .. "</b>",
				TextColor3 = library.Settings.theme.TextColor,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),
			library.Functions.newInstance("ImageLabel", {
				Name = "Button",
				BackgroundColor3 = library.Settings.theme.Contrast,
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(1, -95, 0.5, 0),
				Size = UDim2.new(0, 85, 0, 16),
			}, {
				library.Functions.newInstance("UICorner", {
					CornerRadius = UDim.new(0, 5),
				}),
				library.Functions.newInstance("TextLabel", {
					Name = "Text",
					BackgroundTransparency = 1,
					ClipsDescendants = true,
					Size = UDim2.new(1, 0, 1, 0),
					Font = Enum.Font.SciFi,
					RichText = true,
					Text = "<b>"
						.. (library.Functions.findByIndex(config, "default") and library.Functions.findByIndex(
							config,
							"default"
						).Name or "None")
						.. "</b>",
					TextColor3 = library.Settings.theme.LightContrast,
					TextSize = 11,
					TextTruncate = Enum.TextTruncate.AtEnd,
				}),
			}),
			library.Functions.newInstance("StringValue", {
				Name = "SearchValue",
				Value = library.Functions.findByIndex(config, "Title") or "KeyBind",
			}),
		})

		table.insert(self.modules, keybind)
		--self:Resize()

		local text = keybind.Button.Text

		self.binds[keybind] = {
			callback = function()
				task.spawn(function()
					library.Functions.Tween(text, { TextColor3 = library.Settings.theme.TextColor }, 0.4).Completed:Wait()
					library.Functions.Tween(text, { TextColor3 = library.Settings.theme.LightContrast }, 0.2)
				end)

				if library.Functions.findByIndex(config, "callback") then
					library.Functions.findByIndex(config, "callback")(function(...)
						self:updateKeybind(keybind, { ... })
					end)
				end
			end,
		}

		if library.Functions.findByIndex(config, "default") and library.Functions.findByIndex(config, "callback") then
			self:updateKeybind(keybind, { key = library.Functions.findByIndex(config, "default") })
		end

		keybind.MouseButton1Click:Connect(function()
			library.Functions.Ripple(keybind.Button, 0.5)

			if self.binds[keybind].connection then -- unbind
				return self:updateKeybind(keybind)
			end

			if text.Text == "<b>None</b>" then -- new bind
				text.Text = "<b>...</b>"

				local key = library.Functions.KeyPressed()

				self:updateKeybind(keybind, { key = key.KeyCode })

				if library.Functions.findByIndex(config, "changedCallback") then
					library.Functions.findByIndex(config, "changedCallback")(key, function(...)
						self:updateKeybind(keybind, { ... })
					end)
				end
			end
		end)

		return keybind
	end
	function section:addDropdown(config: table): Instance
		config = config or {}
		local dropdown = library.Functions.newInstance("Frame", {
			Name = "Dropdown_Element",
			Parent = (library.Functions.findByIndex(config, "section") or 1) > #self.container
					and self.container[#self.container]
				or self.container[library.Functions.findByIndex(config, "section") or 1],
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 30),
			ClipsDescendants = true,
		}, {
			library.Functions.newInstance("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 4),
			}),
			library.Functions.newInstance("Frame", {
				BackgroundColor3 = library.Settings.theme.Background,
				Size = UDim2.new(1, 0, 0, 30),
			}, {
				library.Functions.newInstance("UIPadding", {
					PaddingBottom = UDim.new(0, 5),
					PaddingLeft = UDim.new(0, 10),
					PaddingRight = UDim.new(0, 5),
					PaddingTop = UDim.new(0, 5),
				}),
				library.Functions.newInstance("UIListLayout", {
					Padding = UDim.new(0, 0),
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),
				library.Functions.newInstance("UICorner", {
					CornerRadius = UDim.new(0, library.Functions.findByIndex(config, "Corner") or 5),
				}),
				library.Functions.newInstance("TextBox", {
					LayoutOrder = 1,
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundTransparency = 1,
					TextTruncate = Enum.TextTruncate.AtEnd,
					Size = UDim2.new(1, -18, 1, 0),
					Font = Enum.Font.SciFi,
					RichText = true,
					PlaceholderText = "" .. (library.Functions.findByIndex(config, "Title") or "DropDown") .. "",
					PlaceholderColor3 = library.Settings.theme.LightContrast,
					Text = "",
					TextColor3 = library.Settings.theme.TextColor,
					TextSize = 12,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				library.Functions.newInstance("Frame", {
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 18, 0, 18),
				}, {
					library.Functions.newInstance("ImageButton", {
						LayoutOrder = 2,
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 1, 0),
						Image = "rbxassetid://5012539403",
						ImageColor3 = library.Settings.theme.LightContrast,
					}),
				}),
			}),
			library.Functions.newInstance("Frame", {
				Name = "List",
				Size = UDim2.new(1, 0, 1, -34),
				BackgroundColor3 = library.Settings.theme.Background,
			}, {
				library.Functions.newInstance("UICorner", {
					CornerRadius = UDim.new(0, library.Functions.findByIndex(config, "Corner") or 5),
				}),
				library.Functions.newInstance("UIPadding", {
					PaddingBottom = UDim.new(0, 5),
					PaddingLeft = UDim.new(0, 5),
					PaddingRight = UDim.new(0, 5),
					PaddingTop = UDim.new(0, 5),
				}),
				library.Functions.newInstance("ScrollingFrame", {
					Active = true,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					CanvasSize = UDim2.new(0, 0, 0, 0),
					ScrollBarThickness = 3,
					ScrollBarImageColor3 = library.Settings.theme.TextColor,
					ScrollBarImageTransparency = 1,
				}, {
					library.Functions.newInstance("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 4),
					}),
					library.Functions.newInstance("UIPadding", {
						PaddingLeft = UDim.new(0, 5),
						PaddingRight = UDim.new(0, 2),
					}),
				}),
			}),
			library.Functions.newInstance("StringValue", {
				Name = "SearchValue",
				Value = library.Functions.findByIndex(config, "Title") or "DropDown",
			}),
		})

		table.insert(self.modules, dropdown)
		--self:Resize()

		local search = dropdown.Frame
		local focused

		local list = library.Functions.findByIndex(config, "List") or {}
		local multiList = {}
		local multiListGroup = {}
		local savedValues = {}

		self:updateDropdown(dropdown, {
			Multi = library.Functions.findByIndex(config, "Multi") or false,
			Default = library.Functions.findByIndex(config, "Default"),
			List = list,
			CallBack = library.Functions.findByIndex(config, "CallBack"),
			MultiList = multiList,
			Group = multiListGroup,
			SavedValues = savedValues,
		})

		local function toggle(value: boolean)
			library.Functions.Tween(dropdown.Frame.Frame.ImageButton, { Rotation = value and 180 or 0 }, 0.3)
			library.Functions.Tween(
				dropdown.Frame.Frame.ImageButton,
				{ ImageColor3 = value and library.Settings.theme.TextColor or library.Settings.theme.LightContrast },
				0.3
			)

			if value then
				library.Functions.Tween(dropdown, {
					Size = UDim2.new(
						1,
						0,
						0,
						(#list == 0 and 30) or 44 + math.clamp(#list, 0, 3) * 25 + ((math.clamp(#list, 0, 3) - 1) * 4)
					),
				}, 0.3)
				if #list > 3 then
					dropdown.List.ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, #list * 25 + ((#list - 1) * 4))
					dropdown.List.ScrollingFrame.ScrollBarImageTransparency = 0
				else
					dropdown.List.ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
					dropdown.List.ScrollingFrame.ScrollBarImageTransparency = 1
				end
				for i, _ in pairs(library.Settings.theme) do
					local objectIndex = table.find(
						objects[tostring(i)]["ImageColor3"],
						dropdown.Frame.Frame.ImageButton
					)
					if tostring(i) ~= "TextColor" then
						if objectIndex then
							table.remove(objects[tostring(i)]["ImageColor3"], objectIndex)
						end
					else
						if not objectIndex then
							table.insert(objects[tostring(i)]["ImageColor3"], dropdown.Frame.Frame.ImageButton)
						end
					end
				end
			else
				library.Functions.Tween(dropdown, { Size = UDim2.new(1, 0, 0, 30) }, 0.3)
				dropdown.List.ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
				dropdown.List.ScrollingFrame.ScrollBarImageTransparency = 1
				for i, _ in pairs(library.Settings.theme) do
					local objectIndex = table.find(
						objects[tostring(i)]["ImageColor3"],
						dropdown.Frame.Frame.ImageButton
					)
					if objectIndex then
						table.remove(objects[tostring(i)]["ImageColor3"], objectIndex)
					end
				end
			end
		end

		search.Frame.ImageButton.MouseButton1Click:Connect(function()
			if search.Frame.ImageButton.Rotation == 0 then
				toggle(true)
			else
				toggle(false)
			end
		end)

		search.TextBox.Focused:Connect(function()
			if search.Frame.ImageButton.Rotation == 0 then
				toggle(true)
			end
		end)

		search.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
			local entries = 0
			for i, v in pairs(dropdown.List.ScrollingFrame:GetChildren()) do
				if v:FindFirstChild("ListName") then
					if v:FindFirstChild("ListName").Value:lower():find(search.TextBox.Text:lower()) then
						entries += 1
						v.Visible = true
					else
						v.Visible = false
					end
				end
			end
			library.Functions.Tween(dropdown, {
				Size = UDim2.new(
					1,
					0,
					0,
					(entries == 0 and 30) or 44 + math.clamp(entries, 0, 3) * 25 + ((math.clamp(entries, 0, 3) - 1) * 4)
				),
			}, 0.3)
			if entries > 3 then
				dropdown.List.ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, entries * 25 + ((entries - 1) * 4))
				dropdown.List.ScrollingFrame.ScrollBarImageTransparency = 0
			else
				dropdown.List.ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
				dropdown.List.ScrollingFrame.ScrollBarImageTransparency = 1
			end
		end)

		dropdown:GetPropertyChangedSignal("Size"):Connect(function()
			self.page:Resize()
		end)

		return dropdown
	end
	function section:addViewPlayer(config: table): Instance
		config = config or {}
		local ViewPlayer = library.Functions.newInstance("ViewportFrame", {
			Name = "ViewPlayer_Element",
			Parent = (library.Functions.findByIndex(config, "section") or 1) > #self.container
					and self.container[#self.container]
				or self.container[library.Functions.findByIndex(config, "section") or 1],
			BackgroundColor3 = library.Settings.theme.Background,
			Size = library.Functions.findByIndex(config, "Size") or UDim2.new(1, 0, 0, 250),
		}, {
			library.Functions.newInstance("UICorner", {
				CornerRadius = UDim.new(0, library.Functions.findByIndex(config, "Corner") or 5),
			}),
			library.Functions.newInstance("WorldModel"),
			library.Functions.newInstance("StringValue", {
				Name = "SearchValue",
				Value = library.Functions.findByIndex(config, "Model") and library.Functions.findByIndex(
					config,
					"Model"
				).Name or "ViewPlayer",
			}),
		})
		table.insert(self.modules, ViewPlayer)
		local PV_connections = {}

		local function Update(newConfig: table)
			for i, v in pairs(PV_connections) do
				pcall(function()
					v:Disconnect()
					connections[i] = nil
				end)
			end
			newConfig = newConfig or config
			if library.Functions.findByIndex(newConfig, "Model") then
				ViewPlayer.SearchValue.Value = library.Functions.findByIndex(newConfig, "Model").Name
			end

			ViewPlayer.WorldModel:ClearAllChildren()

			library.Functions.findByIndex(newConfig, "Model").Archivable = true

			local model = library.Functions.findByIndex(newConfig, "Model"):Clone()
			model.Parent = ViewPlayer.WorldModel
			model.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
			model:SetPrimaryPartCFrame(CFrame.new(Vector3.new(0, 0, -5), Vector3.new(0, 0, 0)))

			local function UpdateAnim(Char, CloneChar)
				if #CloneChar.Humanoid:GetPlayingAnimationTracks() > #Char.Humanoid:GetPlayingAnimationTracks() then
					for i = #CloneChar.Humanoid:GetPlayingAnimationTracks(), #Char.Humanoid:GetPlayingAnimationTracks(), -1 do
						pcall(function()
							CloneChar.Humanoid:GetPlayingAnimationTracks()[i]:Stop(0.1)
						end)
					end
				end
				for i, v in pairs(Char.Humanoid:GetPlayingAnimationTracks()) do
					if not CloneChar.Humanoid:GetPlayingAnimationTracks()[i] then
						CloneChar.Humanoid.Animator:LoadAnimation(v.Animation):Play(0.2)
					else
						if CloneChar.Humanoid:GetPlayingAnimationTracks()[i].Animation.AnimationId ~= v.Animation.AnimationId then
							for k = #CloneChar.Humanoid:GetPlayingAnimationTracks(), i, -1 do
								pcall(function()
									CloneChar.Humanoid:GetPlayingAnimationTracks()[i]:Stop(0.1)
								end)
							end
							CloneChar.Humanoid.Animator:LoadAnimation(v.Animation):Play(0.2)
						end
					end
				end
			end

			task.spawn(function()
				local connection = game:GetService("RunService").Heartbeat:Connect(function()
					pcall(function()
						UpdateAnim(library.Functions.findByIndex(newConfig, "Model"), model)
					end)
				end)
				table.insert(PV_connections, connection)
			end)

			local currentX
			local MouseButton1Down = false
			local connection = ViewPlayer.InputBegan:Connect(function(input, processed)
				if not processed and input.UserInputType == Enum.UserInputType.MouseButton1 then
					repeat task.wait()
						MouseButton1Down = true
					until not game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
					MouseButton1Down = false
					currentX = nil
				end
			end)
			table.insert(PV_connections, connection)
			local connection = ViewPlayer.MouseMoved:Connect(function(X,Y)
				if not MouseButton1Down then return end
				if currentX then
					ViewPlayer.WorldModel[library.Functions.findByIndex(newConfig, "Model").Name].PrimaryPart.CFrame *= CFrame.fromEulerAnglesXYZ(0,((X-currentX)*.025),0)
				end
				currentX = X
			end)
			table.insert(PV_connections, connection)
			local connection = ViewPlayer.MouseEnter:Connect(function() library.DraggingDisable = true end)
			table.insert(PV_connections, connection)
			local connection = ViewPlayer.MouseLeave:Connect(function() library.DraggingDisable = false end)
			table.insert(PV_connections, connection)
		end
		if library.Functions.findByIndex(config, "Model") then
			Update()
		end
		return { ViewPlayer = ViewPlayer, Update = Update }
	end
	-- function section:addPlayerBox(config: table): Instance
	-- 	config = config or {}

	-- end
	-- function section:addGridPanel(config: table): Instance
	-- 	config = config or {}

	-- 	local GridPanel = 
	-- 	library.Functions.newInstance("ScrollingFrame", {
	-- 		Name = "GridPanel_Element",
	-- 		ClipsDescendants = true,
	-- 		Parent = (library.Functions.findByIndex(config, "section") or 1) > #self.container and self.container[#self.container] or self.container[library.Functions.findByIndex(config, "section") or 1],
	-- 		Size = UDim2.new(1, 0, 0, 30),
	-- 		BackgroundTransparency = 1,
	-- 		BorderSizePixel = 0,
	-- 		ScrollBarThickness = 3,
	-- 		CanvasSize = UDim2.new(0, 0, 0, 0),
	-- 		ScrollBarImageColor3 = library.Settings.theme.TextColor,
	-- 	}, {
	-- 		library.Functions.newInstance("UIGridLayout", {
	-- 			HorizontalAlignment = Enum.HorizontalAlignment.Center,
	-- 			CellPadding = UDim2.new(0, 5, 0, 5),
	-- 			CellSize = library.Functions.findByIndex(config, "Size"),
	-- 		}),
	-- 		library.Functions.newInstance("StringValue", {
	-- 			Name = "SearchValue",
	-- 			Value = library.Functions.findByIndex(config, "Title") or "Button",
	-- 		}),
	-- 	})

	-- 	-- add data

	-- 	table.insert(self.modules, GridPanel)

	-- 	return GridPanel
	-- end

	function section:updateButton(button: Instance, config: table)
		config = config or {}
		button = self:getModule(button)

		if library.Functions.findByIndex(config, "Title") then
			button.Text = "<b>" .. library.Functions.findByIndex(config, "Title") .. "</b>"
			button.SearchValue.Value = library.Functions.findByIndex(config, "Title")
		end
	end
	function section:updateLabel(label: Instance, config: table)
		config = config or {}
		label = self:getModule(label)

		if library.Functions.findByIndex(config, "Text") then
			for i = 1, library.Functions.findByIndex(config, "Text"):len() do
				label.Text = library.Functions.findByIndex(config, "Text"):sub(1, i)
				label.Size = UDim2.new(1, 0, 0, label.TextBounds.Y)
			end
		end
	end
	function section:updateSlider(slider: Instance, config: table)
		config = config or {}
		slider = self:getModule(slider)

		if library.Functions.findByIndex(config, "Title") then
			slider.Title.Text = "<b>" .. library.Functions.findByIndex(config, "Title") .. "</b>"
			slider.Title.Size = UDim2.new(
				0,
				game:GetService("TextService"):GetTextSize(
					library.Functions.findByIndex(config, "Title"),
					12,
					Enum.Font.SciFi,
					Vector2.new(math.huge, 14)
				).X + 5,
				0,
				14
			)
			slider.SearchValue.Value = library.Functions.findByIndex(config, "Title")
		end

		local bar = slider.Slider.Bar

		local percent = (mouse.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X

		if library.Functions.findByIndex(config, "Value") then
			percent = (library.Functions.findByIndex(config, "Value") - library.Functions.findByIndex(config, "Min"))
				/ (library.Functions.findByIndex(config, "Max") - library.Functions.findByIndex(config, "Min"))
		end

		percent = math.clamp(percent, 0, 1)
		config.Value = library.Functions.findByIndex(config, "Value")
			or math.floor(
				library.Functions.findByIndex(config, "Min")
					+ (library.Functions.findByIndex(config, "Max") - library.Functions.findByIndex(config, "Min"))
						* percent
			)

		library.Functions.Tween(bar.Fill, { Size = UDim2.new(percent, 0, 1, 0) }, 0.1)

		slider.Count.Text = "<b>" .. library.Functions.findByIndex(config, "Value") .. "</b>"

		return library.Functions.findByIndex(config, "Value")
	end
	function section:updateToggle(toggle: Instance, config: table)
		config = config or {}
		toggle = self:getModule(toggle)

		local position = {
			In = UDim2.new(0, 0, 0, 0),
			Out = UDim2.new(1, -15, 0, 0),
		}

		local Button = toggle.Frame.Button
		config.Default = library.Functions.findByIndex(config, "Default") and "Out" or "In"

		if library.Functions.findByIndex(config, "Title") then
			toggle.Title.Text = "<b>" .. library.Functions.findByIndex(config, "Title") .. "</b>"
			toggle.SearchValue.Value = library.Functions.findByIndex(config, "Title")
		end

		if library.Functions.findByIndex(config, "Default") == "In" then
			for i, _ in pairs(library.Settings.theme) do
				local objectIndex = table.find(objects[tostring(i)]["BackgroundColor3"], Button)
				if tostring(i) ~= "LightContrast" then
					if objectIndex then
						table.remove(objects[tostring(i)]["BackgroundColor3"], objectIndex)
					end
				else
					if not objectIndex then
						table.insert(objects[tostring(i)]["BackgroundColor3"], Button)
					end
				end
			end
			library.Functions.Tween(
				Button,
				{ Position = position[library.Functions.findByIndex(config, "Default")] },
				0.3
			)
			library.Functions.Tween(Button, { BackgroundColor3 = library.Settings.theme.LightContrast }, 0.3)
		else
			for i, _ in pairs(library.Settings.theme) do
				local objectIndex = table.find(objects[tostring(i)]["BackgroundColor3"], Button)
				if tostring(i) ~= "TextColor" then
					if objectIndex then
						table.remove(objects[tostring(i)]["BackgroundColor3"], objectIndex)
					end
				else
					if not objectIndex then
						table.insert(objects[tostring(i)]["BackgroundColor3"], Button)
					end
				end
			end
			library.Functions.Tween(Button, { BackgroundColor3 = library.Settings.theme.TextColor }, 0.3)
		end
		library.Functions.Tween(Button, { Size = UDim2.new(0, 32, 0, 16) }, 0.3)
		task.wait(0.2)
		library.Functions.Tween(Button, { Size = UDim2.new(0, 16, 0, 16) }, 0.2)
		library.Functions.Tween(Button, { Position = position[library.Functions.findByIndex(config, "Default")] }, 0.3)
	end
	function section:updateCheckbox(checkbox: Instance, config: table, group: string)
		config = config or {}
		checkbox = self:getModule(checkbox)
		if group then
			for _, v in pairs(checkboxGroups[group]) do
				if v ~= checkbox then
					v.IsEnabled.Value = false
					for i, _ in pairs(library.Settings.theme) do
						local objectIndex = table.find(objects[tostring(i)]["BackgroundColor3"], v.ImageButton)
						if tostring(i) ~= "Background" then
							if objectIndex then
								table.remove(objects[tostring(i)]["BackgroundColor3"], objectIndex)
							end
						else
							if not objectIndex then
								table.insert(objects[tostring(i)]["BackgroundColor3"], v.ImageButton)
							end
						end
					end
					library.Functions.Tween(
						v.ImageButton,
						{ BackgroundColor3 = library.Settings.theme.Background },
						0.3
					)
					library.Functions.Tween(v.ImageButton.Frame, { BackgroundTransparency = 0 }, 0.3)
					library.Functions.Tween(v.ImageButton.ImageLabel, { ImageTransparency = 1 }, 0.3)
				end
			end
		end

		if library.Functions.findByIndex(config, "Title") then
			checkbox.Title.Text = "<b>" .. library.Functions.findByIndex(config, "Title") .. "</b>"
			checkbox.SearchValue.Value = library.Functions.findByIndex(config, "Title")
		end

		if library.Functions.findByIndex(config, "Default") then
			for i, _ in pairs(library.Settings.theme) do
				local objectIndex = table.find(objects[tostring(i)]["BackgroundColor3"], checkbox.ImageButton)
				if tostring(i) ~= "Accent" then
					if objectIndex then
						table.remove(objects[tostring(i)]["BackgroundColor3"], objectIndex)
					end
				else
					if not objectIndex then
						table.insert(objects[tostring(i)]["BackgroundColor3"], checkbox.ImageButton)
					end
				end
			end
			library.Functions.Tween(checkbox.ImageButton, { BackgroundColor3 = library.Settings.theme.Accent }, 0.3)
			library.Functions.Tween(checkbox.ImageButton.Frame, { BackgroundTransparency = 1 }, 0.3)
			task.wait(0.15)
			library.Functions.Tween(checkbox.ImageButton.ImageLabel, { ImageTransparency = 0 }, 0.2)
		else
			for i, _ in pairs(library.Settings.theme) do
				local objectIndex = table.find(objects[tostring(i)]["BackgroundColor3"], checkbox.ImageButton)
				if tostring(i) ~= "Background" then
					if objectIndex then
						table.remove(objects[tostring(i)]["BackgroundColor3"], objectIndex)
					end
				else
					if not objectIndex then
						table.insert(objects[tostring(i)]["BackgroundColor3"], checkbox.ImageButton)
					end
				end
			end
			library.Functions.Tween(checkbox.ImageButton, { BackgroundColor3 = library.Settings.theme.Background }, 0.3)
			library.Functions.Tween(checkbox.ImageButton.Frame, { BackgroundTransparency = 0 }, 0.3)
			library.Functions.Tween(checkbox.ImageButton.ImageLabel, { ImageTransparency = 1 }, 0.3)
		end
	end
	function section:updateKeybind(keybind: Instance, config: table)
		config = config or {}
		keybind = self:getModule(keybind)

		local text = keybind.Button.Text
		local bind = self.binds[keybind]

		if library.Functions.findByIndex(config, "title") then
			keybind.Title.Text = "<b>" .. library.Functions.findByIndex(config, "Title") .. "</b>"
			keybind.SearchValue.Value = library.Functions.findByIndex(config, "Title")
		end

		if bind.connection then
			bind.connection = bind.connection:UnBind()
			local a = table.find(binds, bind.connection)
			if a then
				table.remove(binds, a)
			end
		end

		if library.Functions.findByIndex(config, "key") then
			self.binds[keybind].connection = library.Functions.BindToKey(
				library.Functions.findByIndex(config, "key"),
				bind.callback
			)
			table.insert(binds, self.binds[keybind].connection)
			text.Text = "<b>" .. library.Functions.findByIndex(config, "key").Name .. "</b>"
		else
			text.Text = "<b>None</b>"
		end
	end
	function section:updateDropdown(dropdown: Instance, config: table)
		config = config or {}
		dropdown = self:getModule(dropdown)

		if library.Functions.findByIndex(config, "Title") then
			dropdown.Frame.TextBox.Text = "<b>" .. library.Functions.findByIndex(config, "Title") .. "</b>"
			dropdown.SearchValue.Value = library.Functions.findByIndex(config, "Title")
		end

		local function updateDropdown_Item(dropdown_Item: Instance, value: boolean, multi: boolean)
			if not multi then
				for _, v in pairs(library.Functions.findByIndex(config, "Group")) do
					if v ~= dropdown_Item then
						v.IsEnabled.Value = false
						for i, _ in pairs(library.Settings.theme) do
							local objectIndex = table.find(objects[tostring(i)]["BackgroundColor3"], v.ImageButton)
							if tostring(i) ~= "Background" then
								if objectIndex then
									table.remove(objects[tostring(i)]["BackgroundColor3"], objectIndex)
								end
							else
								if not objectIndex then
									table.insert(objects[tostring(i)]["BackgroundColor3"], v.ImageButton)
								end
							end
						end
						library.Functions.Tween(
							v.ImageButton,
							{ BackgroundColor3 = library.Settings.theme.Background },
							0.3
						)
						library.Functions.Tween(v.ImageButton.Frame, { BackgroundTransparency = 0 }, 0.3)
						library.Functions.Tween(v.ImageButton.ImageLabel, { ImageTransparency = 1 }, 0.3)
					end
				end
			end

			if value then
				for i, _ in pairs(library.Settings.theme) do
					local objectIndex = table.find(objects[tostring(i)]["BackgroundColor3"], dropdown_Item.ImageButton)
					if tostring(i) ~= "Accent" then
						if objectIndex then
							table.remove(objects[tostring(i)]["BackgroundColor3"], objectIndex)
						end
					else
						if not objectIndex then
							table.insert(objects[tostring(i)]["BackgroundColor3"], dropdown_Item.ImageButton)
						end
					end
				end
				library.Functions.Tween(
					dropdown_Item.ImageButton,
					{ BackgroundColor3 = library.Settings.theme.Accent },
					0.3
				)
				library.Functions.Tween(dropdown_Item.ImageButton.Frame, { BackgroundTransparency = 1 }, 0.3)
				task.wait(0.15)
				library.Functions.Tween(dropdown_Item.ImageButton.ImageLabel, { ImageTransparency = 0 }, 0.2)
			else
				for i, _ in pairs(library.Settings.theme) do
					local objectIndex = table.find(objects[tostring(i)]["BackgroundColor3"], dropdown_Item.ImageButton)
					if tostring(i) ~= "DarkContrast" then
						if objectIndex then
							table.remove(objects[tostring(i)]["BackgroundColor3"], objectIndex)
						end
					else
						if not objectIndex then
							table.insert(objects[tostring(i)]["BackgroundColor3"], dropdown_Item.ImageButton)
						end
					end
				end
				library.Functions.Tween(
					dropdown_Item.ImageButton,
					{ BackgroundColor3 = library.Settings.theme.DarkContrast },
					0.3
				)
				library.Functions.Tween(dropdown_Item.ImageButton.Frame, { BackgroundTransparency = 0 }, 0.3)
				library.Functions.Tween(dropdown_Item.ImageButton.ImageLabel, { ImageTransparency = 1 }, 0.3)
			end
		end

		if library.Functions.findByIndex(config, "List") then
			table.clear(library.Functions.findByIndex(config, "Group"))
			for i, button in pairs(dropdown.List.ScrollingFrame:GetChildren()) do
				if button:IsA("ImageButton") then
					button:Destroy()
				end
			end
			for i, value in pairs(library.Functions.findByIndex(config, "List") or {}) do
				local Dropdown_Item = library.Functions.newInstance("ImageButton", {
					BackgroundTransparency = 1,
					Parent = dropdown.List.ScrollingFrame,
					Size = UDim2.new(1, 0, 0, 25),
					AutoButtonColor = false,
				}, {
					library.Functions.newInstance("BoolValue", {
						Name = "IsEnabled",
						Value = library.Functions.findByIndex(config, "SavedValues")[value] or false,
					}),
					library.Functions.newInstance("StringValue", {
						Name = "ListName",
						Value = value,
					}),
					library.Functions.newInstance("UIListLayout", {
						Padding = UDim.new(0, 10),
						VerticalAlignment = Enum.VerticalAlignment.Center,
						FillDirection = Enum.FillDirection.Horizontal,
					}),
					library.Functions.newInstance("ImageButton", {
						BackgroundColor3 = library.Settings.theme.DarkContrast,
						Size = UDim2.new(0, 20, 0, 20),
						AutoButtonColor = false,
					}, {
						library.Functions.newInstance("UICorner", {
							CornerRadius = UDim.new(0, 5),
						}),
						library.Functions.newInstance("Frame", {
							BackgroundColor3 = library.Settings.theme.DarkContrast,
							Size = UDim2.new(0, 18, 0, 18),
							Position = UDim2.new(0, 1, 0, 1),
						}, {
							library.Functions.newInstance("UICorner", {
								CornerRadius = UDim.new(0, 5),
							}),
						}),
						library.Functions.newInstance("ImageLabel", {
							BackgroundTransparency = 1,
							Size = UDim2.new(0, 16, 0, 16),
							Position = UDim2.new(0, 2, 0, 2),
							Image = "rbxassetid://7072706620",
							ImageColor3 = library.Settings.theme.TextColor,
							ImageTransparency = 1,
						}),
					}),
					library.Functions.newInstance("TextLabel", {
						AnchorPoint = Vector2.new(0, 0.5),
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 10, 0.5, 1),
						Size = UDim2.new(0.5, 0, 1, 0),
						Font = Enum.Font.SciFi,
						RichText = true,
						Text = value,
						TextColor3 = library.Settings.theme.TextColor,
						TextSize = 12,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				})
				updateDropdown_Item(
					Dropdown_Item,
					Dropdown_Item.IsEnabled.Value,
					library.Functions.findByIndex(config, "Multi")
				)

				if not library.Functions.findByIndex(config, "Multi") then
					table.insert(library.Functions.findByIndex(config, "Group"), Dropdown_Item)
				end

				Dropdown_Item.MouseButton1Click:Connect(function()
					Dropdown_Item.IsEnabled.Value = not Dropdown_Item.IsEnabled.Value
					library.Functions.findByIndex(config, "SavedValues")[value] = Dropdown_Item.IsEnabled.Value

					if library.Functions.findByIndex(config, "Multi") then
						if Dropdown_Item.IsEnabled.Value then
							table.insert(library.Functions.findByIndex(config, "MultiList"), value)
						else
							if table.find(library.Functions.findByIndex(config, "MultiList"), value) then
								table.remove(
									library.Functions.findByIndex(config, "MultiList"),
									table.find(library.Functions.findByIndex(config, "MultiList"), value)
								)
							end
						end
					end

					updateDropdown_Item(
						Dropdown_Item,
						Dropdown_Item.IsEnabled.Value,
						library.Functions.findByIndex(config, "Multi")
					)

					if library.Functions.findByIndex(config, "CallBack") then
						if library.Functions.findByIndex(config, "Multi") then
							library.Functions.findByIndex(config, "CallBack")(
								library.Functions.findByIndex(config, "MultiList"),
								function(...)
									self:updateDropdown(dropdown, ...)
								end
							)
						else
							if Dropdown_Item.IsEnabled.Value then
								library.Functions.findByIndex(config, "CallBack")(value, function(...)
									self:updateDropdown(dropdown, ...)
								end)
							end
						end
					end
				end)
				Dropdown_Item.ImageButton.MouseButton1Click:Connect(function()
					Dropdown_Item.IsEnabled.Value = not Dropdown_Item.IsEnabled.Value
					library.Functions.findByIndex(config, "SavedValues")[value] = Dropdown_Item.IsEnabled.Value

					if library.Functions.findByIndex(config, "Multi") then
						if Dropdown_Item.IsEnabled.Value then
							table.insert(library.Functions.findByIndex(config, "MultiList"), value)
						else
							if table.find(library.Functions.findByIndex(config, "MultiList"), value) then
								table.remove(
									library.Functions.findByIndex(config, "MultiList"),
									table.find(library.Functions.findByIndex(config, "MultiList"), value)
								)
							end
						end
					end

					updateDropdown_Item(
						Dropdown_Item,
						Dropdown_Item.IsEnabled.Value,
						library.Functions.findByIndex(config, "Multi")
					)

					if library.Functions.findByIndex(config, "CallBack") then
						if library.Functions.findByIndex(config, "Multi") then
							library.Functions.findByIndex(config, "CallBack")(
								library.Functions.findByIndex(config, "MultiList"),
								function(...)
									self:updateDropdown(dropdown, ...)
								end
							)
						else
							if Dropdown_Item.IsEnabled.Value then
								library.Functions.findByIndex(config, "CallBack")(value, function(...)
									self:updateDropdown(dropdown, ...)
								end)
							end
						end
					end
				end)
			end
		end
	end
end

return library

-- local window = library.new() -- create new window
-- local prefix = Enum.KeyCode.Home

-- local usePrefix = game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
-- 	if not processed and input.KeyCode == prefix then
-- 		window:toggle()
-- 	end
-- end)
-- table.insert(connections, usePrefix)

-- local page1 = window:addPage() -- new page
-- local page2 = window:addPage() -- new page
-- local page3 = window:addPage() -- new page
-- local page4 = window:addPage() -- new page
-- local section1 = page2:addSection({ Divisions = 2 }) -- new section

-- section1:addViewPlayer({ model = char })
-- section1:addButton({ section = 2 })
-- section1:addSlider({ section = 2, Max = 10 })
-- section1:addToggle({ section = 2 })
-- section1:addKeybind({ section = 2 })
-- section1:addCheckbox({ section = 2 })
-- section1:addClipboardLabel({ section = 2, text = "https://discord.gg/PremierX" })
-- section1:addDropdown({
-- 	section = 2,
-- 	Title = "MultiDropdown",
-- 	Multi = true,
-- 	List = { "Item 1", "Item 2", "Item 3" }
-- })
-- section1:addDropdown({
-- 	section = 2,
-- 	List = { "Item 1", "Item 2", "Item 3", "Item 4" }
-- })

-- window:SelectPage(page2, true)
