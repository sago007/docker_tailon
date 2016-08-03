#! /bin/ash

# BASE_LOG=$(mount | grep /dev/ | awk '{print $3}' | tail -n +4 | sed 's/$/\/*/' | tr "\\n" " ")

echo "Running Tailon as python tailon -b 0.0.0.0:8080 -f /data \"${@:1}\""
exec tailon -b 0.0.0.0:8080 -f /data "${@:1}"


