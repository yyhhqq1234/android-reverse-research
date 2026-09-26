package com.netease.unisdk.gmbridge.utils;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* loaded from: classes.dex */
public class FileUtil {
    public static InputStream getInputStreamFromUri(Context context, Uri uri) {
        try {
            return context.getContentResolver().openInputStream(uri);
        } catch (FileNotFoundException e) {
            return null;
        }
    }

    public static String getImgSavePath(Context context) {
        File dir;
        String name = String.format("unisdk_%s.jpg", DateUtil.getDateFormat("yyyy_MM_dd_HH_mm_ss_SSS"));
        if (StorageUtil.isSDCardAvailable()) {
            dir = StorageUtil.getExternalFileDir(context);
        } else {
            dir = context.getFilesDir();
        }
        File file = new File(dir, name);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                return null;
            }
        }
        return file.getAbsolutePath();
    }

    public static boolean writeFile(ByteArrayOutputStream outBuffer, File dest) {
        if (outBuffer == null || dest == null) {
            return false;
        }
        FileOutputStream outFileStream = null;
        try {
            FileOutputStream outFileStream2 = new FileOutputStream(dest);
            try {
                outFileStream2.write(outBuffer.toByteArray(), 0, outBuffer.size());
                try {
                    outBuffer.close();
                    if (outFileStream2 != null) {
                        outFileStream2.close();
                    }
                    return true;
                } catch (IOException e) {
                    return false;
                }
            } catch (FileNotFoundException e2) {
                outFileStream = outFileStream2;
                try {
                    outBuffer.close();
                    if (outFileStream == null) {
                        return false;
                    }
                    outFileStream.close();
                    return false;
                } catch (IOException e3) {
                    return false;
                }
            } catch (IOException e4) {
                outFileStream = outFileStream2;
                try {
                    outBuffer.close();
                    if (outFileStream == null) {
                        return false;
                    }
                    outFileStream.close();
                    return false;
                } catch (IOException e5) {
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                outFileStream = outFileStream2;
                try {
                    outBuffer.close();
                    if (outFileStream != null) {
                        outFileStream.close();
                    }
                } catch (IOException e6) {
                }
                throw th;
            }
        } catch (FileNotFoundException e7) {
        } catch (IOException e8) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String readFile(String filePath, String charsetName) {
        File file = new File(filePath);
        StringBuilder fileContent = new StringBuilder("");
        if (file == null || !file.isFile()) {
            return null;
        }
        BufferedReader reader = null;
        try {
            try {
                InputStreamReader is = new InputStreamReader(new FileInputStream(file), charsetName);
                BufferedReader reader2 = new BufferedReader(is);
                while (true) {
                    try {
                        String line = reader2.readLine();
                        if (line != null) {
                            if (!fileContent.toString().equals("")) {
                                fileContent.append("\r\n");
                            }
                            fileContent.append(line);
                        } else {
                            String sb = fileContent.toString();
                            close(reader2);
                            return sb;
                        }
                    } catch (IOException e) {
                        e = e;
                        throw new RuntimeException("IOException occurred. ", e);
                    } catch (Throwable th) {
                        th = th;
                        reader = reader2;
                        close(reader);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
        }
    }

    public static boolean writeFile(String filePath, String content, boolean append) {
        FileWriter fileWriter;
        if (TextUtils.isEmpty(filePath) || TextUtils.isEmpty(content)) {
            return false;
        }
        FileWriter fileWriter2 = null;
        try {
            try {
                makeDirs(filePath);
                fileWriter = new FileWriter(filePath, append);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            fileWriter.write(content);
            close(fileWriter);
            return true;
        } catch (IOException e2) {
            e = e2;
            throw new RuntimeException("IOException occurred. ", e);
        } catch (Throwable th2) {
            th = th2;
            fileWriter2 = fileWriter;
            close(fileWriter2);
            throw th;
        }
    }

    public static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                throw new RuntimeException("IOException occurred. ", e);
            }
        }
    }

    public static boolean makeDirs(String filePath) {
        String folderName = getFolderName(filePath);
        if (TextUtils.isEmpty(folderName)) {
            return false;
        }
        File folder = new File(folderName);
        if (folder.exists() && folder.isDirectory()) {
            return true;
        }
        return folder.mkdirs();
    }

    public static String getFolderName(String filePath) {
        if (!TextUtils.isEmpty(filePath)) {
            int filePosi = filePath.lastIndexOf(File.separator);
            return filePosi == -1 ? "" : filePath.substring(0, filePosi);
        }
        return filePath;
    }

    public static void deleteFile(String path) {
        try {
            new File(path).delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getMimeType(String url) {
        String extension = MimeTypeMap.getFileExtensionFromUrl(url);
        if (extension == null) {
            return null;
        }
        String type = MimeTypeMap.getSingleton().getMimeTypeFromExtension(extension);
        return type;
    }
}
