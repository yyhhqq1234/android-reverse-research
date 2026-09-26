package com.netease.download.util;

import com.netease.download.Const;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.CRC32;

/* loaded from: classes.dex */
public class HashUtil {
    private static Map<String, MessageDigest> sDigestAlgorithm = new HashMap();

    /* loaded from: classes.dex */
    public static class Algorithm {
        public static final String MD5 = "MD5";
        public static final String SHA1 = "SHA1";
        public static final String SHA256 = "SHA256";
    }

    static {
        try {
            sDigestAlgorithm.put(Algorithm.MD5, MessageDigest.getInstance(Algorithm.MD5));
            sDigestAlgorithm.put(Algorithm.SHA1, MessageDigest.getInstance(Algorithm.SHA1));
            sDigestAlgorithm.put(Algorithm.SHA256, MessageDigest.getInstance(Algorithm.SHA256));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
    }

    public static int getCrc(String... pContents) {
        if (pContents == null) {
            return 0;
        }
        CRC32 crc = new CRC32();
        for (String content : pContents) {
            crc.update(content.getBytes());
        }
        return (int) crc.getValue();
    }

    public static synchronized String calculateHash(String algorithm, String filePath) {
        String str;
        FileInputStream fis;
        synchronized (HashUtil.class) {
            if (algorithm == null) {
                str = null;
            } else {
                MessageDigest md = sDigestAlgorithm.get(algorithm.toUpperCase());
                if (md == null) {
                    str = null;
                } else {
                    FileInputStream fis2 = null;
                    try {
                        try {
                            fis = new FileInputStream(filePath);
                        } catch (IOException e) {
                            e = e;
                        }
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        byte[] dataBytes = new byte[32768];
                        while (true) {
                            int nread = fis.read(dataBytes);
                            if (nread == -1) {
                                break;
                            }
                            md.update(dataBytes, 0, nread);
                        }
                        byte[] mdbytes = md.digest();
                        StringBuilder sb = new StringBuilder("");
                        for (byte mdbyte : mdbytes) {
                            sb.append(Integer.toString((mdbyte & 255) + 256, 16).substring(1));
                        }
                        str = sb.toString();
                        if (fis != null) {
                            try {
                                fis.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                    } catch (IOException e3) {
                        e = e3;
                        fis2 = fis;
                        e.printStackTrace();
                        if (fis2 != null) {
                            try {
                                fis2.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        str = null;
                        return str;
                    } catch (Throwable th2) {
                        th = th2;
                        fis2 = fis;
                        if (fis2 != null) {
                            try {
                                fis2.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
            }
        }
        return str;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
