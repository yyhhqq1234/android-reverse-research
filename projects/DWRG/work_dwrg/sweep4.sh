rm -f /data/local/tmp/r.bin
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=76800 count=98304 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "12c00000-2ac00000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=724224 count=16576 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b0d00000-b4dc0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=53996 count=16220 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "0d2ec000-11248000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=898432 count=8192 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "db580000-dd580000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "db580000-dd580000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "db580000-dd580000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "db580000-dd580000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "db580000-dd580000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "db580000-dd580000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "db580000-dd580000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "db580000-dd580000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "db580000-dd580000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "db580000-dd580000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=856259 count=8192 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "d10c3000-d30c3000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=803924 count=7676 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c4454000-c6250000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=473430 count=4095 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "73956000-74955000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "73956000-74955000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "73956000-74955000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "73956000-74955000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "73956000-74955000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "73956000-74955000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "73956000-74955000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "73956000-74955000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "73956000-74955000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "73956000-74955000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=835840 count=4032 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cc100000-cd0c0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=933681 count=3072 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "e3f31000-e4b31000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=920366 count=3072 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "e0b2e000-e172e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=20390 count=2419 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "04fa6000-05919000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=890624 count=2240 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "d9700000-d9fc0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=930607 count=2049 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "e332f000-e3b30000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "e332f000-e3b30000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "e332f000-e3b30000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "e332f000-e3b30000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "e332f000-e3b30000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "e332f000-e3b30000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e332f000-e3b30000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e332f000-e3b30000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e332f000-e3b30000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e332f000-e3b30000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=928558 count=2049 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "e2b2e000-e332f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "e2b2e000-e332f000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "e2b2e000-e332f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "e2b2e000-e332f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "e2b2e000-e332f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "e2b2e000-e332f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e2b2e000-e332f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e2b2e000-e332f000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e2b2e000-e332f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e2b2e000-e332f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=926510 count=2048 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "e232e000-e2b2e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "e232e000-e2b2e000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "e232e000-e2b2e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "e232e000-e2b2e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "e232e000-e2b2e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "e232e000-e2b2e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e232e000-e2b2e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e232e000-e2b2e000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e232e000-e2b2e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e232e000-e2b2e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=923950 count=2048 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "e192e000-e212e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "e192e000-e212e000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "e192e000-e212e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "e192e000-e212e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "e192e000-e212e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "e192e000-e212e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e192e000-e212e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e192e000-e212e000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e192e000-e212e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e192e000-e212e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=1045759 count=2047 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ff4ff000-ffcfe000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ff4ff000-ffcfe000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "ff4ff000-ffcfe000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ff4ff000-ffcfe000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ff4ff000-ffcfe000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ff4ff000-ffcfe000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ff4ff000-ffcfe000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ff4ff000-ffcfe000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "ff4ff000-ffcfe000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ff4ff000-ffcfe000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=742016 count=1728 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b5280000-b5940000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b5280000-b5940000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b5280000-b5940000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b5280000-b5940000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b5280000-b5940000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b5280000-b5940000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b5280000-b5940000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b5280000-b5940000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b5280000-b5940000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b5280000-b5940000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=815655 count=1423 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7227000-c77b6000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=47874 count=1314 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "0bb02000-0c024000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "0bb02000-0c024000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "0bb02000-0c024000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "0bb02000-0c024000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "0bb02000-0c024000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "0bb02000-0c024000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "0bb02000-0c024000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "0bb02000-0c024000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "0bb02000-0c024000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "0bb02000-0c024000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=968089 count=1309 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ec599000-ecab6000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ec599000-ecab6000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "ec599000-ecab6000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ec599000-ecab6000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ec599000-ecab6000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ec599000-ecab6000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ec599000-ecab6000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ec599000-ecab6000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "ec599000-ecab6000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ec599000-ecab6000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=917324 count=1152 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "dff4c000-e03cc000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "dff4c000-e03cc000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "dff4c000-e03cc000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "dff4c000-e03cc000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "dff4c000-e03cc000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "dff4c000-e03cc000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "dff4c000-e03cc000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "dff4c000-e03cc000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "dff4c000-e03cc000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "dff4c000-e03cc000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=932656 count=1025 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "e3b30000-e3f31000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "e3b30000-e3f31000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "e3b30000-e3f31000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "e3b30000-e3f31000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "e3b30000-e3f31000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "e3b30000-e3f31000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e3b30000-e3f31000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e3b30000-e3f31000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e3b30000-e3f31000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e3b30000-e3f31000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=814348 count=1025 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6d0c000-c710d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=752187 count=1025 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b7a3b000-b7e3c000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b7a3b000-b7e3c000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b7a3b000-b7e3c000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b7a3b000-b7e3c000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b7a3b000-b7e3c000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b7a3b000-b7e3c000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b7a3b000-b7e3c000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b7a3b000-b7e3c000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b7a3b000-b7e3c000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b7a3b000-b7e3c000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=770282 count=1024 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "bc0ea000-bc4ea000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "bc0ea000-bc4ea000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "bc0ea000-bc4ea000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "bc0ea000-bc4ea000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "bc0ea000-bc4ea000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "bc0ea000-bc4ea000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "bc0ea000-bc4ea000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "bc0ea000-bc4ea000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "bc0ea000-bc4ea000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "bc0ea000-bc4ea000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=757342 count=978 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b8e5e000-b9230000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b8e5e000-b9230000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b8e5e000-b9230000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b8e5e000-b9230000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b8e5e000-b9230000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b8e5e000-b9230000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b8e5e000-b9230000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b8e5e000-b9230000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b8e5e000-b9230000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b8e5e000-b9230000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=756364 count=978 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b8a8c000-b8e5e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b8a8c000-b8e5e000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b8a8c000-b8e5e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b8a8c000-b8e5e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b8a8c000-b8e5e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b8a8c000-b8e5e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b8a8c000-b8e5e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b8a8c000-b8e5e000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b8a8c000-b8e5e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b8a8c000-b8e5e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=750446 count=978 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b736e000-b7740000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b736e000-b7740000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b736e000-b7740000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b736e000-b7740000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b736e000-b7740000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b736e000-b7740000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b736e000-b7740000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b736e000-b7740000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b736e000-b7740000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b736e000-b7740000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=802633 count=773 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c3f49000-c424e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c3f49000-c424e000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c3f49000-c424e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c3f49000-c424e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c3f49000-c424e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c3f49000-c424e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c3f49000-c424e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c3f49000-c424e000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c3f49000-c424e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c3f49000-c424e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=765099 count=725 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "bacab000-baf80000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "bacab000-baf80000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "bacab000-baf80000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "bacab000-baf80000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "bacab000-baf80000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "bacab000-baf80000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "bacab000-baf80000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "bacab000-baf80000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "bacab000-baf80000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "bacab000-baf80000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=978368 count=704 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "eedc0000-ef080000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "eedc0000-ef080000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "eedc0000-ef080000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "eedc0000-ef080000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "eedc0000-ef080000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "eedc0000-ef080000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "eedc0000-ef080000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "eedc0000-ef080000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "eedc0000-ef080000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "eedc0000-ef080000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=952192 count=704 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "e8780000-e8a40000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "e8780000-e8a40000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "e8780000-e8a40000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "e8780000-e8a40000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "e8780000-e8a40000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "e8780000-e8a40000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e8780000-e8a40000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e8780000-e8a40000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e8780000-e8a40000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e8780000-e8a40000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=751424 count=704 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b7740000-b7a00000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b7740000-b7a00000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b7740000-b7a00000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b7740000-b7a00000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b7740000-b7a00000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b7740000-b7a00000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b7740000-b7a00000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b7740000-b7a00000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b7740000-b7a00000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b7740000-b7a00000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=897560 count=677 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "db218000-db4bd000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "db218000-db4bd000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "db218000-db4bd000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "db218000-db4bd000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "db218000-db4bd000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "db218000-db4bd000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "db218000-db4bd000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "db218000-db4bd000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "db218000-db4bd000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "db218000-db4bd000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=765826 count=650 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "baf82000-bb20c000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "baf82000-bb20c000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "baf82000-bb20c000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "baf82000-bb20c000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "baf82000-bb20c000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "baf82000-bb20c000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "baf82000-bb20c000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "baf82000-bb20c000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "baf82000-bb20c000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "baf82000-bb20c000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=872768 count=640 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "d5140000-d53c0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "d5140000-d53c0000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "d5140000-d53c0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "d5140000-d53c0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "d5140000-d53c0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "d5140000-d53c0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "d5140000-d53c0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "d5140000-d53c0000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "d5140000-d53c0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "d5140000-d53c0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=460150 count=593 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "70576000-707c7000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "70576000-707c7000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "70576000-707c7000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "70576000-707c7000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "70576000-707c7000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "70576000-707c7000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "70576000-707c7000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "70576000-707c7000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "70576000-707c7000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "70576000-707c7000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=865536 count=576 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "d3500000-d3740000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "d3500000-d3740000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "d3500000-d3740000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "d3500000-d3740000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "d3500000-d3740000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "d3500000-d3740000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "d3500000-d3740000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "d3500000-d3740000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "d3500000-d3740000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "d3500000-d3740000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=747584 count=576 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b6840000-b6a80000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b6840000-b6a80000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b6840000-b6a80000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b6840000-b6a80000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b6840000-b6a80000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b6840000-b6a80000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b6840000-b6a80000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b6840000-b6a80000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b6840000-b6a80000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b6840000-b6a80000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=761113 count=551 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b9d19000-b9f40000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b9d19000-b9f40000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b9d19000-b9f40000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b9d19000-b9f40000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b9d19000-b9f40000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b9d19000-b9f40000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b9d19000-b9f40000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b9d19000-b9f40000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b9d19000-b9f40000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b9d19000-b9f40000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=461141 count=537 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "70955000-70b6e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "70955000-70b6e000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "70955000-70b6e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "70955000-70b6e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "70955000-70b6e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "70955000-70b6e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "70955000-70b6e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "70955000-70b6e000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "70955000-70b6e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "70955000-70b6e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=925998 count=512 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "e212e000-e232e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "e212e000-e232e000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "e212e000-e232e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "e212e000-e232e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "e212e000-e232e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "e212e000-e232e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e212e000-e232e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e212e000-e232e000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e212e000-e232e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e212e000-e232e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=923438 count=512 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "e172e000-e192e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "e172e000-e192e000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "e172e000-e192e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "e172e000-e192e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "e172e000-e192e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "e172e000-e192e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e172e000-e192e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e172e000-e192e000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e172e000-e192e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e172e000-e192e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=763104 count=479 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ba4e0000-ba6bf000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ba4e0000-ba6bf000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "ba4e0000-ba6bf000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ba4e0000-ba6bf000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ba4e0000-ba6bf000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ba4e0000-ba6bf000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ba4e0000-ba6bf000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ba4e0000-ba6bf000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "ba4e0000-ba6bf000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ba4e0000-ba6bf000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=749986 count=459 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b71a2000-b736d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b71a2000-b736d000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b71a2000-b736d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b71a2000-b736d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b71a2000-b736d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b71a2000-b736d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b71a2000-b736d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b71a2000-b736d000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b71a2000-b736d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b71a2000-b736d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=749170 count=454 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b6e72000-b7038000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b6e72000-b7038000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b6e72000-b7038000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b6e72000-b7038000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b6e72000-b7038000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b6e72000-b7038000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b6e72000-b7038000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b6e72000-b7038000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b6e72000-b7038000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b6e72000-b7038000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=918784 count=448 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "e0500000-e06c0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "e0500000-e06c0000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "e0500000-e06c0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "e0500000-e06c0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "e0500000-e06c0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "e0500000-e06c0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e0500000-e06c0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e0500000-e06c0000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e0500000-e06c0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e0500000-e06c0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=763904 count=448 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ba800000-ba9c0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ba800000-ba9c0000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "ba800000-ba9c0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ba800000-ba9c0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ba800000-ba9c0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ba800000-ba9c0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ba800000-ba9c0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ba800000-ba9c0000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "ba800000-ba9c0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ba800000-ba9c0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=746496 count=448 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b6400000-b65c0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b6400000-b65c0000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b6400000-b65c0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b6400000-b65c0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b6400000-b65c0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b6400000-b65c0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b6400000-b65c0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b6400000-b65c0000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b6400000-b65c0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b6400000-b65c0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=745664 count=448 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b60c0000-b6280000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b60c0000-b6280000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b60c0000-b6280000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b60c0000-b6280000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b60c0000-b6280000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b60c0000-b6280000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b60c0000-b6280000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b60c0000-b6280000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b60c0000-b6280000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b60c0000-b6280000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=745216 count=448 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b5f00000-b60c0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b5f00000-b60c0000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b5f00000-b60c0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b5f00000-b60c0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b5f00000-b60c0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b5f00000-b60c0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b5f00000-b60c0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b5f00000-b60c0000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b5f00000-b60c0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b5f00000-b60c0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=796198 count=432 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c2626000-c27d6000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c2626000-c27d6000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c2626000-c27d6000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c2626000-c27d6000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c2626000-c27d6000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c2626000-c27d6000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c2626000-c27d6000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c2626000-c27d6000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c2626000-c27d6000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c2626000-c27d6000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=919710 count=400 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "e089e000-e0a2e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "e089e000-e0a2e000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "e089e000-e0a2e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "e089e000-e0a2e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "e089e000-e0a2e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "e089e000-e0a2e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e089e000-e0a2e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e089e000-e0a2e000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e089e000-e0a2e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e089e000-e0a2e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=812463 count=397 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c65af000-c673c000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=977664 count=320 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "eeb00000-eec40000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "eeb00000-eec40000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "eeb00000-eec40000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "eeb00000-eec40000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "eeb00000-eec40000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "eeb00000-eec40000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "eeb00000-eec40000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "eeb00000-eec40000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "eeb00000-eec40000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "eeb00000-eec40000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=872448 count=320 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "d5000000-d5140000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "d5000000-d5140000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "d5000000-d5140000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "d5000000-d5140000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "d5000000-d5140000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "d5000000-d5140000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "d5000000-d5140000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "d5000000-d5140000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "d5000000-d5140000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "d5000000-d5140000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=760256 count=320 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b99c0000-b9b00000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b99c0000-b9b00000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b99c0000-b9b00000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b99c0000-b9b00000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b99c0000-b9b00000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b99c0000-b9b00000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b99c0000-b9b00000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b99c0000-b9b00000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b99c0000-b9b00000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b99c0000-b9b00000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=753280 count=320 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b7e80000-b7fc0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b7e80000-b7fc0000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b7e80000-b7fc0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b7e80000-b7fc0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b7e80000-b7fc0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b7e80000-b7fc0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b7e80000-b7fc0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b7e80000-b7fc0000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b7e80000-b7fc0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b7e80000-b7fc0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=744384 count=320 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b5bc0000-b5d00000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b5bc0000-b5d00000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b5bc0000-b5d00000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b5bc0000-b5d00000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b5bc0000-b5d00000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b5bc0000-b5d00000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b5bc0000-b5d00000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b5bc0000-b5d00000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b5bc0000-b5d00000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b5bc0000-b5d00000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=748489 count=270 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b6bc9000-b6cd7000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b6bc9000-b6cd7000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b6bc9000-b6cd7000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b6bc9000-b6cd7000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b6bc9000-b6cd7000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b6bc9000-b6cd7000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b6bc9000-b6cd7000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b6bc9000-b6cd7000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b6bc9000-b6cd7000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b6bc9000-b6cd7000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=894792 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "da748000-da84e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "da748000-da84e000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "da748000-da84e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "da748000-da84e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "da748000-da84e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "da748000-da84e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "da748000-da84e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "da748000-da84e000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "da748000-da84e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "da748000-da84e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=894527 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "da63f000-da745000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "da63f000-da745000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "da63f000-da745000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "da63f000-da745000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "da63f000-da745000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "da63f000-da745000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "da63f000-da745000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "da63f000-da745000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "da63f000-da745000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "da63f000-da745000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=894262 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "da536000-da63c000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "da536000-da63c000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "da536000-da63c000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "da536000-da63c000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "da536000-da63c000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "da536000-da63c000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "da536000-da63c000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "da536000-da63c000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "da536000-da63c000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "da536000-da63c000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=893997 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "da42d000-da533000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "da42d000-da533000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "da42d000-da533000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "da42d000-da533000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "da42d000-da533000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "da42d000-da533000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "da42d000-da533000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "da42d000-da533000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "da42d000-da533000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "da42d000-da533000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824919 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9657000-c975d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823699 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9193000-c9299000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=813046 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c67f6000-c68fc000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=801858 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c3c42000-c3d48000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c3c42000-c3d48000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c3c42000-c3d48000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c3c42000-c3d48000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c3c42000-c3d48000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c3c42000-c3d48000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c3c42000-c3d48000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c3c42000-c3d48000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c3c42000-c3d48000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c3c42000-c3d48000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=801593 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c3b39000-c3c3f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c3b39000-c3c3f000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c3b39000-c3c3f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c3b39000-c3c3f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c3b39000-c3c3f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c3b39000-c3c3f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c3b39000-c3c3f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c3b39000-c3c3f000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c3b39000-c3c3f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c3b39000-c3c3f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=801328 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c3a30000-c3b36000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c3a30000-c3b36000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c3a30000-c3b36000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c3a30000-c3b36000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c3a30000-c3b36000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c3a30000-c3b36000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c3a30000-c3b36000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c3a30000-c3b36000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c3a30000-c3b36000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c3a30000-c3b36000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=796785 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c2871000-c2977000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c2871000-c2977000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c2871000-c2977000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c2871000-c2977000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c2871000-c2977000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c2871000-c2977000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c2871000-c2977000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c2871000-c2977000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c2871000-c2977000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c2871000-c2977000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=767033 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "bb439000-bb53f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "bb439000-bb53f000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "bb439000-bb53f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "bb439000-bb53f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "bb439000-bb53f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "bb439000-bb53f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "bb439000-bb53f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "bb439000-bb53f000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "bb439000-bb53f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "bb439000-bb53f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=762041 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ba0b9000-ba1bf000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ba0b9000-ba1bf000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "ba0b9000-ba1bf000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ba0b9000-ba1bf000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ba0b9000-ba1bf000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ba0b9000-ba1bf000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ba0b9000-ba1bf000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ba0b9000-ba1bf000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "ba0b9000-ba1bf000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ba0b9000-ba1bf000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=759737 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b97b9000-b98bf000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b97b9000-b98bf000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b97b9000-b98bf000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b97b9000-b98bf000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b97b9000-b98bf000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b97b9000-b98bf000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b97b9000-b98bf000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b97b9000-b98bf000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b97b9000-b98bf000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b97b9000-b98bf000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=723961 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b0bf9000-b0cff000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b0bf9000-b0cff000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b0bf9000-b0cff000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b0bf9000-b0cff000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b0bf9000-b0cff000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b0bf9000-b0cff000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b0bf9000-b0cff000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b0bf9000-b0cff000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b0bf9000-b0cff000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b0bf9000-b0cff000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=723577 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b0a79000-b0b7f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b0a79000-b0b7f000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b0a79000-b0b7f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b0a79000-b0b7f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b0a79000-b0b7f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b0a79000-b0b7f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b0a79000-b0b7f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b0a79000-b0b7f000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b0a79000-b0b7f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b0a79000-b0b7f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=749626 count=261 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "b703a000-b713f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "b703a000-b713f000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "b703a000-b713f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "b703a000-b713f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "b703a000-b713f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "b703a000-b713f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b703a000-b713f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b703a000-b713f000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b703a000-b713f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b703a000-b713f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=817586 count=259 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c79b2000-c7ab5000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=812071 count=259 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6427000-c652a000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 asdf_d $(grep -a -c asdf_d /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
fi
echo SWEEP4-DONE
