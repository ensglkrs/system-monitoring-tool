# System Monitoring Tool

Basit ama işlevsel bir sistem izleme ve loglama aracı.

## Özellikler

- Bash script ile CPU ve RAM kullanımı loglanır
- Loglar `logs/system_usage.log` içinde tutulur
- Python ile loglar okunur ve son girişler CLI üzerinden gösterilir
- OOP prensipleriyle yazılmış modüler Python sınıfı
- `cron` ile otomatik çalıştırılabilir

## Kurulum

```bash
git clone https://github.com/kullanici/system-monitoring-tool.git
cd system-monitoring-tool
chmod +x scripts/log_system.sh
./scripts/log_system.sh
python3 src/monitor.py
```

## Crontab Ayarı
```bash
*/30 * * * * /full/path/to/system-monitoring-tool/scripts/log_system.sh
```

## Proje Yapısı
```bash
system-monitoring-tool/
├── src/
│   ├── logger.py
│   ├── monitor.py
├── scripts/
│   └── log_system.sh
├── logs/
├── README.md
├── requirements.txt
```

## License
```bash
This project is licensed under the MIT License.
You are free to use, modify, and distribute it for any purpose, with proper attribution.
The software is provided "as is", without warranty of any kind.
```
