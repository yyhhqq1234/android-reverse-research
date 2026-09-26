P0=$(printf '\x14\xf1\x71\xca')
P1=$(printf '\x94\xf5\x71\xca')
P2=$(printf '\x84\xf6\x71\xca')
P3=$(printf '\x74\xf7\x71\xca')
P4=$(printf '\xa4\xf7\x71\xca')
P5=$(printf '\xd4\xf7\x71\xca')
P6=$(printf '\xc4\xf8\x71\xca')
P7=$(printf '\xb4\xf9\x71\xca')
P8=$(printf '\x14\xfa\x71\xca')
P9=$(printf '\x74\xfa\x71\xca')
P10=$(printf '\xd4\xfa\x71\xca')
P11=$(printf '\x04\xfb\x71\xca')
P12=$(printf '\x34\xfb\x71\xca')
P13=$(printf '\x64\xfb\x71\xca')
P14=$(printf '\x94\xfb\x71\xca')
P15=$(printf '\xc4\xfb\x71\xca')
P16=$(printf '\x24\xfc\x71\xca')
P17=$(printf '\x54\xfc\x71\xca')
P18=$(printf '\x84\xfc\x71\xca')
P19=$(printf '\xe4\xfc\x71\xca')
P20=$(printf '\x44\xfd\x71\xca')
P21=$(printf '\x74\xfd\x71\xca')
P22=$(printf '\xa4\xfd\x71\xca')
P23=$(printf '\x04\xfe\x71\xca')
P24=$(printf '\x64\xfe\x71\xca')
P25=$(printf '\xc4\xfe\x71\xca')
P26=$(printf '\x24\xff\x71\xca')
P27=$(printf '\x54\xff\x71\xca')
P28=$(printf '\xb4\xff\x71\xca')
P29=$(printf '\x24\x70\x72\xca')
P30=$(printf '\x54\x70\x72\xca')
P31=$(printf '\xe4\x70\x72\xca')
P32=$(printf '\x74\x71\x72\xca')
P33=$(printf '\xd4\x71\x72\xca')
P34=$(printf '\x04\x72\x72\xca')
P35=$(printf '\x34\x72\x72\xca')
P36=$(printf '\x64\x72\x72\xca')
P37=$(printf '\xc4\x72\x72\xca')
P38=$(printf '\xf4\x72\x72\xca')
P39=$(printf '\x24\x73\x72\xca')
P40=$(printf '\xe4\x73\x72\xca')
P41=$(printf '\xe4\x5a\x72\xca')
P42=$(printf '\x44\x7d\x6f\xca')
PATS="$P0 $P1 $P2 $P3 $P4 $P5 $P6 $P7 $P8 $P9 $P10 $P11 $P12 $P13 $P14 $P15 $P16 $P17 $P18 $P19 $P20 $P21 $P22 $P23 $P24 $P25 $P26 $P27 $P28 $P29 $P30 $P31 $P32 $P33 $P34 $P35 $P36 $P37 $P38 $P39 $P40 $P41 $P42"
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=76800 count=98304 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  for p in $PATS; do n=$(grep -a -o -F -e "$p" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "12c00000-2ac00000 $n"; fi; done
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=724224 count=16576 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  for p in $PATS; do n=$(grep -a -o -F -e "$p" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b0d00000-b4dc0000 $n"; fi; done
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=53996 count=16220 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  for p in $PATS; do n=$(grep -a -o -F -e "$p" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "0d2ec000-11248000 $n"; fi; done
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=898432 count=8192 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  for p in $PATS; do n=$(grep -a -o -F -e "$p" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "db580000-dd580000 $n"; fi; done
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=856259 count=8192 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  for p in $PATS; do n=$(grep -a -o -F -e "$p" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d10c3000-d30c3000 $n"; fi; done
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=803924 count=7676 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  for p in $PATS; do n=$(grep -a -o -F -e "$p" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c4454000-c6250000 $n"; fi; done
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=473430 count=4095 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  for p in $PATS; do n=$(grep -a -o -F -e "$p" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "73956000-74955000 $n"; fi; done
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=835840 count=4032 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  for p in $PATS; do n=$(grep -a -o -F -e "$p" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "cc100000-cd0c0000 $n"; fi; done
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=933681 count=3072 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  for p in $PATS; do n=$(grep -a -o -F -e "$p" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e3f31000-e4b31000 $n"; fi; done
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=920366 count=3072 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  for p in $PATS; do n=$(grep -a -o -F -e "$p" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e0b2e000-e172e000 $n"; fi; done
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=20390 count=2419 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  for p in $PATS; do n=$(grep -a -o -F -e "$p" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "04fa6000-05919000 $n"; fi; done
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=890624 count=2240 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  for p in $PATS; do n=$(grep -a -o -F -e "$p" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d9700000-d9fc0000 $n"; fi; done
fi
echo SWEEP9-DONE
