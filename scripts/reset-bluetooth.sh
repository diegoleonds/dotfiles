mac="84:AC:60:80:3E:CC"

if bluetoothctl info "$mac" | grep "Paired: yes"; then
  echo "Unpairing bluetooth with $mac"
  bluetoothctl remove "$mac"
  sleep 3
fi

echo "Pairing bluetooth with $mac"
bluetoothctl pair "$mac"

echo "Waiting some time to search again for it..."
sleep 15

echo "Connecting to device $mac"
bluetoothctl connect "$mac"

sleep 3

exit 1
