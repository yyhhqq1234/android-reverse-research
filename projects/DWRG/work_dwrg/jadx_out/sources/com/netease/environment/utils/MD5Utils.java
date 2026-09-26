package com.netease.environment.utils;

import com.netease.download.util.HashUtil;
import java.io.File;
import java.io.FileInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class MD5Utils {
    public static String getFileMD5(File file) {
        if (!file.exists() || !file.isFile()) {
            return null;
        }
        byte[] buffer = new byte[1024];
        try {
            MessageDigest digest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            FileInputStream in = new FileInputStream(file);
            while (true) {
                try {
                    int len = in.read(buffer, 0, 1024);
                    if (len != -1) {
                        digest.update(buffer, 0, len);
                    } else {
                        in.close();
                        BigInteger bigInt = new BigInteger(1, digest.digest());
                        return bigInt.toString(16);
                    }
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    return null;
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}
