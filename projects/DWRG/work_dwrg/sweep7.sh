P_hookfn=$(printf '\x14\xf1\x71\xca')
P_killcivil=$(printf '\xe4\x5a\x72\xca')
P_hanguid=$(printf '\x44\x7d\x6f\xca')
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=20390 count=2419 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "04fa6000-05919000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "04fa6000-05919000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "04fa6000-05919000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=47874 count=1314 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "0bb02000-0c024000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "0bb02000-0c024000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "0bb02000-0c024000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=53996 count=16220 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "0d2ec000-11248000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "0d2ec000-11248000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "0d2ec000-11248000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=460150 count=593 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "70576000-707c7000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "70576000-707c7000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "70576000-707c7000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=461141 count=537 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "70955000-70b6e000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "70955000-70b6e000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "70955000-70b6e000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=473430 count=4095 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "73956000-74955000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "73956000-74955000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "73956000-74955000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=723961 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b0bf9000-b0cff000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b0bf9000-b0cff000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b0bf9000-b0cff000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=724224 count=16576 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b0d00000-b4dc0000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b0d00000-b4dc0000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b0d00000-b4dc0000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=742016 count=1728 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b5280000-b5940000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b5280000-b5940000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b5280000-b5940000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=744384 count=320 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b5bc0000-b5d00000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b5bc0000-b5d00000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b5bc0000-b5d00000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=745664 count=448 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b60c0000-b6280000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b60c0000-b6280000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b60c0000-b6280000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=746496 count=448 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b6400000-b65c0000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b6400000-b65c0000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b6400000-b65c0000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=747584 count=576 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b6840000-b6a80000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b6840000-b6a80000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b6840000-b6a80000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=748489 count=270 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b6bc9000-b6cd7000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b6bc9000-b6cd7000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b6bc9000-b6cd7000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=749170 count=454 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b6e72000-b7038000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b6e72000-b7038000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b6e72000-b7038000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=749626 count=261 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b703a000-b713f000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b703a000-b713f000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b703a000-b713f000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=749986 count=459 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b71a2000-b736d000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b71a2000-b736d000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b71a2000-b736d000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=750446 count=978 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b736e000-b7740000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b736e000-b7740000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b736e000-b7740000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=751424 count=704 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b7740000-b7a00000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b7740000-b7a00000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b7740000-b7a00000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=752187 count=1025 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b7a3b000-b7e3c000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b7a3b000-b7e3c000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b7a3b000-b7e3c000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=753280 count=320 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b7e80000-b7fc0000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b7e80000-b7fc0000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b7e80000-b7fc0000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=753919 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b80ff000-b8200000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b80ff000-b8200000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b80ff000-b8200000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=756364 count=978 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b8a8c000-b8e5e000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b8a8c000-b8e5e000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b8a8c000-b8e5e000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=757342 count=978 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b8e5e000-b9230000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b8e5e000-b9230000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b8e5e000-b9230000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=759737 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b97b9000-b98bf000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b97b9000-b98bf000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b97b9000-b98bf000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=760256 count=320 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b99c0000-b9b00000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b99c0000-b9b00000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b99c0000-b9b00000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=761113 count=551 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b9d19000-b9f40000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b9d19000-b9f40000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "b9d19000-b9f40000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=762041 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ba0b9000-ba1bf000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ba0b9000-ba1bf000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ba0b9000-ba1bf000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=763104 count=479 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ba4e0000-ba6bf000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ba4e0000-ba6bf000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ba4e0000-ba6bf000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=763904 count=448 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ba800000-ba9c0000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ba800000-ba9c0000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ba800000-ba9c0000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=765099 count=725 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "bacab000-baf80000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "bacab000-baf80000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "bacab000-baf80000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=765826 count=650 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "baf82000-bb20c000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "baf82000-bb20c000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "baf82000-bb20c000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=767033 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "bb439000-bb53f000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "bb439000-bb53f000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "bb439000-bb53f000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=770282 count=1024 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "bc0ea000-bc4ea000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "bc0ea000-bc4ea000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "bc0ea000-bc4ea000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=796198 count=432 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c2626000-c27d6000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c2626000-c27d6000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c2626000-c27d6000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=796785 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c2871000-c2977000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c2871000-c2977000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c2871000-c2977000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=800945 count=259 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c38b1000-c39b4000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c38b1000-c39b4000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c38b1000-c39b4000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=801328 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c3a30000-c3b36000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c3a30000-c3b36000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c3a30000-c3b36000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=801593 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c3b39000-c3c3f000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c3b39000-c3c3f000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c3b39000-c3c3f000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=801858 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c3c42000-c3d48000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c3c42000-c3d48000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c3c42000-c3d48000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=802633 count=773 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c3f49000-c424e000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c3f49000-c424e000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c3f49000-c424e000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=803427 count=259 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c4263000-c4366000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c4263000-c4366000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c4263000-c4366000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=803924 count=7676 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c4454000-c6250000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c4454000-c6250000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c4454000-c6250000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=811813 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c6325000-c6426000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c6325000-c6426000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c6325000-c6426000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=812071 count=259 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c6427000-c652a000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c6427000-c652a000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c6427000-c652a000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=812463 count=397 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c65af000-c673c000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c65af000-c673c000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c65af000-c673c000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=813046 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c67f6000-c68fc000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c67f6000-c68fc000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c67f6000-c68fc000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=813391 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c694f000-c6a50000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c694f000-c6a50000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c694f000-c6a50000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=814089 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c6c09000-c6d0a000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c6c09000-c6d0a000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c6c09000-c6d0a000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=814348 count=1025 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c6d0c000-c710d000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c6d0c000-c710d000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c6d0c000-c710d000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=815655 count=1423 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c7227000-c77b6000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c7227000-c77b6000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c7227000-c77b6000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=817328 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c78b0000-c79b1000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c78b0000-c79b1000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c78b0000-c79b1000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=817586 count=259 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c79b2000-c7ab5000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c79b2000-c7ab5000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c79b2000-c7ab5000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=817847 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c7ab7000-c7bb8000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c7ab7000-c7bb8000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c7ab7000-c7bb8000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=820638 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c859e000-c869f000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c859e000-c869f000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c859e000-c869f000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=821476 count=256 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c88e4000-c89e4000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c88e4000-c89e4000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c88e4000-c89e4000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823699 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c9193000-c9299000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c9193000-c9299000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c9193000-c9299000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824919 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c9657000-c975d000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c9657000-c975d000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "c9657000-c975d000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=835840 count=4032 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "cc100000-cd0c0000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "cc100000-cd0c0000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "cc100000-cd0c0000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=856259 count=8192 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d10c3000-d30c3000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d10c3000-d30c3000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d10c3000-d30c3000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=865536 count=576 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d3500000-d3740000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d3500000-d3740000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d3500000-d3740000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=872448 count=320 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d5000000-d5140000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d5000000-d5140000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d5000000-d5140000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=872768 count=640 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d5140000-d53c0000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d5140000-d53c0000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "d5140000-d53c0000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=893997 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da42d000-da533000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da42d000-da533000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da42d000-da533000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=894262 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da536000-da63c000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da536000-da63c000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da536000-da63c000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=894527 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da63f000-da745000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da63f000-da745000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da63f000-da745000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=894792 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da748000-da84e000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da748000-da84e000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da748000-da84e000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=895057 count=258 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da851000-da953000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da851000-da953000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "da851000-da953000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=897560 count=677 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "db218000-db4bd000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "db218000-db4bd000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "db218000-db4bd000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=898432 count=8192 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "db580000-dd580000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "db580000-dd580000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "db580000-dd580000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=917324 count=1152 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "dff4c000-e03cc000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "dff4c000-e03cc000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "dff4c000-e03cc000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=918784 count=448 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e0500000-e06c0000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e0500000-e06c0000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e0500000-e06c0000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=919710 count=400 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e089e000-e0a2e000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e089e000-e0a2e000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e089e000-e0a2e000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=920110 count=256 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e0a2e000-e0b2e000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e0a2e000-e0b2e000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e0a2e000-e0b2e000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=920366 count=3072 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e0b2e000-e172e000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e0b2e000-e172e000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e0b2e000-e172e000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=923438 count=512 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e172e000-e192e000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e172e000-e192e000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e172e000-e192e000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=923950 count=2048 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e192e000-e212e000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e192e000-e212e000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e192e000-e212e000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=925998 count=512 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e212e000-e232e000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e212e000-e232e000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e212e000-e232e000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=926510 count=2048 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e232e000-e2b2e000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e232e000-e2b2e000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e232e000-e2b2e000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=928558 count=2049 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e2b2e000-e332f000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e2b2e000-e332f000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e2b2e000-e332f000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=930607 count=2049 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e332f000-e3b30000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e332f000-e3b30000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e332f000-e3b30000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=932656 count=1025 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e3b30000-e3f31000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e3b30000-e3f31000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e3b30000-e3f31000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=933681 count=3072 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e3f31000-e4b31000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e3f31000-e4b31000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e3f31000-e4b31000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=936753 count=256 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e4b31000-e4c31000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e4b31000-e4c31000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e4b31000-e4c31000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=937009 count=256 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e4c31000-e4d31000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e4c31000-e4d31000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e4c31000-e4d31000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=952192 count=704 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e8780000-e8a40000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e8780000-e8a40000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "e8780000-e8a40000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=968089 count=1309 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ec599000-ecab6000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ec599000-ecab6000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ec599000-ecab6000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=977664 count=320 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "eeb00000-eec40000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "eeb00000-eec40000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "eeb00000-eec40000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=978368 count=704 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "eedc0000-ef080000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "eedc0000-ef080000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "eedc0000-ef080000 hanguid $n"; fi
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=1045759 count=2047 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  n=$(grep -a -o -F -e "$P_hookfn" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ff4ff000-ffcfe000 hookfn $n"; fi
  n=$(grep -a -o -F -e "$P_killcivil" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ff4ff000-ffcfe000 killcivil $n"; fi
  n=$(grep -a -o -F -e "$P_hanguid" /data/local/tmp/r.bin | wc -l); if [ "$n" != "0" ]; then echo "ff4ff000-ffcfe000 hanguid $n"; fi
fi
echo SWEEP7-DONE
