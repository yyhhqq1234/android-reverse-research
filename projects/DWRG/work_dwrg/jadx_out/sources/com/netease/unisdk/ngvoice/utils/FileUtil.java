package com.netease.unisdk.ngvoice.utils;

import com.netease.download.util.HashUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class FileUtil {
    public static File createFile(File file) {
        if (file == null) {
            return null;
        }
        if (!file.exists()) {
            try {
                if (file.createNewFile()) {
                    return file;
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            return null;
        }
        return file;
    }

    public static File createFile(File dir, String name) {
        StringBuilder filePath = new StringBuilder();
        filePath.append(dir.getAbsolutePath()).append(File.separator);
        filePath.append(name);
        return createFile(new File(filePath.toString()));
    }

    public static File createDir(File dir) {
        if (dir == null) {
            return null;
        }
        if (!dir.exists()) {
            try {
                if (dir.mkdirs()) {
                    return dir;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
        return dir;
    }

    public static String fileMD5(String inputFile) {
        String str;
        FileInputStream fileInputStream = null;
        DigestInputStream digestInputStream = null;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            FileInputStream fileInputStream2 = new FileInputStream(inputFile);
            try {
                DigestInputStream digestInputStream2 = new DigestInputStream(fileInputStream2, messageDigest);
                try {
                    byte[] buffer = new byte[262144];
                    do {
                    } while (digestInputStream2.read(buffer) > 0);
                    MessageDigest messageDigest2 = digestInputStream2.getMessageDigest();
                    byte[] resultByteArray = messageDigest2.digest();
                    str = byteArrayToHex(resultByteArray);
                    try {
                        digestInputStream2.close();
                        fileInputStream2.close();
                    } catch (Exception e) {
                    }
                } catch (Exception e2) {
                    digestInputStream = digestInputStream2;
                    fileInputStream = fileInputStream2;
                    str = null;
                    try {
                        digestInputStream.close();
                        fileInputStream.close();
                    } catch (Exception e3) {
                    }
                    return str;
                } catch (Throwable th) {
                    th = th;
                    digestInputStream = digestInputStream2;
                    fileInputStream = fileInputStream2;
                    try {
                        digestInputStream.close();
                        fileInputStream.close();
                    } catch (Exception e4) {
                    }
                    throw th;
                }
            } catch (Exception e5) {
                fileInputStream = fileInputStream2;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
            }
        } catch (Exception e6) {
        } catch (Throwable th3) {
            th = th3;
        }
        return str;
    }

    public static String byteArrayToHex(byte[] byteArray) {
        char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] resultCharArray = new char[byteArray.length * 2];
        int index = 0;
        for (byte b : byteArray) {
            int index2 = index + 1;
            resultCharArray[index] = hexDigits[(b >>> 4) & 15];
            index = index2 + 1;
            resultCharArray[index2] = hexDigits[b & 15];
        }
        return new String(resultCharArray);
    }

    private void copyInputStreamToFile(InputStream in, File file) {
        try {
            OutputStream out = new FileOutputStream(file);
            byte[] buf = new byte[1024];
            while (true) {
                int len = in.read(buf);
                if (len > 0) {
                    out.write(buf, 0, len);
                } else {
                    out.close();
                    in.close();
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
