rm -f /data/local/tmp/r.bin
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=76800 count=98304 2>&1 | head -2
ls -l /data/local/tmp/r.bin 2>&1
if [ -f /data/local/tmp/r.bin ]; then
  echo "12c00000-2ac00000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 iLogicHook $(grep -a -c iLogicHook /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 AsyncManager $(grep -a -c AsyncManager /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 redirect $(grep -a -c redirect /data/local/tmp/r.bin)"
  echo "12c00000-2ac00000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=724224 count=16576 2>&1 | head -2
ls -l /data/local/tmp/r.bin 2>&1
if [ -f /data/local/tmp/r.bin ]; then
  echo "b0d00000-b4dc0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 iLogicHook $(grep -a -c iLogicHook /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 AsyncManager $(grep -a -c AsyncManager /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 redirect $(grep -a -c redirect /data/local/tmp/r.bin)"
  echo "b0d00000-b4dc0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=53996 count=16220 2>&1 | head -2
ls -l /data/local/tmp/r.bin 2>&1
if [ -f /data/local/tmp/r.bin ]; then
  echo "0d2ec000-11248000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 iLogicHook $(grep -a -c iLogicHook /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 AsyncManager $(grep -a -c AsyncManager /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 redirect $(grep -a -c redirect /data/local/tmp/r.bin)"
  echo "0d2ec000-11248000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=898432 count=8192 2>&1 | head -2
ls -l /data/local/tmp/r.bin 2>&1
if [ -f /data/local/tmp/r.bin ]; then
  echo "db580000-dd580000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "db580000-dd580000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "db580000-dd580000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "db580000-dd580000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "db580000-dd580000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "db580000-dd580000 iLogicHook $(grep -a -c iLogicHook /data/local/tmp/r.bin)"
  echo "db580000-dd580000 AsyncManager $(grep -a -c AsyncManager /data/local/tmp/r.bin)"
  echo "db580000-dd580000 redirect $(grep -a -c redirect /data/local/tmp/r.bin)"
  echo "db580000-dd580000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=856259 count=8192 2>&1 | head -2
ls -l /data/local/tmp/r.bin 2>&1
if [ -f /data/local/tmp/r.bin ]; then
  echo "d10c3000-d30c3000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 iLogicHook $(grep -a -c iLogicHook /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 AsyncManager $(grep -a -c AsyncManager /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 redirect $(grep -a -c redirect /data/local/tmp/r.bin)"
  echo "d10c3000-d30c3000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=803924 count=7676 2>&1 | head -2
ls -l /data/local/tmp/r.bin 2>&1
if [ -f /data/local/tmp/r.bin ]; then
  echo "c4454000-c6250000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 iLogicHook $(grep -a -c iLogicHook /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 AsyncManager $(grep -a -c AsyncManager /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 redirect $(grep -a -c redirect /data/local/tmp/r.bin)"
  echo "c4454000-c6250000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=473430 count=4095 2>&1 | head -2
ls -l /data/local/tmp/r.bin 2>&1
if [ -f /data/local/tmp/r.bin ]; then
  echo "73956000-74955000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "73956000-74955000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "73956000-74955000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "73956000-74955000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "73956000-74955000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "73956000-74955000 iLogicHook $(grep -a -c iLogicHook /data/local/tmp/r.bin)"
  echo "73956000-74955000 AsyncManager $(grep -a -c AsyncManager /data/local/tmp/r.bin)"
  echo "73956000-74955000 redirect $(grep -a -c redirect /data/local/tmp/r.bin)"
  echo "73956000-74955000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=835840 count=4032 2>&1 | head -2
ls -l /data/local/tmp/r.bin 2>&1
if [ -f /data/local/tmp/r.bin ]; then
  echo "cc100000-cd0c0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 iLogicHook $(grep -a -c iLogicHook /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 AsyncManager $(grep -a -c AsyncManager /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 redirect $(grep -a -c redirect /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=933681 count=3072 2>&1 | head -2
ls -l /data/local/tmp/r.bin 2>&1
if [ -f /data/local/tmp/r.bin ]; then
  echo "e3f31000-e4b31000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 iLogicHook $(grep -a -c iLogicHook /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 AsyncManager $(grep -a -c AsyncManager /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 redirect $(grep -a -c redirect /data/local/tmp/r.bin)"
  echo "e3f31000-e4b31000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=920366 count=3072 2>&1 | head -2
ls -l /data/local/tmp/r.bin 2>&1
if [ -f /data/local/tmp/r.bin ]; then
  echo "e0b2e000-e172e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 iLogicHook $(grep -a -c iLogicHook /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 AsyncManager $(grep -a -c AsyncManager /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 redirect $(grep -a -c redirect /data/local/tmp/r.bin)"
  echo "e0b2e000-e172e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=20390 count=2419 2>&1 | head -2
ls -l /data/local/tmp/r.bin 2>&1
if [ -f /data/local/tmp/r.bin ]; then
  echo "04fa6000-05919000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 iLogicHook $(grep -a -c iLogicHook /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 AsyncManager $(grep -a -c AsyncManager /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 redirect $(grep -a -c redirect /data/local/tmp/r.bin)"
  echo "04fa6000-05919000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=890624 count=2240 2>&1 | head -2
ls -l /data/local/tmp/r.bin 2>&1
if [ -f /data/local/tmp/r.bin ]; then
  echo "d9700000-d9fc0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 hang_uid $(grep -a -c hang_uid /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 iLogicHook $(grep -a -c iLogicHook /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 AsyncManager $(grep -a -c AsyncManager /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 redirect $(grep -a -c redirect /data/local/tmp/r.bin)"
  echo "d9700000-d9fc0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
fi
echo SWEEP3-DONE
