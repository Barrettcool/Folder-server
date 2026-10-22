import os
import http.server
import socketserver

PORT = 8000
DIRECTORY = "server"

# Auto-create the folder if it doesn't exist yet
if not os.path.exists(DIRECTORY):
    os.makedirs(DIRECTORY)

# Move into the server folder
os.chdir(DIRECTORY)

# Set up and boot the network engine
Handler = http.server.SimpleHTTPRequestHandler
with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Server engine activated successfully!")
    print(f"Open http://localhost:{PORT} in your web browser.")
    httpd.serve_forever()
