package com.netease.cloud.nos.android.utils;

import com.netease.download.util.HashUtil;
import java.io.File;
import java.io.FileInputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class FileDigest {
    private static String byteArrayToHex(byte[] hashBytes) {
        String returnVal = "";
        for (byte b : hashBytes) {
            returnVal = String.valueOf(returnVal) + Integer.toString((b & 255) + 256, 16).substring(1);
        }
        return returnVal.toLowerCase();
    }

    public static String getFileMD5(File file) {
        FileInputStream fileInputStream;
        DigestInputStream digestInputStream;
        FileInputStream fileInputStream2 = null;
        DigestInputStream digestInputStream2 = null;
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
                fileInputStream = new FileInputStream(file);
                try {
                    digestInputStream = new DigestInputStream(fileInputStream, messageDigest);
                } catch (Exception e) {
                    e = e;
                    fileInputStream2 = fileInputStream;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] buffer = new byte[524288];
            do {
            } while (digestInputStream.read(buffer) > 0);
            MessageDigest messageDigest2 = digestInputStream.getMessageDigest();
            byte[] resultByteArray = messageDigest2.digest();
            String byteArrayToHex = byteArrayToHex(resultByteArray);
            if (digestInputStream != null) {
                try {
                    digestInputStream.close();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return byteArrayToHex;
        } catch (Exception e4) {
            e = e4;
            digestInputStream2 = digestInputStream;
            fileInputStream2 = fileInputStream;
            e.printStackTrace();
            if (digestInputStream2 != null) {
                try {
                    digestInputStream2.close();
                } catch (Exception e5) {
                    e5.printStackTrace();
                    return null;
                }
            }
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            digestInputStream2 = digestInputStream;
            fileInputStream2 = fileInputStream;
            if (digestInputStream2 != null) {
                try {
                    digestInputStream2.close();
                } catch (Exception e6) {
                    e6.printStackTrace();
                    throw th;
                }
            }
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            throw th;
        }
    }
}
