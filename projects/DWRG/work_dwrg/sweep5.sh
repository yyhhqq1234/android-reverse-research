rm -f /data/local/tmp/r.bin
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=811600 count=3 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6250000-c6253000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6250000-c6253000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6250000-c6253000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6250000-c6253000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6250000-c6253000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6250000-c6253000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6250000-c6253000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6250000-c6253000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6250000-c6253000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6250000-c6253000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6250000-c6253000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=811648 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6280000-c62c0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6280000-c62c0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6280000-c62c0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6280000-c62c0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6280000-c62c0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6280000-c62c0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6280000-c62c0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6280000-c62c0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6280000-c62c0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6280000-c62c0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6280000-c62c0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=811717 count=27 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c62c5000-c62e0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c62c5000-c62e0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c62c5000-c62e0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c62c5000-c62e0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c62c5000-c62e0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c62c5000-c62e0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c62c5000-c62e0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c62c5000-c62e0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c62c5000-c62e0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c62c5000-c62e0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c62c5000-c62e0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=811746 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c62e2000-c6323000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c62e2000-c6323000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c62e2000-c6323000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c62e2000-c6323000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c62e2000-c6323000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c62e2000-c6323000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c62e2000-c6323000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c62e2000-c6323000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c62e2000-c6323000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c62e2000-c6323000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c62e2000-c6323000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=811813 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6325000-c6426000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6325000-c6426000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6325000-c6426000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6325000-c6426000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6325000-c6426000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6325000-c6426000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6325000-c6426000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6325000-c6426000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6325000-c6426000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6325000-c6426000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6325000-c6426000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=812071 count=259 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6427000-c652a000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6427000-c652a000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=812352 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6540000-c6580000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6540000-c6580000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6540000-c6580000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6540000-c6580000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6540000-c6580000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6540000-c6580000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6540000-c6580000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6540000-c6580000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6540000-c6580000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6540000-c6580000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6540000-c6580000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=812436 count=25 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6594000-c65ad000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6594000-c65ad000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6594000-c65ad000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6594000-c65ad000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6594000-c65ad000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6594000-c65ad000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6594000-c65ad000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6594000-c65ad000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6594000-c65ad000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6594000-c65ad000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6594000-c65ad000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=812463 count=397 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c65af000-c673c000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c65af000-c673c000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=812862 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c673e000-c677f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c673e000-c677f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c673e000-c677f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c673e000-c677f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c673e000-c677f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c673e000-c677f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c673e000-c677f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c673e000-c677f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c673e000-c677f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c673e000-c677f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c673e000-c677f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=812928 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6780000-c67c0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6780000-c67c0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6780000-c67c0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6780000-c67c0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6780000-c67c0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6780000-c67c0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6780000-c67c0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6780000-c67c0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6780000-c67c0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6780000-c67c0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6780000-c67c0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=812995 count=23 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c67c3000-c67da000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c67c3000-c67da000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c67c3000-c67da000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c67c3000-c67da000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c67c3000-c67da000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c67c3000-c67da000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c67c3000-c67da000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c67c3000-c67da000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c67c3000-c67da000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c67c3000-c67da000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c67c3000-c67da000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=813020 count=23 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c67dc000-c67f3000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c67dc000-c67f3000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c67dc000-c67f3000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c67dc000-c67f3000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c67dc000-c67f3000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c67dc000-c67f3000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c67dc000-c67f3000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c67dc000-c67f3000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c67dc000-c67f3000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c67dc000-c67f3000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c67dc000-c67f3000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=813046 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c67f6000-c68fc000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c67f6000-c68fc000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=813391 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c694f000-c6a50000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c694f000-c6a50000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c694f000-c6a50000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c694f000-c6a50000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c694f000-c6a50000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c694f000-c6a50000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c694f000-c6a50000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c694f000-c6a50000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c694f000-c6a50000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c694f000-c6a50000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c694f000-c6a50000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=813649 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6a51000-c6a71000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6a51000-c6a71000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6a51000-c6a71000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6a51000-c6a71000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6a51000-c6a71000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6a51000-c6a71000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6a51000-c6a71000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6a51000-c6a71000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6a51000-c6a71000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6a51000-c6a71000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6a51000-c6a71000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=813694 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6a7e000-c6abf000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6a7e000-c6abf000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6a7e000-c6abf000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6a7e000-c6abf000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6a7e000-c6abf000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6a7e000-c6abf000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6a7e000-c6abf000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6a7e000-c6abf000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6a7e000-c6abf000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6a7e000-c6abf000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6a7e000-c6abf000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=813760 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6ac0000-c6b00000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6ac0000-c6b00000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6ac0000-c6b00000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6ac0000-c6b00000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6ac0000-c6b00000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6ac0000-c6b00000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6ac0000-c6b00000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6ac0000-c6b00000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6ac0000-c6b00000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6ac0000-c6b00000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6ac0000-c6b00000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=813888 count=192 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6b40000-c6c00000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6b40000-c6c00000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6b40000-c6c00000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6b40000-c6c00000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6b40000-c6c00000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6b40000-c6c00000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6b40000-c6c00000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6b40000-c6c00000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6b40000-c6c00000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6b40000-c6c00000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6b40000-c6c00000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=814089 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6c09000-c6d0a000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6c09000-c6d0a000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6c09000-c6d0a000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6c09000-c6d0a000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6c09000-c6d0a000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6c09000-c6d0a000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6c09000-c6d0a000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6c09000-c6d0a000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6c09000-c6d0a000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6c09000-c6d0a000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6c09000-c6d0a000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=814348 count=1025 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c6d0c000-c710d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c6d0c000-c710d000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=815655 count=1423 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7227000-c77b6000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7227000-c77b6000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=817126 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c77e6000-c7827000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c77e6000-c7827000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c77e6000-c7827000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c77e6000-c7827000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c77e6000-c7827000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c77e6000-c7827000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c77e6000-c7827000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c77e6000-c7827000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c77e6000-c7827000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c77e6000-c7827000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c77e6000-c7827000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=817193 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7829000-c786a000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7829000-c786a000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7829000-c786a000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7829000-c786a000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7829000-c786a000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7829000-c786a000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7829000-c786a000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7829000-c786a000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7829000-c786a000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7829000-c786a000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7829000-c786a000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=817260 count=66 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c786c000-c78ae000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c786c000-c78ae000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c786c000-c78ae000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c786c000-c78ae000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c786c000-c78ae000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c786c000-c78ae000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c786c000-c78ae000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c786c000-c78ae000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c786c000-c78ae000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c786c000-c78ae000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c786c000-c78ae000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=817328 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c78b0000-c79b1000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c78b0000-c79b1000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c78b0000-c79b1000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c78b0000-c79b1000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c78b0000-c79b1000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c78b0000-c79b1000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c78b0000-c79b1000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c78b0000-c79b1000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c78b0000-c79b1000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c78b0000-c79b1000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c78b0000-c79b1000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=817586 count=259 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c79b2000-c7ab5000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c79b2000-c7ab5000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=817847 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7ab7000-c7bb8000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7ab7000-c7bb8000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7ab7000-c7bb8000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7ab7000-c7bb8000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7ab7000-c7bb8000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7ab7000-c7bb8000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7ab7000-c7bb8000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7ab7000-c7bb8000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7ab7000-c7bb8000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7ab7000-c7bb8000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7ab7000-c7bb8000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=818105 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7bb9000-c7bfa000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7bb9000-c7bfa000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7bb9000-c7bfa000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7bb9000-c7bfa000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7bb9000-c7bfa000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7bb9000-c7bfa000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7bb9000-c7bfa000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7bb9000-c7bfa000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7bb9000-c7bfa000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7bb9000-c7bfa000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7bb9000-c7bfa000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=818233 count=67 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7c39000-c7c7c000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7c39000-c7c7c000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7c39000-c7c7c000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7c39000-c7c7c000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7c39000-c7c7c000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7c39000-c7c7c000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7c39000-c7c7c000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7c39000-c7c7c000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7c39000-c7c7c000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7c39000-c7c7c000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7c39000-c7c7c000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=818302 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7c7e000-c7cbf000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7c7e000-c7cbf000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7c7e000-c7cbf000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7c7e000-c7cbf000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7c7e000-c7cbf000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7c7e000-c7cbf000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7c7e000-c7cbf000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7c7e000-c7cbf000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7c7e000-c7cbf000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7c7e000-c7cbf000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7c7e000-c7cbf000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=818368 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7cc0000-c7d00000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7cc0000-c7d00000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7cc0000-c7d00000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7cc0000-c7d00000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7cc0000-c7d00000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7cc0000-c7d00000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7cc0000-c7d00000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7cc0000-c7d00000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7cc0000-c7d00000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7cc0000-c7d00000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7cc0000-c7d00000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=818482 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7d32000-c7d73000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7d32000-c7d73000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7d32000-c7d73000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7d32000-c7d73000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7d32000-c7d73000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7d32000-c7d73000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7d32000-c7d73000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7d32000-c7d73000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7d32000-c7d73000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7d32000-c7d73000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7d32000-c7d73000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=818549 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7d75000-c7db6000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7d75000-c7db6000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7d75000-c7db6000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7d75000-c7db6000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7d75000-c7db6000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7d75000-c7db6000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7d75000-c7db6000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7d75000-c7db6000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7d75000-c7db6000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7d75000-c7db6000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7d75000-c7db6000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=818616 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7db8000-c7df9000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7db8000-c7df9000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7db8000-c7df9000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7db8000-c7df9000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7db8000-c7df9000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7db8000-c7df9000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7db8000-c7df9000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7db8000-c7df9000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7db8000-c7df9000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7db8000-c7df9000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7db8000-c7df9000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=818683 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7dfb000-c7e3c000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7dfb000-c7e3c000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7dfb000-c7e3c000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7dfb000-c7e3c000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7dfb000-c7e3c000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7dfb000-c7e3c000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7dfb000-c7e3c000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7dfb000-c7e3c000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7dfb000-c7e3c000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7dfb000-c7e3c000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7dfb000-c7e3c000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=818750 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7e3e000-c7e7f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7e3e000-c7e7f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7e3e000-c7e7f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7e3e000-c7e7f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7e3e000-c7e7f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7e3e000-c7e7f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7e3e000-c7e7f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7e3e000-c7e7f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7e3e000-c7e7f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7e3e000-c7e7f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7e3e000-c7e7f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=818816 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7e80000-c7ec0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7e80000-c7ec0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7e80000-c7ec0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7e80000-c7ec0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7e80000-c7ec0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7e80000-c7ec0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7e80000-c7ec0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7e80000-c7ec0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7e80000-c7ec0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7e80000-c7ec0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7e80000-c7ec0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=818880 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7ec0000-c7f00000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7ec0000-c7f00000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7ec0000-c7f00000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7ec0000-c7f00000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7ec0000-c7f00000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7ec0000-c7f00000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7ec0000-c7f00000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7ec0000-c7f00000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7ec0000-c7f00000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7ec0000-c7f00000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7ec0000-c7f00000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=818961 count=62 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7f11000-c7f4f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7f11000-c7f4f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7f11000-c7f4f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7f11000-c7f4f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7f11000-c7f4f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7f11000-c7f4f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7f11000-c7f4f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7f11000-c7f4f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7f11000-c7f4f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7f11000-c7f4f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7f11000-c7f4f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819085 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7f8d000-c7fcd000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7f8d000-c7fcd000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7f8d000-c7fcd000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7f8d000-c7fcd000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7f8d000-c7fcd000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7f8d000-c7fcd000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7f8d000-c7fcd000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7f8d000-c7fcd000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7f8d000-c7fcd000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7f8d000-c7fcd000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7f8d000-c7fcd000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819150 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c7fce000-c800f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c7fce000-c800f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c7fce000-c800f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c7fce000-c800f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c7fce000-c800f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c7fce000-c800f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c7fce000-c800f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c7fce000-c800f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c7fce000-c800f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c7fce000-c800f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c7fce000-c800f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819247 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c802f000-c804f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c802f000-c804f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c802f000-c804f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c802f000-c804f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c802f000-c804f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c802f000-c804f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c802f000-c804f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c802f000-c804f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c802f000-c804f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c802f000-c804f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c802f000-c804f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819280 count=52 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8050000-c8084000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8050000-c8084000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8050000-c8084000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8050000-c8084000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8050000-c8084000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8050000-c8084000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8050000-c8084000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8050000-c8084000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8050000-c8084000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8050000-c8084000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8050000-c8084000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819334 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8086000-c80c7000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8086000-c80c7000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8086000-c80c7000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8086000-c80c7000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8086000-c80c7000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8086000-c80c7000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8086000-c80c7000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8086000-c80c7000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8086000-c80c7000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8086000-c80c7000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8086000-c80c7000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819401 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c80c9000-c810a000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c80c9000-c810a000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c80c9000-c810a000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c80c9000-c810a000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c80c9000-c810a000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c80c9000-c810a000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c80c9000-c810a000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c80c9000-c810a000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c80c9000-c810a000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c80c9000-c810a000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c80c9000-c810a000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819468 count=49 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c810c000-c813d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c810c000-c813d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c810c000-c813d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c810c000-c813d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c810c000-c813d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c810c000-c813d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c810c000-c813d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c810c000-c813d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c810c000-c813d000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c810c000-c813d000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c810c000-c813d000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819519 count=49 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c813f000-c8170000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c813f000-c8170000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c813f000-c8170000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c813f000-c8170000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c813f000-c8170000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c813f000-c8170000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c813f000-c8170000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c813f000-c8170000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c813f000-c8170000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c813f000-c8170000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c813f000-c8170000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819570 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8172000-c81b3000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8172000-c81b3000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8172000-c81b3000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8172000-c81b3000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8172000-c81b3000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8172000-c81b3000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8172000-c81b3000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8172000-c81b3000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8172000-c81b3000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8172000-c81b3000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8172000-c81b3000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819637 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c81b5000-c81f6000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c81b5000-c81f6000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c81b5000-c81f6000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c81b5000-c81f6000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c81b5000-c81f6000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c81b5000-c81f6000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c81b5000-c81f6000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c81b5000-c81f6000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c81b5000-c81f6000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c81b5000-c81f6000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c81b5000-c81f6000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819704 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c81f8000-c8239000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c81f8000-c8239000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c81f8000-c8239000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c81f8000-c8239000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c81f8000-c8239000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c81f8000-c8239000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c81f8000-c8239000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c81f8000-c8239000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c81f8000-c8239000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c81f8000-c8239000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c81f8000-c8239000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819771 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c823b000-c827c000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c823b000-c827c000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c823b000-c827c000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c823b000-c827c000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c823b000-c827c000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c823b000-c827c000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c823b000-c827c000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c823b000-c827c000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c823b000-c827c000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c823b000-c827c000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c823b000-c827c000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819838 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c827e000-c82bf000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c827e000-c82bf000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c827e000-c82bf000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c827e000-c82bf000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c827e000-c82bf000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c827e000-c82bf000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c827e000-c82bf000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c827e000-c82bf000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c827e000-c82bf000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c827e000-c82bf000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c827e000-c82bf000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=819904 count=192 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c82c0000-c8380000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c82c0000-c8380000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c82c0000-c8380000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c82c0000-c8380000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c82c0000-c8380000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c82c0000-c8380000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c82c0000-c8380000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c82c0000-c8380000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c82c0000-c8380000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c82c0000-c8380000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c82c0000-c8380000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=820102 count=23 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8386000-c839d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8386000-c839d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8386000-c839d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8386000-c839d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8386000-c839d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8386000-c839d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8386000-c839d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8386000-c839d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8386000-c839d000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8386000-c839d000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8386000-c839d000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=820127 count=255 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c839f000-c849e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c839f000-c849e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c839f000-c849e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c839f000-c849e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c839f000-c849e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c839f000-c849e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c839f000-c849e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c839f000-c849e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c839f000-c849e000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c839f000-c849e000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c839f000-c849e000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=820384 count=253 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c84a0000-c859d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c84a0000-c859d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c84a0000-c859d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c84a0000-c859d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c84a0000-c859d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c84a0000-c859d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c84a0000-c859d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c84a0000-c859d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c84a0000-c859d000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c84a0000-c859d000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c84a0000-c859d000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=820638 count=257 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c859e000-c869f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c859e000-c869f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c859e000-c869f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c859e000-c869f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c859e000-c869f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c859e000-c869f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c859e000-c869f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c859e000-c869f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c859e000-c869f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c859e000-c869f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c859e000-c869f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=820897 count=254 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c86a1000-c879f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c86a1000-c879f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c86a1000-c879f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c86a1000-c879f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c86a1000-c879f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c86a1000-c879f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c86a1000-c879f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c86a1000-c879f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c86a1000-c879f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c86a1000-c879f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c86a1000-c879f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=821152 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c87a0000-c87e0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c87a0000-c87e0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c87a0000-c87e0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c87a0000-c87e0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c87a0000-c87e0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c87a0000-c87e0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c87a0000-c87e0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c87a0000-c87e0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c87a0000-c87e0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c87a0000-c87e0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c87a0000-c87e0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=821217 count=255 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c87e1000-c88e0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c87e1000-c88e0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c87e1000-c88e0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c87e1000-c88e0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c87e1000-c88e0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c87e1000-c88e0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c87e1000-c88e0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c87e1000-c88e0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c87e1000-c88e0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c87e1000-c88e0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c87e1000-c88e0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=821473 count=3 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c88e1000-c88e4000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c88e1000-c88e4000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c88e1000-c88e4000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c88e1000-c88e4000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c88e1000-c88e4000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c88e1000-c88e4000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c88e1000-c88e4000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c88e1000-c88e4000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c88e1000-c88e4000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c88e1000-c88e4000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c88e1000-c88e4000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=821476 count=256 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c88e4000-c89e4000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c88e4000-c89e4000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c88e4000-c89e4000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c88e4000-c89e4000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c88e4000-c89e4000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c88e4000-c89e4000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c88e4000-c89e4000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c88e4000-c89e4000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c88e4000-c89e4000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c88e4000-c89e4000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c88e4000-c89e4000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=821732 count=1 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c89e4000-c89e5000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c89e4000-c89e5000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c89e4000-c89e5000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c89e4000-c89e5000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c89e4000-c89e5000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c89e4000-c89e5000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c89e4000-c89e5000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c89e4000-c89e5000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c89e4000-c89e5000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c89e4000-c89e5000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c89e4000-c89e5000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=821737 count=148 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c89e9000-c8a7d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c89e9000-c8a7d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c89e9000-c8a7d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c89e9000-c8a7d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c89e9000-c8a7d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c89e9000-c8a7d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c89e9000-c8a7d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c89e9000-c8a7d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c89e9000-c8a7d000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c89e9000-c8a7d000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c89e9000-c8a7d000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=821887 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8a7f000-c8ac0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8a7f000-c8ac0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8a7f000-c8ac0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8a7f000-c8ac0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8a7f000-c8ac0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8a7f000-c8ac0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8a7f000-c8ac0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8a7f000-c8ac0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8a7f000-c8ac0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8a7f000-c8ac0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8a7f000-c8ac0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=821979 count=50 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8adb000-c8b0d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8adb000-c8b0d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8adb000-c8b0d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8adb000-c8b0d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8adb000-c8b0d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8adb000-c8b0d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8adb000-c8b0d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8adb000-c8b0d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8adb000-c8b0d000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8adb000-c8b0d000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8adb000-c8b0d000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=822031 count=48 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8b0f000-c8b3f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8b0f000-c8b3f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8b0f000-c8b3f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8b0f000-c8b3f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8b0f000-c8b3f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8b0f000-c8b3f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8b0f000-c8b3f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8b0f000-c8b3f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8b0f000-c8b3f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8b0f000-c8b3f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8b0f000-c8b3f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=822080 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8b40000-c8b80000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8b40000-c8b80000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8b40000-c8b80000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8b40000-c8b80000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8b40000-c8b80000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8b40000-c8b80000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8b40000-c8b80000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8b40000-c8b80000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8b40000-c8b80000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8b40000-c8b80000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8b40000-c8b80000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=822162 count=42 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8b92000-c8bbc000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8b92000-c8bbc000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8b92000-c8bbc000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8b92000-c8bbc000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8b92000-c8bbc000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8b92000-c8bbc000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8b92000-c8bbc000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8b92000-c8bbc000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8b92000-c8bbc000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8b92000-c8bbc000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8b92000-c8bbc000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=822206 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8bbe000-c8bff000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8bbe000-c8bff000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8bbe000-c8bff000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8bbe000-c8bff000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8bbe000-c8bff000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8bbe000-c8bff000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8bbe000-c8bff000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8bbe000-c8bff000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8bbe000-c8bff000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8bbe000-c8bff000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8bbe000-c8bff000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=822272 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8c00000-c8c40000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8c00000-c8c40000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8c00000-c8c40000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8c00000-c8c40000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8c00000-c8c40000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8c00000-c8c40000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8c00000-c8c40000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8c00000-c8c40000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8c00000-c8c40000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8c00000-c8c40000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8c00000-c8c40000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=822337 count=86 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8c41000-c8c97000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8c41000-c8c97000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8c41000-c8c97000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8c41000-c8c97000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8c41000-c8c97000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8c41000-c8c97000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8c41000-c8c97000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8c41000-c8c97000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8c41000-c8c97000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8c41000-c8c97000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8c41000-c8c97000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=822425 count=121 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8c99000-c8d12000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8c99000-c8d12000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8c99000-c8d12000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8c99000-c8d12000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8c99000-c8d12000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8c99000-c8d12000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8c99000-c8d12000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8c99000-c8d12000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8c99000-c8d12000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8c99000-c8d12000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8c99000-c8d12000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=822548 count=107 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8d14000-c8d7f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8d14000-c8d7f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8d14000-c8d7f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8d14000-c8d7f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8d14000-c8d7f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8d14000-c8d7f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8d14000-c8d7f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8d14000-c8d7f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8d14000-c8d7f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8d14000-c8d7f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8d14000-c8d7f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=822656 count=192 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8d80000-c8e40000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8d80000-c8e40000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8d80000-c8e40000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8d80000-c8e40000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8d80000-c8e40000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8d80000-c8e40000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8d80000-c8e40000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8d80000-c8e40000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8d80000-c8e40000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8d80000-c8e40000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8d80000-c8e40000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=822850 count=27 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8e42000-c8e5d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8e42000-c8e5d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8e42000-c8e5d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8e42000-c8e5d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8e42000-c8e5d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8e42000-c8e5d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8e42000-c8e5d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8e42000-c8e5d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8e42000-c8e5d000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8e42000-c8e5d000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8e42000-c8e5d000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=822883 count=86 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8e63000-c8eb9000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8e63000-c8eb9000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8e63000-c8eb9000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8e63000-c8eb9000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8e63000-c8eb9000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8e63000-c8eb9000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8e63000-c8eb9000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8e63000-c8eb9000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8e63000-c8eb9000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8e63000-c8eb9000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8e63000-c8eb9000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=822971 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8ebb000-c8efc000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8ebb000-c8efc000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8ebb000-c8efc000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8ebb000-c8efc000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8ebb000-c8efc000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8ebb000-c8efc000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8ebb000-c8efc000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8ebb000-c8efc000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8ebb000-c8efc000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8ebb000-c8efc000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8ebb000-c8efc000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823038 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8efe000-c8f3f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8efe000-c8f3f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8efe000-c8f3f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8efe000-c8f3f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8efe000-c8f3f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8efe000-c8f3f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8efe000-c8f3f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8efe000-c8f3f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8efe000-c8f3f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8efe000-c8f3f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8efe000-c8f3f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823104 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8f40000-c8f80000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8f40000-c8f80000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8f40000-c8f80000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8f40000-c8f80000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8f40000-c8f80000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8f40000-c8f80000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8f40000-c8f80000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8f40000-c8f80000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8f40000-c8f80000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8f40000-c8f80000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8f40000-c8f80000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823183 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8f8f000-c8fd0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8f8f000-c8fd0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8f8f000-c8fd0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8f8f000-c8fd0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8f8f000-c8fd0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8f8f000-c8fd0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8f8f000-c8fd0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8f8f000-c8fd0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8f8f000-c8fd0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8f8f000-c8fd0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8f8f000-c8fd0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823250 count=42 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8fd2000-c8ffc000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8fd2000-c8ffc000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8fd2000-c8ffc000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8fd2000-c8ffc000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8fd2000-c8ffc000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8fd2000-c8ffc000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8fd2000-c8ffc000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8fd2000-c8ffc000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8fd2000-c8ffc000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8fd2000-c8ffc000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8fd2000-c8ffc000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823294 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c8ffe000-c903f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c8ffe000-c903f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c8ffe000-c903f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c8ffe000-c903f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c8ffe000-c903f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c8ffe000-c903f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c8ffe000-c903f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c8ffe000-c903f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c8ffe000-c903f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c8ffe000-c903f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c8ffe000-c903f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823360 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9040000-c9080000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9040000-c9080000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9040000-c9080000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9040000-c9080000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9040000-c9080000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9040000-c9080000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9040000-c9080000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9040000-c9080000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9040000-c9080000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9040000-c9080000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9040000-c9080000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823425 count=21 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9081000-c9096000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9081000-c9096000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9081000-c9096000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9081000-c9096000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9081000-c9096000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9081000-c9096000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9081000-c9096000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9081000-c9096000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9081000-c9096000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9081000-c9096000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9081000-c9096000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823454 count=23 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c909e000-c90b5000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c909e000-c90b5000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c909e000-c90b5000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c909e000-c90b5000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c909e000-c90b5000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c909e000-c90b5000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c909e000-c90b5000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c909e000-c90b5000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c909e000-c90b5000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c909e000-c90b5000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c909e000-c90b5000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823479 count=42 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c90b7000-c90e1000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c90b7000-c90e1000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c90b7000-c90e1000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c90b7000-c90e1000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c90b7000-c90e1000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c90b7000-c90e1000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c90b7000-c90e1000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c90b7000-c90e1000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c90b7000-c90e1000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c90b7000-c90e1000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c90b7000-c90e1000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823523 count=107 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c90e3000-c914e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c90e3000-c914e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c90e3000-c914e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c90e3000-c914e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c90e3000-c914e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c90e3000-c914e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c90e3000-c914e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c90e3000-c914e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c90e3000-c914e000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c90e3000-c914e000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c90e3000-c914e000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823632 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9150000-c9191000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9150000-c9191000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9150000-c9191000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9150000-c9191000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9150000-c9191000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9150000-c9191000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9150000-c9191000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9150000-c9191000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9150000-c9191000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9150000-c9191000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9150000-c9191000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823699 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9193000-c9299000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9193000-c9299000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=823963 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c929b000-c92dc000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c929b000-c92dc000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c929b000-c92dc000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c929b000-c92dc000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c929b000-c92dc000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c929b000-c92dc000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c929b000-c92dc000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c929b000-c92dc000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c929b000-c92dc000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c929b000-c92dc000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c929b000-c92dc000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824030 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c92de000-c931f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c92de000-c931f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c92de000-c931f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c92de000-c931f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c92de000-c931f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c92de000-c931f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c92de000-c931f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c92de000-c931f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c92de000-c931f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c92de000-c931f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c92de000-c931f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824106 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c932a000-c934a000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c932a000-c934a000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c932a000-c934a000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c932a000-c934a000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c932a000-c934a000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c932a000-c934a000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c932a000-c934a000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c932a000-c934a000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c932a000-c934a000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c932a000-c934a000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c932a000-c934a000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824139 count=42 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c934b000-c9375000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c934b000-c9375000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c934b000-c9375000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c934b000-c9375000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c934b000-c9375000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c934b000-c9375000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c934b000-c9375000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c934b000-c9375000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c934b000-c9375000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c934b000-c9375000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c934b000-c9375000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824183 count=130 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9377000-c93f9000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9377000-c93f9000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9377000-c93f9000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9377000-c93f9000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9377000-c93f9000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9377000-c93f9000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9377000-c93f9000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9377000-c93f9000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9377000-c93f9000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9377000-c93f9000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9377000-c93f9000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824315 count=94 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c93fb000-c9459000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c93fb000-c9459000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c93fb000-c9459000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c93fb000-c9459000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c93fb000-c9459000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c93fb000-c9459000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c93fb000-c9459000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c93fb000-c9459000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c93fb000-c9459000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c93fb000-c9459000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c93fb000-c9459000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824420 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9464000-c9484000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9464000-c9484000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9464000-c9484000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9464000-c9484000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9464000-c9484000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9464000-c9484000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9464000-c9484000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9464000-c9484000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9464000-c9484000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9464000-c9484000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9464000-c9484000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824453 count=129 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9485000-c9506000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9485000-c9506000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9485000-c9506000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9485000-c9506000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9485000-c9506000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9485000-c9506000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9485000-c9506000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9485000-c9506000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9485000-c9506000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9485000-c9506000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9485000-c9506000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824584 count=83 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9508000-c955b000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9508000-c955b000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9508000-c955b000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9508000-c955b000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9508000-c955b000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9508000-c955b000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9508000-c955b000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9508000-c955b000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9508000-c955b000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9508000-c955b000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9508000-c955b000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824669 count=83 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c955d000-c95b0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c955d000-c95b0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c955d000-c95b0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c955d000-c95b0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c955d000-c95b0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c955d000-c95b0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c955d000-c95b0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c955d000-c95b0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c955d000-c95b0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c955d000-c95b0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c955d000-c95b0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824754 count=162 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c95b2000-c9654000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c95b2000-c9654000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c95b2000-c9654000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c95b2000-c9654000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c95b2000-c9654000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c95b2000-c9654000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c95b2000-c9654000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c95b2000-c9654000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c95b2000-c9654000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c95b2000-c9654000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c95b2000-c9654000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=824919 count=262 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9657000-c975d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9657000-c975d000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825196 count=83 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c976c000-c97bf000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c976c000-c97bf000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c976c000-c97bf000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c976c000-c97bf000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c976c000-c97bf000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c976c000-c97bf000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c976c000-c97bf000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c976c000-c97bf000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c976c000-c97bf000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c976c000-c97bf000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c976c000-c97bf000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825280 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c97c0000-c9800000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c97c0000-c9800000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c97c0000-c9800000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c97c0000-c9800000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c97c0000-c9800000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c97c0000-c9800000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c97c0000-c9800000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c97c0000-c9800000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c97c0000-c9800000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c97c0000-c9800000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c97c0000-c9800000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825358 count=49 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c980e000-c983f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c980e000-c983f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c980e000-c983f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c980e000-c983f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c980e000-c983f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c980e000-c983f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c980e000-c983f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c980e000-c983f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c980e000-c983f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c980e000-c983f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c980e000-c983f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825408 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9840000-c9880000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9840000-c9880000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9840000-c9880000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9840000-c9880000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9840000-c9880000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9840000-c9880000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9840000-c9880000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9840000-c9880000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9840000-c9880000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9840000-c9880000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9840000-c9880000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825477 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9885000-c98a5000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9885000-c98a5000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9885000-c98a5000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9885000-c98a5000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9885000-c98a5000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9885000-c98a5000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9885000-c98a5000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9885000-c98a5000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9885000-c98a5000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9885000-c98a5000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9885000-c98a5000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825525 count=42 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c98b5000-c98df000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c98b5000-c98df000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c98b5000-c98df000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c98b5000-c98df000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c98b5000-c98df000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c98b5000-c98df000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c98b5000-c98df000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c98b5000-c98df000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c98b5000-c98df000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c98b5000-c98df000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c98b5000-c98df000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825569 count=30 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c98e1000-c98ff000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c98e1000-c98ff000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c98e1000-c98ff000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c98e1000-c98ff000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c98e1000-c98ff000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c98e1000-c98ff000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c98e1000-c98ff000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c98e1000-c98ff000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c98e1000-c98ff000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c98e1000-c98ff000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c98e1000-c98ff000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825600 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9900000-c9940000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9900000-c9940000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9900000-c9940000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9900000-c9940000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9900000-c9940000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9900000-c9940000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9900000-c9940000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9900000-c9940000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9900000-c9940000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9900000-c9940000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9900000-c9940000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825666 count=21 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9942000-c9957000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9942000-c9957000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9942000-c9957000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9942000-c9957000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9942000-c9957000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9942000-c9957000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9942000-c9957000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9942000-c9957000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9942000-c9957000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9942000-c9957000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9942000-c9957000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825689 count=34 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9959000-c997b000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9959000-c997b000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9959000-c997b000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9959000-c997b000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9959000-c997b000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9959000-c997b000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9959000-c997b000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9959000-c997b000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9959000-c997b000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9959000-c997b000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9959000-c997b000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825725 count=60 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c997d000-c99b9000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c997d000-c99b9000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c997d000-c99b9000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c997d000-c99b9000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c997d000-c99b9000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c997d000-c99b9000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c997d000-c99b9000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c997d000-c99b9000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c997d000-c99b9000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c997d000-c99b9000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c997d000-c99b9000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825787 count=49 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c99bb000-c99ec000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c99bb000-c99ec000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c99bb000-c99ec000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c99bb000-c99ec000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c99bb000-c99ec000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c99bb000-c99ec000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c99bb000-c99ec000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c99bb000-c99ec000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c99bb000-c99ec000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c99bb000-c99ec000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c99bb000-c99ec000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825838 count=49 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c99ee000-c9a1f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c99ee000-c9a1f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c99ee000-c9a1f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c99ee000-c9a1f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c99ee000-c9a1f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c99ee000-c9a1f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c99ee000-c9a1f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c99ee000-c9a1f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c99ee000-c9a1f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c99ee000-c9a1f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c99ee000-c9a1f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825889 count=77 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9a21000-c9a6e000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9a21000-c9a6e000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9a21000-c9a6e000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9a21000-c9a6e000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9a21000-c9a6e000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9a21000-c9a6e000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9a21000-c9a6e000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9a21000-c9a6e000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9a21000-c9a6e000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9a21000-c9a6e000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9a21000-c9a6e000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=825984 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9a80000-c9ac0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9a80000-c9ac0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9a80000-c9ac0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9a80000-c9ac0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9a80000-c9ac0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9a80000-c9ac0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9a80000-c9ac0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9a80000-c9ac0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9a80000-c9ac0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9a80000-c9ac0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9a80000-c9ac0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=826626 count=255 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9d02000-c9e01000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9d02000-c9e01000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9d02000-c9e01000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9d02000-c9e01000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9d02000-c9e01000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9d02000-c9e01000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9d02000-c9e01000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9d02000-c9e01000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9d02000-c9e01000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9d02000-c9e01000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9d02000-c9e01000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=826883 count=253 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9e03000-c9f00000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9e03000-c9f00000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9e03000-c9f00000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9e03000-c9f00000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9e03000-c9f00000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9e03000-c9f00000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9e03000-c9f00000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9e03000-c9f00000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9e03000-c9f00000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9e03000-c9f00000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9e03000-c9f00000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=827136 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9f00000-c9f40000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9f00000-c9f40000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9f00000-c9f40000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9f00000-c9f40000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9f00000-c9f40000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9f00000-c9f40000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9f00000-c9f40000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9f00000-c9f40000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9f00000-c9f40000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9f00000-c9f40000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9f00000-c9f40000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=827210 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9f4a000-c9f8a000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9f4a000-c9f8a000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9f4a000-c9f8a000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9f4a000-c9f8a000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9f4a000-c9f8a000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9f4a000-c9f8a000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9f4a000-c9f8a000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9f4a000-c9f8a000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9f4a000-c9f8a000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9f4a000-c9f8a000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9f4a000-c9f8a000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=827328 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "c9fc0000-ca000000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "c9fc0000-ca000000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "c9fc0000-ca000000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "c9fc0000-ca000000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "c9fc0000-ca000000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "c9fc0000-ca000000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "c9fc0000-ca000000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "c9fc0000-ca000000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "c9fc0000-ca000000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "c9fc0000-ca000000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "c9fc0000-ca000000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=827394 count=26 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca002000-ca01c000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca002000-ca01c000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca002000-ca01c000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca002000-ca01c000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca002000-ca01c000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca002000-ca01c000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca002000-ca01c000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca002000-ca01c000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca002000-ca01c000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca002000-ca01c000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca002000-ca01c000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=827421 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca01d000-ca03d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca01d000-ca03d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca01d000-ca03d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca01d000-ca03d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca01d000-ca03d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca01d000-ca03d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca01d000-ca03d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca01d000-ca03d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca01d000-ca03d000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca01d000-ca03d000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca01d000-ca03d000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=827454 count=255 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca03e000-ca13d000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca03e000-ca13d000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca03e000-ca13d000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca03e000-ca13d000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca03e000-ca13d000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca03e000-ca13d000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca03e000-ca13d000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca03e000-ca13d000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca03e000-ca13d000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca03e000-ca13d000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca03e000-ca13d000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=828289 count=31 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca381000-ca3a0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca381000-ca3a0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca381000-ca3a0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca381000-ca3a0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca381000-ca3a0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca381000-ca3a0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca381000-ca3a0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca381000-ca3a0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca381000-ca3a0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca381000-ca3a0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca381000-ca3a0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=828321 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca3a1000-ca3c1000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca3a1000-ca3c1000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca3a1000-ca3c1000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca3a1000-ca3c1000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca3a1000-ca3c1000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca3a1000-ca3c1000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca3a1000-ca3c1000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca3a1000-ca3c1000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca3a1000-ca3c1000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca3a1000-ca3c1000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca3a1000-ca3c1000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=828354 count=255 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca3c2000-ca4c1000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca3c2000-ca4c1000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca3c2000-ca4c1000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca3c2000-ca4c1000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca3c2000-ca4c1000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca3c2000-ca4c1000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca3c2000-ca4c1000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca3c2000-ca4c1000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca3c2000-ca4c1000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca3c2000-ca4c1000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca3c2000-ca4c1000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=828611 count=253 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca4c3000-ca5c0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca4c3000-ca5c0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca4c3000-ca5c0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca4c3000-ca5c0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca4c3000-ca5c0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca4c3000-ca5c0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca4c3000-ca5c0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca4c3000-ca5c0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca4c3000-ca5c0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca4c3000-ca5c0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca4c3000-ca5c0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=828875 count=49 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca5cb000-ca5fc000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca5cb000-ca5fc000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca5cb000-ca5fc000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca5cb000-ca5fc000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca5cb000-ca5fc000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca5cb000-ca5fc000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca5cb000-ca5fc000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca5cb000-ca5fc000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca5cb000-ca5fc000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca5cb000-ca5fc000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca5cb000-ca5fc000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=828926 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca5fe000-ca63f000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca5fe000-ca63f000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca5fe000-ca63f000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca5fe000-ca63f000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca5fe000-ca63f000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca5fe000-ca63f000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca5fe000-ca63f000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca5fe000-ca63f000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca5fe000-ca63f000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca5fe000-ca63f000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca5fe000-ca63f000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=828992 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca640000-ca680000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca640000-ca680000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca640000-ca680000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca640000-ca680000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca640000-ca680000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca640000-ca680000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca640000-ca680000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca640000-ca680000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca640000-ca680000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca640000-ca680000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca640000-ca680000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=829062 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca686000-ca6c7000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca686000-ca6c7000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca686000-ca6c7000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca686000-ca6c7000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca686000-ca6c7000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca686000-ca6c7000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca686000-ca6c7000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca686000-ca6c7000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca686000-ca6c7000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca686000-ca6c7000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca686000-ca6c7000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=829129 count=37 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca6c9000-ca6ee000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca6c9000-ca6ee000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca6c9000-ca6ee000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca6c9000-ca6ee000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca6c9000-ca6ee000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca6c9000-ca6ee000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca6c9000-ca6ee000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca6c9000-ca6ee000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca6c9000-ca6ee000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca6c9000-ca6ee000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca6c9000-ca6ee000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=829168 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca6f0000-ca731000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca6f0000-ca731000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca6f0000-ca731000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca6f0000-ca731000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca6f0000-ca731000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca6f0000-ca731000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca6f0000-ca731000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca6f0000-ca731000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca6f0000-ca731000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca6f0000-ca731000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca6f0000-ca731000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=829240 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca738000-ca758000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca738000-ca758000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca738000-ca758000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca738000-ca758000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca738000-ca758000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca738000-ca758000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca738000-ca758000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca738000-ca758000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca738000-ca758000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca738000-ca758000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca738000-ca758000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=829374 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca7be000-ca7de000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca7be000-ca7de000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca7be000-ca7de000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca7be000-ca7de000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca7be000-ca7de000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca7be000-ca7de000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca7be000-ca7de000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca7be000-ca7de000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca7be000-ca7de000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca7be000-ca7de000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca7be000-ca7de000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=829662 count=254 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "ca8de000-ca9dc000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "ca8de000-ca9dc000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "ca8de000-ca9dc000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "ca8de000-ca9dc000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "ca8de000-ca9dc000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "ca8de000-ca9dc000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "ca8de000-ca9dc000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "ca8de000-ca9dc000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "ca8de000-ca9dc000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "ca8de000-ca9dc000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "ca8de000-ca9dc000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=830018 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "caa42000-caa62000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "caa42000-caa62000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "caa42000-caa62000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "caa42000-caa62000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "caa42000-caa62000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "caa42000-caa62000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "caa42000-caa62000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "caa42000-caa62000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "caa42000-caa62000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "caa42000-caa62000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "caa42000-caa62000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=830148 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "caac4000-caae4000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "caac4000-caae4000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "caac4000-caae4000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "caac4000-caae4000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "caac4000-caae4000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "caac4000-caae4000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "caac4000-caae4000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "caac4000-caae4000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "caac4000-caae4000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "caac4000-caae4000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "caac4000-caae4000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=830336 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cab80000-caba0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cab80000-caba0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cab80000-caba0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cab80000-caba0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cab80000-caba0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cab80000-caba0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cab80000-caba0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cab80000-caba0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cab80000-caba0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cab80000-caba0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cab80000-caba0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=830461 count=21 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cabfd000-cac12000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cabfd000-cac12000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cabfd000-cac12000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cabfd000-cac12000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cabfd000-cac12000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cabfd000-cac12000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cabfd000-cac12000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cabfd000-cac12000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cabfd000-cac12000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cabfd000-cac12000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cabfd000-cac12000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=830507 count=65 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cac2b000-cac6c000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cac2b000-cac6c000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cac2b000-cac6c000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cac2b000-cac6c000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cac2b000-cac6c000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cac2b000-cac6c000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cac2b000-cac6c000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cac2b000-cac6c000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cac2b000-cac6c000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cac2b000-cac6c000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cac2b000-cac6c000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=831104 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cae80000-caec0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cae80000-caec0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cae80000-caec0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cae80000-caec0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cae80000-caec0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cae80000-caec0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cae80000-caec0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cae80000-caec0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cae80000-caec0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cae80000-caec0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cae80000-caec0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=831168 count=4 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "caec0000-caec4000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "caec0000-caec4000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "caec0000-caec4000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "caec0000-caec4000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "caec0000-caec4000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "caec0000-caec4000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "caec0000-caec4000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "caec0000-caec4000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "caec0000-caec4000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "caec0000-caec4000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "caec0000-caec4000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=831182 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "caece000-caeee000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "caece000-caeee000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "caece000-caeee000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "caece000-caeee000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "caece000-caeee000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "caece000-caeee000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "caece000-caeee000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "caece000-caeee000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "caece000-caeee000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "caece000-caeee000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "caece000-caeee000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=831215 count=19 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "caeef000-caf02000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "caeef000-caf02000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "caeef000-caf02000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "caeef000-caf02000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "caeef000-caf02000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "caeef000-caf02000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "caeef000-caf02000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "caeef000-caf02000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "caeef000-caf02000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "caeef000-caf02000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "caeef000-caf02000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=831235 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "caf03000-caf43000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "caf03000-caf43000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "caf03000-caf43000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "caf03000-caf43000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "caf03000-caf43000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "caf03000-caf43000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "caf03000-caf43000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "caf03000-caf43000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "caf03000-caf43000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "caf03000-caf43000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "caf03000-caf43000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=831415 count=32 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cafb7000-cafd7000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cafb7000-cafd7000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cafb7000-cafd7000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cafb7000-cafd7000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cafb7000-cafd7000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cafb7000-cafd7000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cafb7000-cafd7000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cafb7000-cafd7000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cafb7000-cafd7000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cafb7000-cafd7000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cafb7000-cafd7000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=831479 count=4 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "caff7000-caffb000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "caff7000-caffb000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "caff7000-caffb000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "caff7000-caffb000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "caff7000-caffb000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "caff7000-caffb000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "caff7000-caffb000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "caff7000-caffb000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "caff7000-caffb000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "caff7000-caffb000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "caff7000-caffb000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=831577 count=85 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cb059000-cb0ae000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cb059000-cb0ae000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cb059000-cb0ae000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cb059000-cb0ae000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cb059000-cb0ae000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cb059000-cb0ae000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cb059000-cb0ae000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cb059000-cb0ae000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cb059000-cb0ae000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cb059000-cb0ae000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cb059000-cb0ae000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=831744 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cb100000-cb140000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cb100000-cb140000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cb100000-cb140000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cb100000-cb140000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cb100000-cb140000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cb100000-cb140000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cb100000-cb140000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cb100000-cb140000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cb100000-cb140000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cb100000-cb140000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cb100000-cb140000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=831821 count=128 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cb14d000-cb1cd000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cb14d000-cb1cd000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cb14d000-cb1cd000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cb14d000-cb1cd000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cb14d000-cb1cd000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cb14d000-cb1cd000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cb14d000-cb1cd000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cb14d000-cb1cd000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cb14d000-cb1cd000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cb14d000-cb1cd000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cb14d000-cb1cd000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=831951 count=27 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cb1cf000-cb1ea000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cb1cf000-cb1ea000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cb1cf000-cb1ea000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cb1cf000-cb1ea000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cb1cf000-cb1ea000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cb1cf000-cb1ea000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cb1cf000-cb1ea000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cb1cf000-cb1ea000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cb1cf000-cb1ea000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cb1cf000-cb1ea000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cb1cf000-cb1ea000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=831979 count=128 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cb1eb000-cb26b000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cb1eb000-cb26b000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cb1eb000-cb26b000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cb1eb000-cb26b000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cb1eb000-cb26b000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cb1eb000-cb26b000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cb1eb000-cb26b000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cb1eb000-cb26b000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cb1eb000-cb26b000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cb1eb000-cb26b000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cb1eb000-cb26b000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=832220 count=4 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cb2dc000-cb2e0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cb2dc000-cb2e0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cb2dc000-cb2e0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cb2dc000-cb2e0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cb2dc000-cb2e0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cb2dc000-cb2e0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cb2dc000-cb2e0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cb2dc000-cb2e0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cb2dc000-cb2e0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cb2dc000-cb2e0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cb2dc000-cb2e0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=832234 count=64 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cb2ea000-cb32a000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cb2ea000-cb32a000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cb2ea000-cb32a000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cb2ea000-cb32a000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cb2ea000-cb32a000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cb2ea000-cb32a000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cb2ea000-cb32a000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cb2ea000-cb32a000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cb2ea000-cb32a000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cb2ea000-cb32a000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cb2ea000-cb32a000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=832300 count=254 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cb32c000-cb42a000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cb32c000-cb42a000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cb32c000-cb42a000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cb32c000-cb42a000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cb32c000-cb42a000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cb32c000-cb42a000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cb32c000-cb42a000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cb32c000-cb42a000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cb32c000-cb42a000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cb32c000-cb42a000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cb32c000-cb42a000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=834303 count=4 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cbaff000-cbb03000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cbaff000-cbb03000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cbaff000-cbb03000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cbaff000-cbb03000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cbaff000-cbb03000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cbaff000-cbb03000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cbaff000-cbb03000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cbaff000-cbb03000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cbaff000-cbb03000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cbaff000-cbb03000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cbaff000-cbb03000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=834322 count=96 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cbb12000-cbb72000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cbb12000-cbb72000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cbb12000-cbb72000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cbb12000-cbb72000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cbb12000-cbb72000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cbb12000-cbb72000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cbb12000-cbb72000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cbb12000-cbb72000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cbb12000-cbb72000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cbb12000-cbb72000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cbb12000-cbb72000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=834560 count=192 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cbc00000-cbcc0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cbc00000-cbcc0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cbc00000-cbcc0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cbc00000-cbcc0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cbc00000-cbcc0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cbc00000-cbcc0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cbc00000-cbcc0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cbc00000-cbcc0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cbc00000-cbcc0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cbc00000-cbcc0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cbc00000-cbcc0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
rm -f /data/local/tmp/r.bin
dd if=/proc/5679/mem of=/data/local/tmp/r.bin bs=4096 skip=835840 count=4032 2>/dev/null
if [ -f /data/local/tmp/r.bin ]; then
  echo "cc100000-cd0c0000 WorldManager $(grep -a -c WorldManager /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 release_logic $(grep -a -c release_logic /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 HookUnit $(grep -a -c HookUnit /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 kill_civil $(grep -a -c kill_civil /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 .nxsc $(grep -a -c .nxsc /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 NpkImporter $(grep -a -c NpkImporter /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 decryptmore $(grep -a -c decryptmore /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 find_module $(grep -a -c find_module /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 co_filename $(grep -a -c co_filename /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 WorldDeduce $(grep -a -c WorldDeduce /data/local/tmp/r.bin)"
  echo "cc100000-cd0c0000 HallEvent $(grep -a -c HallEvent /data/local/tmp/r.bin)"
fi
echo SWEEP5-DONE
