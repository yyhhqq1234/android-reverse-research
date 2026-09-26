package im.yixin.sdk.util;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes.dex */
public final class FileUtil {
    private FileUtil() {
    }

    public static byte[] fileToByteArray(String filePath) {
        BufferedInputStream in;
        byte[] bArr = null;
        File f = new File(filePath);
        if (!f.exists()) {
            SDKFeedBackUtils.getInstance().postErrorLog(SDKFeedBackUtils.class, "toByteArray not exists fileName=" + filePath, null);
        } else {
            ByteArrayOutputStream bos = new ByteArrayOutputStream((int) f.length());
            BufferedInputStream in2 = null;
            try {
                try {
                    in = new BufferedInputStream(new FileInputStream(f));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                byte[] buffer = new byte[1024];
                while (true) {
                    int len = in.read(buffer, 0, 1024);
                    if (-1 == len) {
                        break;
                    }
                    bos.write(buffer, 0, len);
                }
                bArr = bos.toByteArray();
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e2) {
                        SDKFeedBackUtils.getInstance().postErrorLog(SDKFeedBackUtils.class, "toByteArray error fileName=" + filePath, e2);
                    }
                }
                bos.close();
            } catch (Exception e3) {
                e = e3;
                in2 = in;
                SDKFeedBackUtils.getInstance().postErrorLog(SDKFeedBackUtils.class, "toByteArray error fileName=" + filePath, e);
                if (in2 != null) {
                    try {
                        in2.close();
                    } catch (IOException e4) {
                        SDKFeedBackUtils.getInstance().postErrorLog(SDKFeedBackUtils.class, "toByteArray error fileName=" + filePath, e4);
                    }
                }
                bos.close();
                return bArr;
            } catch (Throwable th2) {
                th = th2;
                in2 = in;
                if (in2 != null) {
                    try {
                        in2.close();
                    } catch (IOException e5) {
                        SDKFeedBackUtils.getInstance().postErrorLog(SDKFeedBackUtils.class, "toByteArray error fileName=" + filePath, e5);
                        throw th;
                    }
                }
                bos.close();
                throw th;
            }
        }
        return bArr;
    }

    public static byte[] zip(byte[] data) {
        try {
            ByteArrayInputStream in = new ByteArrayInputStream(data);
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            ZipOutputStream zipOut = new ZipOutputStream(out);
            byte[] buf = new byte[1024];
            zipOut.putNextEntry(new ZipEntry("imageData.jpg"));
            while (true) {
                int readCnt = in.read(buf);
                if (readCnt > 0) {
                    zipOut.write(buf, 0, readCnt);
                } else {
                    zipOut.closeEntry();
                    in.close();
                    zipOut.close();
                    return out.toByteArray();
                }
            }
        } catch (Exception e) {
            SDKFeedBackUtils.getInstance().postErrorLog(SDKFeedBackUtils.class, "error when zip", e);
            return null;
        }
    }
}
