--/print isChecked("Blessing of Freedom")
local locales={

--br：base options
["Cast Debug"]="",
["Ignore Combat"]="",
["Mute Queue"]="",
["Use Crystal"]="",
["Use Fel Focuser"]="",
["Use emp. Rune"]="",
--br：rotation options
["Blessing of Freedom"]="自由祝福",
["Taunt"]="",
["Racial"]="",
["Trinkets HP"]="",
["Trinkets"]="",
["Seraphim"]="",
["Avenging Wrath"]="",
["Bastion of Light"]="",
["Pot/Stoned"]="",
["Ardent Defender"]="",
["Blinding Light - HP"]="",
["Blinding Light - AoE"]="",
["Clease Toxin"]="",
["Divine Shield"]="",
["Flash of Light"]="",
["Guardian of Ancient Kings"]="",
["Hammer of Justice - HP"]="",
["Light of the Protector"]="",
["Hand of the Protector - Party"]="",
["Lay On Hands"]="",
["Lay on Hands Target"]="",
["Blessing of Protection"]="",
["Blessing of Protection Target"]="",
["Blessing Of Sacrifice"]="",
["Blessing Of Sacrifice Target"]="",
["Shield of the Righteous - HP"]="",
["Redemption"]="",
["Blinding Light - INT"]="",
["Hammer of Justice - INT"]="",
["Rebuke - INT"]="",
["Avenger's Shield - INT"]="",
["Interrupt At"]="",
["Avenger's Shield"]="",
["Consecration"]="",
["Blessed Hammer"]="",
["Hammer of the Righteous"]="",
["Judgment"]="",
["Shield of the Righteous"]="",
["Rotation Mode"]="",
["Cooldown Mode"]="",
["Defensive Mode"]="",
["Interrupt Mode"]="",
["Pause Mode"]="",

--config: enemies engine
["Dynamic Targetting"]="动态目标",
["Target Dynamic Target"]="",
["Hostiles Only"]="",
["Wise Target"]="",
["Forced Burn"]="",
["Avoid Shields"]="",
["Tank Threat"]="",
["Safe Damage Check"]="",
["Don't break CCs"]="",
["Skull First"]="",
["Interrupt Only Whitelist"]="只打断白名单",
["Interrupts Handler"]="自动打断",
["Only Known Units"]="",
["Crowd Control"]="",
["Enrages Handler"]="",

--config: general
["Auto Delay"]="",
["Bot Update Rate"]="",
["Start/Stop BadRotations"]="",
["Rotation Log"]="",
["Display Failcasts"]="",
["Queue Casting"]="",
["Auto Loot"]="",
["Auto-Sell/Repair"]="",
["Accept Queues"]="",
["Overlay Messages"]="",
["Talent Anywhere"]="",
["Notify Not Unlocked"]="",
["Reset Options"]="",
["Reset Saved Profiles"]="",

--config: healing engine
["HE Active"]="",
["Heal Pets"]="",
["Special Heal"]="",
["Sorting with Role"]="",
["Prioritize Special Targets"]="",
["Blacklist"]="",
["Prioritize Tank"]="",
["Prioritize Debuff"]="",
["Ignore Absorbs"]="",
["Incoming Heals"]="",
["Overhealing Cancel"]="",
["Dispel delay"]="",
["Healer Line of Sight Indicator"]="",

--config: other features
["Profession Helper"]="",
["Prospect Ores"]="",
["Mill Herbs"]="",
["Disenchant"]="",
["Leather Scraps"]="",
["Lockboxes"]="",
["Debug Timers"]="",
--config: save/loading settings
["Load Prior Saved Settings"]="",

}

local hooked = false
C_Timer.NewTicker(.5, function()
  if hooked then return;end
  if br and br.ui and br.ui.createCheckbox then
    hooked = true
    
    print("br 汉化开始")
    
    --修改多选框
    local original = br.ui.createCheckbox
    function br.ui.createCheckbox(parent, text, tooltip, checked)
      if tooltip and locales[tooltip] and locales[tooltip]~="" then
        tooltip = locales[tooltip]
      elseif locales[tooltip]==nil then      
        --print('["'..tooltip..'"]="",')
      end
      return original(parent, text, tooltip, checked)
    end
    
    --修改按钮文字
    
    --修改下拉框
    
    --支持中文字体
    DiesalFontNormal:SetFont("Interface\\AddOns\\BadRotations_CN\\fonts\\ARKai_T.ttf",11 )
    DiesalFontPixel:SetFont("Interface\\AddOns\\BadRotations_CN\\fonts\\ARKai_T.ttf", 8 )
    DiesalFontPixelOutLine:SetFont( "Interface\\AddOns\\BadRotations_CN\\fonts\\ARKai_T.ttf", 8, "OUTLINE, MONOCHROME" )
    DiesalFontPixel2:SetFont( "Interface\\AddOns\\BadRotations_CN\\fonts\\ARKai_T.ttf", 8, "OUTLINE, MONOCHROME" )
    print("br 汉化完成")
  end
end)
