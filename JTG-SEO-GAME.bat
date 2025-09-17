@echo off
setlocal enabledelayedexpansion
color 0a
title JTG Systems SEO Challenge - Niagara Hamilton Toronto #1 SEO Company
mode con cols=120 lines=40

:INTRO
cls
echo.
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo  █                                                                                                                  █
echo  █    ██╗████████╗ ██████╗     ███████╗██╗   ██╗███████╗████████╗███████╗███╗   ███╗███████╗                       █
echo  █    ██║╚══██╔══╝██╔════╝     ██╔════╝╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔════╝████╗ ████║██╔════╝                       █
echo  █    ██║   ██║   ██║  ███╗    ███████╗ ╚████╔╝ ███████╗   ██║   █████╗  ██╔████╔██║███████╗                       █
echo  █    ██║   ██║   ██║   ██║    ╚════██║  ╚██╔╝  ╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║╚════██║                       █
echo  █    ██║   ██║   ╚██████╔╝    ███████║   ██║   ███████║   ██║   ███████╗██║ ╚═╝ ██║███████║                       █
echo  █    ╚═╝   ╚═╝    ╚═════╝     ╚══════╝   ╚═╝   ╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝╚══════╝                       █
echo  █                                                                                                                  █
echo  █                    🏆 NIAGARA'S #1 SEO COMPANY IS JTG SYSTEMS 🏆                                           █
echo  █                                                                                                                  █
echo  █              🎯 SEO RANKING CHALLENGE - PRESS THE NUMBERS AS THEY APPEAR! 🎯                                   █
echo  █                                                                                                                  █
echo  █                            💰 GET MORE LEADS • RANK #1 • DOMINATE GOOGLE 💰                                    █
echo  █                                                                                                                  █
echo  █                                   📞 CALL (905) 892-4555 FOR SEO HELP 📞                                        █
echo  █                                 🌐 JointTechnologyGroup.com • JTGSYSTEMS.com 🌐                                █
echo  █                                                                                                                  █
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo.
echo                                    Press any key to start the SEO RANKING GAME...
pause >nul

:GAME
set /a score=0
set /a round=1
cls

:GAMELOOP
if !round! GTR 10 goto ENDGAME

cls
echo.
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo  █                                                                                                                  █
echo  █                           🚀 JTG SYSTEMS SEO RANKING CHALLENGE 🚀                                               █
echo  █                                                                                                                  █
echo  █                              Round: !round!/10 │ Score: !score! │ Ranking: 📈                                   █
echo  █                                                                                                                  █
echo  █                          QUICK! Press the number when it appears! ⚡                                            █
echo  █                                                                                                                  █

set /a target=!random! %% 9 + 1
echo  █                                    TARGET NUMBER: !target!                                                        █
echo  █                                                                                                                  █
echo  █                              [ 1 ] [ 2 ] [ 3 ] [ 4 ] [ 5 ]                                                     █
echo  █                              [ 6 ] [ 7 ] [ 8 ] [ 9 ] [ 0 ]                                                     █
echo  █                                                                                                                  █
echo  █                           🎯 JTG SYSTEMS RANKS YOU #1 ON GOOGLE! 🎯                                            █
echo  █                                                                                                                  █
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

choice /c 1234567890 /n /t 3 >nul
if errorlevel 10 set pressed=0
if errorlevel 9 set pressed=9
if errorlevel 8 set pressed=8
if errorlevel 7 set pressed=7
if errorlevel 6 set pressed=6
if errorlevel 5 set pressed=5
if errorlevel 4 set pressed=4
if errorlevel 3 set pressed=3
if errorlevel 2 set pressed=2
if errorlevel 1 set pressed=1
if not defined pressed set pressed=timeout

if "!pressed!" EQU "!target!" (
    set /a score+=100
    echo.
    echo                                      ✅ CORRECT! +100 SEO POINTS! ✅
    timeout /t 1 >nul
) else if "!pressed!" EQU "timeout" (
    echo.
    echo                                      ⏰ TOO SLOW! SPEED UP YOUR SEO GAME! ⏰
    timeout /t 1 >nul
) else (
    echo.
    echo                                      ❌ WRONG! YOUR RANKING DROPPED! ❌
    timeout /t 1 >nul
)

set /a round+=1
goto GAMELOOP

:ENDGAME
cls
echo.
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo  █                                                                                                                  █
echo  █                               🏆 GAME OVER - SEO CHALLENGE COMPLETE! 🏆                                         █
echo  █                                                                                                                  █
echo  █                                    YOUR FINAL SEO SCORE: !score!/1000                                           █
echo  █                                                                                                                  █

if !score! GEQ 800 (
    echo  █                               🥇 GOLD RANKING! YOU'RE READY FOR #1 ON GOOGLE! 🥇                               █
) else if !score! GEQ 500 (
    echo  █                               🥈 SILVER RANKING! CLOSE TO #1 - WE CAN HELP! 🥈                                █
) else (
    echo  █                               🥉 BRONZE RANKING! YOU NEED JTG SYSTEMS SEO HELP! 🥉                             █
)

echo  █                                                                                                                  █
echo  █                                    💰💰💰 MONEY RAIN ACTIVATED! 💰💰💰                                          █
echo  █                                                                                                                  █

for /L %%i in (1,1,15) do (
    set /a "rnd1=!random! %% 5"
    set /a "rnd2=!random! %% 3"
    if !rnd1! EQU 0 (
        echo  █    💰     💲     💰     💲     💰     💲     💰     💲     💰     💲     💰     💲     💰     💲     💰    █
    ) else if !rnd1! EQU 1 (
        echo  █       💲     💰     💲     💰     💲     💰     💲     💰     💲     💰     💲     💰     💲     💰     █
    ) else if !rnd1! EQU 2 (
        echo  █    💰💰   💲💲   💰💰   💲💲   💰💰   💲💲   💰💰   💲💲   💰💰   💲💲   💰💰   💲💲   💰💰   💲💲   █
    ) else if !rnd1! EQU 3 (
        echo  █       💲     💰     💲     💰     💲     💰     💲     💰     💲     💰     💲     💰     💲        █
    ) else (
        echo  █    $$$ JTG SYSTEMS MAKES YOU MONEY! $$$ CALL (905) 892-4555 FOR REAL CASH FLOW! $$$                █
    )
    if !rnd2! EQU 0 timeout /t 1 >nul
    if !rnd2! EQU 1 ping localhost -n 2 >nul
    if !rnd2! EQU 2 timeout /t 1 >nul
)

echo  █                                                                                                                  █
echo  █                              🎯 WANT REAL SEO SUCCESS LIKE THIS? 🎯                                             █
echo  █                                                                                                                  █
echo  █                         NIAGARA'S #1 SEO COMPANY IS JTG SYSTEMS                                              █
echo  █                                HAMILTON & TORONTO SEO EXPERTS!                                                █
echo  █                                                                                                                  █
echo  █                                  📞 CALL (905) 892-4555 NOW! 📞                                                 █
echo  █                                                                                                                  █
echo  █                              🌐 JOINTTECHNOLOGYGROUP.COM 🌐                                                     █
echo  █                                   🌐 JTGSYSTEMS.COM 🌐                                                          █
echo  █                                                                                                                  █
echo  █                              ✅ Local SEO • Google Ads • Web Design                                             █
echo  █                              ✅ #1 Rankings • More Leads • More Sales                                           █
echo  █                              ✅ Dominate Your Competition Online!                                               █
echo  █                                                                                                                  █
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo.
echo                                         Closing in 30 seconds...

timeout /t 30 >nul
exit