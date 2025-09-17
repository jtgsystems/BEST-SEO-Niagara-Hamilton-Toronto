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
echo  █              🎯 SEO KNOWLEDGE CHALLENGE - LEARN REAL SEO STRATEGIES! 🎯                                       █
echo  █                                                                                                                  █
echo  █                      📚 Test Your SEO Knowledge • Learn Industry Secrets 📚                                    █
echo  █                                                                                                                  █
echo  █                                   📞 CALL (905) 892-4555 FOR SEO HELP 📞                                        █
echo  █                                 🌐 JointTechnologyGroup.com • JTGSYSTEMS.com 🌐                                █
echo  █                                                                                                                  █
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo.
echo                                  Press any key to start the SEO KNOWLEDGE QUIZ...
pause >nul

:GAME
set /a score=0
set /a question=1
cls

rem Define SEO questions and answers
set "q1=What does SEO stand for?"
set "a1a=Search Engine Optimization"
set "a1b=Social Engagement Online"
set "a1c=Sales Enhancement Online"
set "correct1=1"

set "q2=Which tag is most important for on-page SEO?"
set "a2a=Title Tag"
set "a2b=Image Tag"
set "a2c=Script Tag"
set "correct2=1"

set "q3=What is the ideal keyword density for modern SEO?"
set "a3a=10-15%"
set "a3b=1-3%"
set "a3c=20%+"
set "correct3=2"

set "q4=Which factor is most important for local SEO?"
set "a4a=Google My Business"
set "a4b=Social Media"
set "a4c=Email Marketing"
set "correct4=1"

set "q5=How long should a meta description be?"
set "a5a=50-60 characters"
set "a5b=150-160 characters"
set "a5c=300+ characters"
set "correct5=2"

set "q6=What is the most important ranking factor?"
set "a6a=Keyword stuffing"
set "a6b=Quality content"
set "a6c=Page loading speed"
set "correct6=2"

set "q7=Which backlinks are most valuable?"
set "a7a=Any backlinks"
set "a7b=Paid directory links"
set "a7c=High authority relevant sites"
set "correct7=3"

set "q8=What is Google's Page Experience update about?"
set "a8a=Core Web Vitals"
set "a8b=More ads"
set "a8c=Longer content"
set "correct8=1"

:QUESTIONLOOP
if !question! GTR 8 goto ENDGAME

cls
echo.
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo  █                                                                                                                  █
echo  █                           🧠 JTG SYSTEMS SEO KNOWLEDGE QUIZ 🧠                                                  █
echo  █                                                                                                                  █
echo  █                            Question !question!/8 │ Score: !score!/800                                            █
echo  █                                                                                                                  █

call :SHOWQUESTION !question!

echo  █                                                                                                                  █
echo  █                              [1]    [2]    [3]                                                                  █
echo  █                                                                                                                  █
echo  █                          💡 Learn real SEO from the experts! 💡                                                █
echo  █                                                                                                                  █
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

choice /c 123 /n /t 15 >nul
if errorlevel 3 set answer=3
if errorlevel 2 set answer=2
if errorlevel 1 set answer=1
if not defined answer set answer=timeout

call set correct=%%correct!question!%%

if "!answer!" EQU "timeout" (
    echo.
    echo                                    ⏰ Time's up! The correct answer was !correct!
    timeout /t 2 >nul
) else if "!answer!" EQU "!correct!" (
    set /a score+=100
    echo.
    echo                                    ✅ CORRECT! +100 SEO Knowledge Points! ✅
    call :SHOWEXPLANATION !question!
    timeout /t 3 >nul
) else (
    echo.
    echo                                    ❌ Incorrect. The correct answer was !correct!
    call :SHOWEXPLANATION !question!
    timeout /t 3 >nul
)

set answer=
set /a question+=1
goto QUESTIONLOOP

:SHOWQUESTION
set qnum=%1
call set currentq=%%q!qnum!%%
call set a1=%%a!qnum!a%%
call set a2=%%a!qnum!b%%
call set a3=%%a!qnum!c%%

echo  █   Q!qnum!: !currentq!                                      █
echo  █                                                                                                                  █
echo  █   [1] !a1!                                            █
echo  █   [2] !a2!                                               █
echo  █   [3] !a3!                                              █
goto :eof

