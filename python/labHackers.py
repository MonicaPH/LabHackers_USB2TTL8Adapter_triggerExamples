import argparse
import serial, time

class LabHackers:
    def __init__(self, port, rate=128_000, timeout=0.01):
        self.device = serial.Serial(
            port,
            baudrate=rate,
            timeout=timeout
        )

    def writeValue(self, value):
        self.device.write(f"WRITE {value}\n".encode())


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument(
        'port',
        help='Port name (e.g. COM3 or /dev/tty.usbmodem-14200)'
    )
    args = parser.parse_args()

    device = LabHackers(args.port)

    time.sleep(0.5) # wait for 0.5 seconds to see green light

    device.writeValue(255)
    time.sleep(0.005)
    device.writeValue(0)
