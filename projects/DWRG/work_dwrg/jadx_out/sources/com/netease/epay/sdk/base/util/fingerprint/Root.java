package com.netease.epay.sdk.base.util.fingerprint;

import android.os.Build;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class Root {
    public boolean isDeviceRooted() {
        return checkRootMethod1() || checkRootMethod3();
    }

    public boolean checkRootMethod1() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    public boolean checkRootMethod3() {
        return new ExecShell().executeCommand(SHELL_CMD.check_su_binary) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ExecShell {
        ExecShell() {
        }

        public ArrayList<String> executeCommand(SHELL_CMD shellCmd) {
            ArrayList<String> arrayList = new ArrayList<>();
            try {
                Process exec = Runtime.getRuntime().exec(shellCmd.command);
                new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine != null) {
                            arrayList.add(readLine);
                        } else {
                            return arrayList;
                        }
                    } catch (Exception e) {
                        return arrayList;
                    }
                }
            } catch (Exception e2) {
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    public enum SHELL_CMD {
        check_su_binary(new String[]{"/system/xbin/which", "su"});

        String[] command;

        SHELL_CMD(String[] command) {
            this.command = command;
        }
    }
}
