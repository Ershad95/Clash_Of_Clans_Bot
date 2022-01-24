
   Func CreateSpell()

;If GUICtrlRead($chklighspell) = $GUI_CHECKED Then
SetLog("Creating Spells...")
			;If $SFPos[0] = -1 Then
			;LocateSpellFactory()
			;SaveConfig()
			;Else

					 Click(656, 296)
					 If _Sleep(600) Then Return
					  _CaptureRegion()
					  If _Sleep(600) Then Return
					 if _ColorCheck(_GetPixelColor(555, 616), Hex(0xFFFFFF, 6), 20)  Then
						;SetLog("Create Lighning Spell", $COLOR_BLUE)
						Click(566,599) ;click create spell
						 If _Sleep(1000) Then Return
							    _CaptureRegion()
								 If _Sleep(600) Then Return
						   if  _ColorCheck(_GetPixelColor(237, 354), Hex(0xFFFFFF, 6), 20) = False Then
							  setlog("Not enoug Elixir to create Spell", $COLOR_RED)
						   Elseif  _ColorCheck(_GetPixelColor(200, 346), Hex(0x1A1A1A, 6), 20) Then
								  setlog("Spell Factory Full", $COLOR_RED)
							   Else
								  #cs
							  Click(252,354)
							  If _Sleep(600) Then Return
							  Click(252,354)
							  If _Sleep(600) Then Return
							  Click(252,354)
							  If _Sleep(600) Then Return
							  Click(252,354)
							  If _Sleep(600) Then Return
							  Click(252,354)
							  If _Sleep(600) Then Return
							  #ce
							  If GUICtrlRead($txtspell_l) > 0 Then
								 Click(252,354,GUICtrlRead($txtspell_l),10)
								 Setlog("Create lighting spell",$COLOR_GREEN,"Verdana",10)
							  EndIf
							  	  If GUICtrlRead($txtspell_h) > 0 Then
								 Click(352,354,GUICtrlRead($txtspell_h),10)
								 Setlog("Create healing spell",$COLOR_GREEN,"Verdana",10)
							  EndIf
							  If GUICtrlRead($txtspell_r) > 0 then
								 Click(452,354,GUICtrlRead($txtspell_r),10)
								 Setlog("Create rage spell",$COLOR_GREEN,"Verdana",10)
								 EndIf

						   EndIf


					 Else
						   setlog("Spell Factory is not available, Skip Create", $COLOR_RED)
						EndIf
;EndIf
	 ; Else
	 ; EndIf
	  EndFunc

 ;CreateSpell