@echo off
title TS Pensioners DA Arrears Calculator - Local Web Server
echo ========================================================
echo TS Pensioners DA Arrears Calculator - Local Web Server
echo Running at: http://localhost:5600/
echo ========================================================
echo.
start "" "http://localhost:5600/"
powershell -NoProfile -ExecutionPolicy Bypass -Command "$listener = New-Object System.Net.HttpListener; $listener.Prefixes.Add('http://localhost:5600/'); $listener.Start(); Write-Host 'Local server started at http://localhost:5600/ (Press Ctrl+C to stop)'; while ($listener.IsListening) { $context = $listener.GetContext(); $request = $context.Request; $response = $context.Response; $path = $request.Url.LocalPath.TrimStart('/'); if ([string]::IsNullOrEmpty($path)) { $path = 'index.html' }; if (Test-Path $path) { $bytes = [System.IO.File]::ReadAllBytes($path); $ext = [System.IO.Path]::GetExtension($path).ToLower(); switch ($ext) { '.html' { $response.ContentType = 'text/html; charset=utf-8' } '.css' { $response.ContentType = 'text/css' } '.js' { $response.ContentType = 'application/javascript' } '.jpg' { $response.ContentType = 'image/jpeg' } '.png' { $response.ContentType = 'image/png' } default { $response.ContentType = 'application/octet-stream' } }; $response.OutputStream.Write($bytes, 0, $bytes.Length) } else { $response.StatusCode = 404 }; $response.Close() }"
