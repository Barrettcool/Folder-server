@echo off
if not exist "server" md "server"

(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo ^<head^>
echo     ^<meta charset="UTF-8"^>
echo     ^<title^>My File Server^</title^>
echo     ^<style^>
echo         body { font-family: Arial, sans-serif; text-align: center; margin-top: 50px; background-color: #f4f4f9; color: #333; }
echo         .container { max-width: 500px; margin: auto; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
echo         .btn { display: inline-block; padding: 12px 24px; color: white; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; font-weight: bold; text-decoration: none; margin: 10px 0; }
echo         .btn-all { background-color: #e74c3c; width: 100%%; }
echo         .btn-single { background-color: #3498db; margin: 5px; font-size: 14px; }
echo         .file-list { margin: 20px 0; text-align: left; }
echo     ^</style^>
echo ^</head^>
echo ^<body^>
echo     ^<div class="container"^>
echo         ^<h1^>File Download Center^</h1^>
echo         ^<p^>Click the red button to download everything at once, or grab individual files below:^</p^>
echo         ^<button class="btn btn-all" onclick="downloadAll()"^>Download Everything^</button^>
echo         ^<div class="file-list"^>
echo             ^<a href="File1.txt" class="btn btn-single" download^>Download File 1^</a^>
echo             ^<a href="File2.txt" class="btn btn-single" download^>Download File 2^</a^>
echo             ^<a href="File3.txt" class="btn btn-single" download^>Download File 3^</a^>
echo         ^</div^>
echo     ^</div^>
echo     ^<script^>
echo         function downloadAll() {
echo             const files = ['File1.txt', 'File2.txt', 'File3.txt'];
echo             files.forEach((file, index) =^> {
echo                 setTimeout(() =^> {
echo                     const a = document.createElement('a');
echo                     a.href = file;
echo                     a.download = file;
echo                     document.body.appendChild(a);
echo                     a.click();
echo                     document.body.removeChild(a);
echo                 }, index * 300);
echo             });
echo         }
echo     ^</script^>
echo ^</body^>
echo ^</html^>
) > server\index.html

echo Success: index.html webpage generated inside the server folder!
pause
