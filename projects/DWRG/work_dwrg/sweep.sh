PID=4810
if ! tr '\0' ' ' </proc/4810/cmdline 2>/dev/null | grep -q com.identityv; then
  for d in /proc/[0-9]*/cmdline; do
    if tr '\0' ' ' <$d 2>/dev/null | grep -q com.identityv; then PID=$(basename $(dirname $d)); break; fi
  done
fi
echo PID=$PID
rm -f /data/local/tmp/r.bin
for r in 12c00000-2ac00000 db580000-dd580000 d10c3000-d30c3000 73956000-74955000 cc280000-cd0c0000 e3f31000-e4b31000 e0b2e000-e172e000 d96c0000-da100000; do
  s=${r%-*}; e=${r#*-}
  rm -f /data/local/tmp/r.bin
  dd if=/proc/$PID/mem of=/data/local/tmp/r.bin bs=4096 skip=$((0x$s/4096)) count=$(((0x$e-0x$s)/4096)) 2>/dev/null
  if [ -f /data/local/tmp/r.bin ]; then
    for k in HookUnit kill_civil hang_uid WorldManager release_logic iLogicHook AsyncManager redirect NpkImporter; do
      echo "$r $k $(grep -a -c $k /data/local/tmp/r.bin)"
    done
  else
    echo "$r DD-FAIL"
  fi
done
echo SWEEP-DONE
