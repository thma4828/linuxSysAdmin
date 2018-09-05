echo "----CPU/RAM USAGE----"
var1=$(free -m | cut -d' ' -f32 | head -n 2 | grep . )
echo  "Free RAM: ${var1} MB"
var2=$(uptime | cut -d: -f4)
echo "CPU load average: ${var2}"
echo "----USERS AND SHELLS----"
var3=$(cat /etc/passwd | wc -l)
let "var3 = var3 - 1"
echo "Number of users: ${var3}"
var4=$(ps -ef | grep -e "bash" | wc -l)
echo "Number of bash shells: ${var4}"
var5=$(ps -ef | grep -e "false" | wc -l)
echo "Number of false shells: ${var5}"
echo "----FILES AND DIRECTORIES----"
var6=$(find ../../.. -type f | wc -l)
echo "Number of files in the system: ${var6}"
