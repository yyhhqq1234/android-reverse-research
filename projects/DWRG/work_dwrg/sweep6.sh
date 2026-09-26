dd if=/proc/5679/mem of=/data/local/tmp/g0.bin bs=4096 skip=818233 count=67 2>/dev/null
dd if=/proc/5679/mem of=/data/local/tmp/g1.bin bs=4096 skip=818482 count=65 2>/dev/null
dd if=/proc/5679/mem of=/data/local/tmp/g2.bin bs=4096 skip=822971 count=65 2>/dev/null
dd if=/proc/5679/mem of=/data/local/tmp/g3.bin bs=4096 skip=823038 count=65 2>/dev/null
dd if=/proc/5679/mem of=/data/local/tmp/g4.bin bs=4096 skip=13275803 count=65 2>/dev/null
dd if=/proc/5679/mem of=/data/local/tmp/g5.bin bs=4096 skip=828926 count=65 2>/dev/null
dd if=/proc/5679/mem of=/data/local/tmp/g6.bin bs=4096 skip=829168 count=65 2>/dev/null
ls -l /data/local/tmp/g*.bin
grep -a -b -o -E 'NpkImporter|HookUnit|kill_civil|hang_uid|WorldManager|release_logic|WorldDeduce|HallEvent|find_module|decryptmore|.nxsc|co_filename|asyncio|AsyncManager|timer' /data/local/tmp/g*.bin | head -60
echo SWEEP6-DONE