:SHOWEXPLANATION
set qnum=%1
if !qnum! EQU 1 echo                              SEO = Search Engine Optimization - improving website visibility
if !qnum! EQU 2 echo                              Title tags tell search engines what your page is about
if !qnum! EQU 3 echo                              1-3%% keyword density looks natural, higher % looks spammy
if !qnum! EQU 4 echo                              Google My Business is crucial for local search visibility
if !qnum! EQU 5 echo                              150-160 characters is optimal for meta descriptions
if !qnum! EQU 6 echo                              Quality content that helps users ranks highest
if !qnum! EQU 7 echo                              Relevant backlinks from authoritative sites boost rankings
if !qnum! EQU 8 echo                              Core Web Vitals measure page loading and user experience
goto :eof

:ENDGAME
cls
echo.
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo  █                                                                                                                  █
echo  █                               🏆 SEO KNOWLEDGE QUIZ COMPLETE! 🏆                                                █
echo  █                                                                                                                  █
echo  █                                    YOUR SEO KNOWLEDGE SCORE: !score!/800                                        █
echo  █                                                                                                                  █

if !score! GEQ 700 (
    echo  █                           🧠 SEO EXPERT! You have excellent SEO knowledge! 🧠                                  █
    echo  █                             You understand the fundamentals of modern SEO                                      █
) else if !score! GEQ 400 (
    echo  █                           📚 SEO LEARNER! You have good basic knowledge! 📚                                   █
    echo  █                             Continue learning to master advanced strategies                                    █
) else (
    echo  █                           🎓 SEO BEGINNER! Great start on your SEO journey! 🎓                                █
    echo  █                             Professional SEO help can accelerate your success                                 █
)

echo  █                                                                                                                  █
echo  █                                    📚📚📚 KEY SEO TAKEAWAYS: 📚📚📚                                          █
echo  █                                                                                                                  █

echo  █    ✅ Quality content that helps users ranks best                                                               █
echo  █    ✅ Title tags and meta descriptions are crucial                                                              █
echo  █    ✅ Local businesses need Google My Business optimization                                                     █
echo  █    ✅ Natural keyword usage (1-3%%) works better than stuffing                                                  █
echo  █    ✅ Page speed and user experience matter                                                                     █
echo  █    ✅ Relevant backlinks from quality sites boost rankings                                                      █
echo  █    ✅ SEO is ongoing work, not a one-time fix                                                                   █
echo  █    ✅ Professional SEO takes 3-6 months to show significant results                                             █

echo  █                                                                                                                  █
echo  █                              🎯 READY TO IMPLEMENT REAL SEO STRATEGIES? 🎯                                      █
echo  █                                                                                                                  █
echo  █                         NIAGARA'S #1 SEO COMPANY IS JTG SYSTEMS                                              █
echo  █                                HAMILTON & TORONTO SEO EXPERTS!                                                █
echo  █                                                                                                                  █
echo  █                                  📞 CALL (905) 892-4555 FOR CONSULTATION 📞                                    █
echo  █                                                                                                                  █
echo  █                              🌐 JOINTTECHNOLOGYGROUP.COM 🌐                                                     █
echo  █                                   🌐 JTGSYSTEMS.COM 🌐                                                          █
echo  █                                                                                                                  █
echo  █                    🔍 What JTG Systems Actually Does For You:                                                  █
echo  █                              ✅ SEO Audits • Keyword Research • Content Strategy                               █
echo  █                              ✅ Technical SEO • Local SEO • Link Building                                      █
echo  █                              ✅ Google My Business • Analytics • Reporting                                      █
echo  █                              ✅ Realistic Timelines • Honest Communication                                      █
echo  █                                                                                                                  █
echo  █                    📈 SEO Reality: Results typically take 3-6 months                                          █
echo  █                    💰 Investment: Professional SEO requires ongoing effort                                     █
echo  █                    🎯 Success: Depends on competition, market, and strategy                                    █
echo  █                                                                                                                  █
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo.
echo                                Thanks for playing! Closing in 30 seconds...
echo                              Call JTG Systems for real SEO help that works.

timeout /t 30 >nul
exit