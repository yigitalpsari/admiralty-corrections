@echo off
title Admiralty NM Extractor - Download Offline Libraries
cd /d "%~dp0"

echo ======================================================================
echo   Admiralty Notices to Mariners (WKNMs) Tools - Offline Setup
echo ======================================================================
echo.
echo Checking/Creating local 'lib' directory...
if not exist "lib" mkdir "lib"

echo [1/4] Downloading JSZip (archive decompression)...
curl -s -L "https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js" -o "lib\jszip.min.js"

echo [2/4] Downloading PDF.js (text extraction engine)...
curl -s -L "https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.min.js" -o "lib\pdf.min.js"

echo [3/4] Downloading PDF.js Worker (background processor)...
curl -s -L "https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.worker.min.js" -o "lib\pdf.worker.min.js"

echo [4/4] Downloading PDF-Lib (document merger and builder)...
curl -s -L "https://cdnjs.cloudflare.com/ajax/libs/pdf-lib/1.17.1/pdf-lib.min.js" -o "lib\pdf-lib.min.js"

echo.
echo ======================================================================
echo   Offline libraries successfully downloaded to the 'lib' folder!
echo   You can now operate 100%% offline at sea without internet connection.
echo ======================================================================
echo.
pause
