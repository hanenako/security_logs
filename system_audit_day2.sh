#!/bin/bash
# ========================================
# System Audit Script (Day1 + Day2)
# ========================================

LOG_DIR="$HOME/security_logs/log"
LOG_FILE="$LOG_DIR/audit_$(date +%Y%m%d_%H%M%S).txt"

mkdir -p "$LOG_DIR"

echo "===== [ System Audit Report ] =====" > "$LOG_FILE"
echo "作成日: $(date)" >> "$LOG_FILE"
echo "-----------------------------------" >> "$LOG_FILE"

# 1. システム基本情報
echo "[1] システム基本情報" >> "$LOG_FILE"
who >> "$LOG_FILE"
last -n 3 >> "$LOG_FILE"
uptime >> "$LOG_FILE"
uname -a >> "$LOG_FILE"
lsb_release -a 2>/dev/null >> "$LOG_FILE"
df -h >> "$LOG_FILE"
du -sh /var/log/* >> "$LOG_FILE"
echo "-----------------------------------" >> "$LOG_FILE"

# 2. カレントユーザ情報
echo "[2] カレントユーザ" >> "$LOG_FILE"
whoami >> "$LOG_FILE"
id >> "$LOG_FILE"
echo "-----------------------------------" >> "$LOG_FILE"

# 3. アカウントリスト
echo "[3] アカウントリスト (/etc/passwd)" >> "$LOG_FILE"
cut -d: -f1 /etc/passwd >> "$LOG_FILE"
echo "-----------------------------------" >> "$LOG_FILE"

# 4. sudo 権限アカウント
echo "[4] sudo 権限アカウント" >> "$LOG_FILE"
getent group sudo >> "$LOG_FILE"
echo "-----------------------------------" >> "$LOG_FILE"

# 5. ロックされているアカウント
echo "[5] ロックされているアカウント" >> "$LOG_FILE"
passwd -S root >> "$LOG_FILE"
echo "-----------------------------------" >> "$LOG_FILE"

# 6. サービスアカウント
echo "[6] ログイン不可サービスアカウント" >> "$LOG_FILE"
grep -E "/false|/nologin" /etc/passwd >> "$LOG_FILE"
echo "-----------------------------------" >> "$LOG_FILE"

echo "===== 完了 =====" >> "$LOG_FILE"
echo "ログファイル: $LOG_FILE"
