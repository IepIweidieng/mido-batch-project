::各種圖標定義
set ga1=4 5 9 a
set ga2=1 4 5 8
set ga3=0 1 5 6
set ga4=2 5 6 9
::□□□□　　□■□□　　■■□□　　□□■□
::■■□□　　■■□□　　□■■□　　□■■□
::□■■□　　■□□□　　□□□□　　□■□□

set gb1=5 6 8 9
set gb2=0 4 5 9
set gb3=1 2 4 5
set gb4=1 5 6 a
::□□□□　　■□□□　　□■■□　　□■□□
::□■■□　　■■□□　　■■□□　　□■■□
::■■□□　　□■□□　　□□□□　　□□■□

set za1=4 5 6 7
set za2=2 6 a e
set za3=8 9 a b
set za4=1 5 9 d
::□□□□　　□□■□　　□□□□　　□■□□
::■■■■　　□□■□　　□□□□　　□■□□
::□□□□　　□□■□　　■■■■　　□■□□
::□□□□　　□□■□　　□□□□　　□■□□

set qa1=2 6 a 9
set qa2=4 8 9 a
set qa3=0 1 4 8
set qa4=0 1 2 6
::□□■□　　□□□□　　■■□□　　■■■□
::□□■□　　■□□□　　■□□□　　□□■□
::□■■□　　■■■□　　■□□□　　□□□□

set qb1=0 4 8 9
set qb2=0 1 2 4
set qb3=1 2 6 a
set qb4=6 8 9 a
::■□□□　　■■■□　　□■■□　　□□□□
::■□□□　　■□□□　　□□■□　　□□■□
::■■□□　　□□□□　　□□■□　　■■■□

set ta1=5 6 9 a
::□□□□
::□■■□
::□■■□


set sa1=1 4 5 6
set sa2=1 5 6 9
set sa3=4 5 6 9
set sa4=1 4 5 9
::□■□□　　□■□□　　□□□□　　□■□□
::■■■□　　□■■□　　■■■□　　■■□□
::□□□□　　□■□□　　□■□□　　□■□□



for /l %%a in (0,1,9) do (set "ebuf=!ebuf!^!r@.%%a^!")
for %%a in (sa_4 ta_1 qb_4 qa_4 za_4 ga_4 gb_4) do (
        for /f "tokens=1,2 delims=_" %%b in ("%%a") do (
                set _%%b=%%c
                set/a nx+=1&set ran!nx!=%%b1
        )
)
::定義各種圖型的可變型數，及單個圖的隨機號        
::將ebuf附加上字串!r@.%%a(0~9)!
::ebuf最後為!r@.0!!r@.1!!r@.2!!r@.3!...!r@.9!
::為(d-e)中之│!ebuf:@=%%a!│，@為該處之%%a
::set _%%b=%%c　e.g., set _sa=4
::set ran!nx!=%%b%%d　e.g., set ran4=sa4

for /l %%a in (2,1,21) do if "!ebu%%a!"=="" set ebu%%a=｜

set k3=tnc-=tncrowd%diffn%,k-=2,k+=mx,k"%%"=mx,k+
set k7=tnc-=tncrowd%diffn%,k-=2,k+=mx,k"%%"=mx,k+
set k8=tnc-=tncrowd%diffn%,k"%%"=mx,k+
set k4=tnc+=tncrowu%diffn%,down=downs,t
set k1=tnc-=tncrowd%diffn%,m-
set k2=tnc-=tncrowd%diffn%,m+
set k5=tnc=0,hold
::按鍵定義