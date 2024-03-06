@echo off
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "NGROK Endpoints masih ada yang berjalan"
pause
