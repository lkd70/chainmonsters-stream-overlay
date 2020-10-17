#NoEnv
#SingleInstance force
SendMode Input
CoordMode, Pixel, Screen


Run, .\launch.vbs, .\serve, Min
OnExit("ExitFunc")

WinGetPos, winX, winY, winWidth, WinHeight, ChainMonsters
EncountersWidthClick:= WinX + Round(winWidth * 0.546875)
EncountersHeightClick:= WinY + Round(WinHeight * 0.76851852)
GoatstickWidthClick:= WinX + Round(winWidth * 0.75572917)
GoatstickHeightClick:= WinY + Round(WinHeight * 0.37592593)
SapliWidthClick:= WinX + Round(winWidth * 0.5921875)
SapliHeightClick:= WinY + Round(WinHeight * 0.50740741)
StingloreonWidthClick:= WinX + Round(winWidth * 0.7078125)
StingloreonHeightClick:= WinY + Round(WinHeight * 0.32037037)
DuckoWidthClick:= WinX + Round(winWidth * 0.68333333)
DuckoHeightClick:= WinY + Round(WinHeight * 0.26296296)
BurbroWidthClick:= WinX + Round(winWidth * 0.71614583)
BurbroHeightClick:= WinY + Round(WinHeight * 0.28425926)
BeavoWidthClick:= WinX + Round(winWidth * 0.72135417)
BeavoHeightClick:= WinY + Round(WinHeight * 0.31759259)
MudcrabWidthClick:= WinX + Round(winWidth * 0.56354167)
MudcrabHeightClick:= WinY + Round(WinHeight * 0.51111111)
WormiWidthClick:= WinX + Round(winWidth * 0.7015625)
WormiHeightClick:= WinY + Round(WinHeight * 0.26388889)
DreamcrawlWidthClick:= WinX + Round(winWidth * 0.65729167)
DreamcrawlHeightClick:= WinY + Round(WinHeight * 0.51018519)
DragonwormWidthClick:= WinX + Round(winWidth * 0.69322917)
DragonwormHeightClick:= WinY + Round(WinHeight * 0.30740741)
BackpackActiveWidth:= WinX + Round(winWidth * 0.20989583)
BackpackActiveHeight:= WinY + Round(WinHeight * 0.11851852)

Loop {
	; Encounter check
	PixelGetColor, color, EncountersWidthClick, EncountersHeightClick
	if (color == 0X2A1C00) {
		sleep, 7000
		PixelGetColor, color, EncountersWidthClick, EncountersHeightClick
		if (color == 0X2A1C00) {
			IniRead, Encounters, ./serve/public/monsters.ini, Encounters, Count
			Encounters := Encounters + 1
			IniWrite, %Encounters%, ./serve/public/monsters.ini, Encounters, Count

			; Goatstick check
			PixelGetColor, color, GoatstickWidthClick, GoatstickHeightClick
			if (color == 0x96A0AF) {
				IniRead, Goatstick, ./serve/public/monsters.ini, Goatstick, Count
				Goatstick := Goatstick + 1
				IniWrite, %Goatstick%, ./serve/public/monsters.ini, Goatstick, Count
			}

			; Sapli check
			PixelGetColor, color, SapliWidthClick, SapliHeightClick
			if (color == 0xFFFFFF) {
				IniRead, Sapli, ./serve/public/monsters.ini, Sapli, Count
				Sapli := Sapli + 1
				IniWrite, %Sapli%, ./serve/public/monsters.ini, Sapli, Count
			}

			; Stingloreon check
			PixelGetColor, color, StingloreonWidthClick, StingloreonHeightClick
			if (color == 0x5EAD21) {
				IniRead, Stingloreon, ./serve/public/monsters.ini, Stingloreon, Count
				Stingloreon := Stingloreon + 1
				IniWrite, %Stingloreon%, ./serve/public/monsters.ini, Stingloreon, Count
			}

			; Ducko check
			PixelGetColor, color, DuckoWidthClick, DuckoHeightClick
			if (color == 0x277FFF) {
				IniRead, Ducko, ./serve/public/monsters.ini, Ducko, Count
				Ducko := Ducko + 1
				IniWrite, %Ducko%, ./serve/public/monsters.ini, Ducko, Count
			}

			; Burbro check
			PixelGetColor, color, BurbroWidthClick, BurbroHeightClick
			if (color == 0x7BFFFF) {
				IniRead, Burbro, ./serve/public/monsters.ini, Burbro, Count
				Burbro := Burbro + 1
				IniWrite, %Burbro%, ./serve/public/monsters.ini, Burbro, Count
			}

			; Beavo check
			PixelGetColor, color, BeavoWidthClick, BeavoHeightClick
			if (color == 0x36638B) {
				IniRead, Beavo, ./serve/public/monsters.ini, Beavo, Count
				Beavo := Beavo + 1
				IniWrite, %Beavo%, ./serve/public/monsters.ini, Beavo, Count
			}

			; Mudcrab check
			PixelGetColor, color, MudcrabWidthClick, MudcrabHeightClick
			if (color == 0xFFFFFF) {
				IniRead, Mudcrab, ./serve/public/monsters.ini, Mudcrab, Count
				Mudcrab := Mudcrab + 1
				IniWrite, %Mudcrab%, ./serve/public/monsters.ini, Mudcrab, Count
			}

			; Wormi check
			PixelGetColor, color, WormiWidthClick, WormiHeightClick
			if (color == 0xA098EF) {
				IniRead, Wormi, ./serve/public/monsters.ini, Wormi, Count
				Wormi := Wormi + 1
				IniWrite, %Wormi%, ./serve/public/monsters.ini, Wormi, Count
			}

			; Dreamcrawl check
			PixelGetColor, color, DreamcrawlWidthClick, DreamcrawlHeightClick
			if (color == 0xFFFFFF) {
				IniRead, Dreamcrawl, ./serve/public/monsters.ini, Dreamcrawl, Count
				Dreamcrawl := Dreamcrawl + 1
				IniWrite, %Dreamcrawl%, ./serve/public/monsters.ini, Dreamcrawl, Count
			}

			; Dragonworm check
			PixelGetColor, color, DragonwormWidthClick, DragonwormHeightClick
			if (color == 0xFF50F0) {
				IniRead, Dragonworm, ./serve/public/monsters.ini, Dragonworm, Count
				Dragonworm := Dragonworm + 1
				IniWrite, %Dragonworm%, ./serve/public/monsters.ini, Dragonworm, Count
			}
			
			if (Encounters not Goatstick + Sapli + Stingloreon + Ducko + Burbro + Beavo + Mudcrab + Wormi + Dreamcrawl + Dragonworm) {
				IniRead, Unknown, ./serve/public/monsters.ini, Unknown, Count
				Unknown:= Unknown + (Encounters - (Goatsticks + Saplis + Stingloreons + Duckos + Burbros + Beavos + Mudcrabs + Wormis + Dreamcrawls + Dragonworms))
				IniWrite, %Unknown%, ./serve/public/monsters.ini, Unknown, Count
			}
		}
		Sleep, 12000
	}
	Sleep, 100
}

ExitFunc(ExitReason, ExitCode)
{
	    if ExitReason not in Logoff,Shutdown
    {
        MsgBox, 4, , Are you sure you want to exit?
        IfMsgBox, No
            return 1
        Process, Close, cmnode.exe
	Exit

    }
}
