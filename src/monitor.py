from logger import Logger
import os

# Log dosyasının tam yolu
log_path = os.path.join(os.path.dirname(__file__), '..', 'logs', 'system_usage.log')
log_path = os.path.abspath(log_path)

log = Logger(log_path)

print("Son 5 log:")
for line in log.last_n_entries():
    print(line.strip())

