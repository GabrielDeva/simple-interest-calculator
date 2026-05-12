#!/bin/bash
# Script untuk menghitung bunga sederhana (Simple Interest)

echo "Masukkan Prinsipal (Modal):"
read p
echo "Masukkan Suku Bunga per Tahun (%):"
read r
echo "Masukkan Jangka Waktu (Tahun):"
read t

# Hitung Bunga: P * R * T / 100
interest=$(echo "scale=2; $p * $r * $t / 100" | bc)

# Hitung Total Jumlah: Prinsipal + Bunga
total=$(echo "scale=2; $p + $interest" | bc)

echo "--------------------------"
echo "Bunga yang Dihasilkan: $interest"
echo "Total Jumlah: $total"
