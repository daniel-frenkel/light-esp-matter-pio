Import('env')
import os

os.environ["PATH"] += ":" + env['PROJECT_DIR'] + "/lib/esp-matter/connectedhomeip/connectedhomeip/.environment/cipd/packages/pigweed/"
os.environ["ESP_MATTER_PATH"] = env['PROJECT_DIR'] + "/lib/esp-matter"