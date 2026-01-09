@echo off
echo 🚀 AvoraHub GitHub'a Yukleniyor...
echo.
echo Hedef Repo: https://github.com/arhankayikci/AvoraHubCement.git
echo.

echo 1. Dosyalar hazirlaniyor...
git remote set-url origin https://github.com/arhankayikci/AvoraHubCement.git
git add .
git commit -m "Auto-deploy: Public Release"

echo.
echo 2. GitHub'a gonderiliyor...
echo Lutfen acilan pencerede GitHub girisi yapin...
git push origin main

echo.
if %errorlevel% neq 0 (
    echo ❌ HATA OLUSTU! Lutfen interneti ve giris bilgilerinizi kontrol edin.
) else (
    echo ✅ BASARIYLA YUKLENDI!
)
echo.
pause
