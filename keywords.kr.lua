-------------------------------------------
-- 최종수정 : 2020/07/30

-- 각종 필터링 정보를 담고 있는 파일입니다.
-- 패치로 새로운 던전이 추가되거나 난이도가 추가될 경우 이 파일에서 수정하시면 됩니다.
-- 난이도 추가시에는 FindParty.lua 파일에서 별도 처리가 필요할 수도 있습니다.

-- ==============================
-- 던전 분류 키워드를 정의합니다.
-- 아래 모든 필드가 있어야합니다.
-- category는 새로운 분류를 추가할 때 이용하시면 됩니다.
-- name은 던전 이름을 입력하며, 낮은 번호가 우선으로 인식됩니다. 번호가 중복되지 않도록 하여주시기 바랍니다.
-- color는 해당 던전의 색상을 지정하는 곳입니다. FindParty.lua 파일내 FP_Category_Color의 테이블 이름에 맞게 입력하셔야 합니다.
-- keywords는 파티모집 문구에 해당 문자열이 있을 경우 해당 난이도로 분류할 수 있도록 정의하는 부분입니다.

FP_DUNGEON_KEYWORDS = {
	[1] = {
		category = "공격대",
		dungeon = {
			[1] = {
				name = "낙스라마스",
				color = "raid40",
				keywords = {"naxx"},
			},
			[2] = {
				name = "안퀴라즈 사원",
				color = "raid40",
				keywords = {"aq40"},
				excludekeywords = {"폐허", "페허", "가라앉은"},
			},
			[3] = {
				name = "안퀴라즈 폐허",
				color = "raid20",
				keywords = {"aq20"},
			},
			[4] = {
				name = "줄구룹",
				color = "raid20",
				keywords = {"zg"},
			},
			[5] = {
				name = "검은날개 둥지",
				color = "raid40",
				keywords = {"bwl", "bw"},
			},
			[6] = {
				name = "화산 심장부",
				color = "raid40",
				keywords = {"mc", "molten"},
				excludekeywords = {"하실", "나락"}, -- 입장퀘 필터링
			},
			[7] = {
				name = "오닉시아",
				color = "raid40",
				keywords = {"onyx"},
				excludekeywords = {"하실", "해골", "윈저", "나락"}, -- 입장퀘 필터링
			},
		},
	},
	[2] = {
		category = "던전",
		dungeon = {
			[1] = {
				name = "가시덩굴 구릉",
				color = "dungeon",
				keywords = {"rfd"},
			},
			[2] = {
				name = "가시덩굴 우리",
				color = "dungeon",
				keywords = {"rfk"},
				excludekeywords = {"마우리"},
			},
			[3] = {
				name = "검은심연의 나락",
				color = "dungeon",
				keywords = {"bfd", "famoth"},
				excludekeywords = {"바위", "심연의홀", "홀"},
			},
			[4] = {
				name = "검은바위 나락",
				color = "dungeon",
				keywords = {"brd"},
				excludekeywords = {"심연"},
			},
			[5] = {
				name = "검은바위 첨탑 하층",
				color = "dungeon",
				keywords = {"lbrs"},
			},
			[6] = {
				name = "검은바위 첨탑 상층",
				color = "dungeon",
				keywords = {"ubrs"},
			},
			[7] = {
				name = "그림자송곳니 성채",
				color = "dungeon",
				keywords = {"sfk"},
			},
			[8] = {
				name = "놈리건",
				color = "dungeon",
				keywords = {"gnomer"},
			},
			[9] = {
				name = "마라우돈",
				color = "dungeon",
				keywords = {"mara", "blackstone"},
			},
			[10] = {
				name = "붉은십자군 수도원",
				color = "dungeon",
				keywords = {"sm", "cath", "lib", "grave", "arm"},
				excludekeywords = {"진홍"},
			},
			[11] = {
				name = "성난불길 협곡",
				color = "dungeon",
				keywords = {"rfc"},
			},
			[12] = {
				name = "스톰윈드 지하감옥",
				color = "dungeon",
				keywords = {"stock"},
			},
			[13] = {
				name = "스칼로맨스",
				color = "dungeon",
				keywords = {"scholo", "scollo"},
			},
			[14] = {
				name = "스트라솔름",
				color = "dungeon",
				keywords = {"strat"},
			},
			[15] = {
				name = "아탈학카르 신전",
				color = "dungeon",
				keywords = {"st", "sunken", "blackstone"},
				excludekeywords = {"strat"}
			},
			[16] = {
				name = "울다만",
				color = "dungeon",
				keywords = {"ulda"},
			},
			[17] = {
				name = "죽음의 폐광",
				color = "dungeon",
				keywords = {"vc"},
			},
			[18] = {
				name = "줄파락",
				color = "dungeon",
				keywords = {"zf"},
			},
			[19] = {
				name = "통곡의 동굴",
				color = "dungeon",
				keywords = {"wc"},
			},
			[20] = {
				name = "혈투의 전장",
				color = "dungeon",
				keywords = {"dm"},
			},
		},
	},
	[3] = {
		category = "PvP",
		dungeon = {
			[1] = {
				name = "명예 (PvP)",
				color = "bg",
				keywords = {"bg", "ab", "basin", "av", "wsg", "warsong", "twink"},
				excludekeywords = {"about", "have", "leave", "길드"},
			},
		},
	},
	[4] = {
		category = "필드보스",
		dungeon = {
			[1] = {
				name = "필드보스",
				color = "field",
				keywords = {"카자크", "카작", "아주어고스", "4용", "녹용", "녹용팟", "레손", "이손드레", "에메리스", "타에라"},
			},
		}
	},
	[5] = {
		category = "퀘스트",
		dungeon = {
			[1] = {
				name = "퀘스트",
				color = "quest",
				keywords = {"하실", "입장퀘", "상급소환", "실리"},
				excludekeywords = {"골팟", "올분", "참석", "길드", "하신", "명점", "쟁", "전장", "킬하실"},
			},
		},
	},
}

-- 던전 이름 뒤에 다음 문자열이 기록되어 있으면 무시합니다.
-- 운다손, 갈레온손 같은 경우를 제거하기 위함입니다.
FP_DUNGEON_IGNORE_POSTFIX_KEYWORDS = {
	"손",--운다 손
	"뜸",--운다 뜸
	"없",--운다 없나요?
	"ㅅ"--운다 ㅅㅅ
}

-- 목록 툴팁에서 가독성에 영향을 주는 문자열을 사전 제거 합니다. 가능한 최소로 사용하세요.
FP_TOOLTIP_IGNORE_KEYWORDS = {
	-- 툴팁에는 이모티콘이 표시되지 않으므로 이모티콘 관련 문자들 제거
	"{skull}", "{star}", "{diamond}", "{triangle}", "{cross}", "{circle}", "{coin}", "{moon}", "{square}", "{rt1}", "{rt2}", "{rt3}", "{rt4}", "{rt5}", "{rt6}", "{rt7}", "{rt8}"
}

-- 스팸 메시지 필터링 문자열
FP_GLOBAL_EXCLUDE_KEYWORDS = {
	"lfg",
	"길드에서",
	"길드원",
	"길드는",
	"길원",
	"친목",
	"함께",
	"파밍",
	"렙업",
	"레벨업",
	"레벨링",
	"삽니다",
	"닌자",
	"먹튀",
}
