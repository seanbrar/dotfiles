#!/bin/bash
# Resets the Razer Naga Hex V2 USB device to fix frozen movement.
# Device path: 1-6.1 = Bus 1, VIA Labs hub port 6, port 1
# If this stops working after physically moving USB connections, update the path
# by checking: grep -r "Naga" /sys/bus/usb/devices/*/product 2>/dev/null
echo 0 | sudo tee /sys/bus/usb/devices/1-6.1/authorized > /dev/null
sleep 0.5
echo 1 | sudo tee /sys/bus/usb/devices/1-6.1/authorized > /dev/null
