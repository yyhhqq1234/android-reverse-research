package com.yasirkula.unity;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.util.Log;
import com.unity3d.services.core.device.MimeTypes;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import org.json.y8;

/* JADX INFO: loaded from: classes3.dex */
public class NativeFilePickerUtils {
    private static int isXiaomiOrMIUI;
    private static String secondaryStoragePath;

    public static boolean IsXiaomiOrMIUI() throws Throwable {
        int i = isXiaomiOrMIUI;
        if (i > 0) {
            return true;
        }
        if (i < 0) {
            return false;
        }
        if ("xiaomi".equalsIgnoreCase(Build.MANUFACTURER)) {
            isXiaomiOrMIUI = 1;
            return true;
        }
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.miui.ui.version.name").getInputStream()), 1024);
                try {
                    String line = bufferedReader2.readLine();
                    if (line != null && line.length() > 0) {
                        isXiaomiOrMIUI = 1;
                        try {
                            bufferedReader2.close();
                        } catch (Exception unused) {
                        }
                        return true;
                    }
                    isXiaomiOrMIUI = -1;
                    try {
                        bufferedReader2.close();
                    } catch (Exception unused2) {
                    }
                    return false;
                } catch (Exception unused3) {
                    bufferedReader = bufferedReader2;
                    isXiaomiOrMIUI = -1;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception unused4) {
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception unused5) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused6) {
        }
    }

    public static String GetPathFromURI(Context context, Uri uri) throws Throwable {
        Uri uri2;
        String str;
        String[] strArr;
        Cursor cursorQuery;
        String string;
        if (uri == null) {
            return null;
        }
        try {
            if (!DocumentsContract.isDocumentUri(context.getApplicationContext(), uri)) {
                uri2 = uri;
                str = null;
                strArr = null;
            } else {
                if ("com.android.externalstorage.documents".equals(uri.getAuthority())) {
                    String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                    if ("primary".equalsIgnoreCase(strArrSplit[0])) {
                        return Environment.getExternalStorageDirectory() + File.separator + strArrSplit[1];
                    }
                    if ("raw".equalsIgnoreCase(strArrSplit[0])) {
                        return strArrSplit[1];
                    }
                    return GetSecondaryStoragePathFor(strArrSplit[1]);
                }
                if ("com.android.providers.downloads.documents".equals(uri.getAuthority())) {
                    String documentId = DocumentsContract.getDocumentId(uri);
                    if (documentId.startsWith("raw:")) {
                        return documentId.substring(4);
                    }
                    if (documentId.indexOf(58) >= 0) {
                        return null;
                    }
                    uri = ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.parseLong(documentId));
                } else if ("com.android.providers.media.documents".equals(uri.getAuthority())) {
                    String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                    String str2 = strArrSplit2[0];
                    if ("image".equals(str2)) {
                        uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if (MimeTypes.BASE_TYPE_VIDEO.equals(str2)) {
                        uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if (MimeTypes.BASE_TYPE_AUDIO.equals(str2)) {
                        uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    } else if ("raw".equals(str2)) {
                        return strArrSplit2[1];
                    }
                    str = "_id=?";
                    strArr = new String[]{strArrSplit2[1]};
                    uri2 = uri;
                }
                uri2 = uri;
                str = null;
                strArr = null;
            }
            if ("content".equalsIgnoreCase(uri2.getScheme())) {
                try {
                    cursorQuery = context.getContentResolver().query(uri2, new String[]{"_data"}, str, strArr, null);
                    if (cursorQuery != null) {
                        try {
                            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data");
                            if (cursorQuery.moveToFirst() && (string = cursorQuery.getString(columnIndexOrThrow)) != null && string.length() > 0) {
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                return string;
                            }
                        } catch (Exception unused) {
                            if (cursorQuery != null) {
                            }
                            return null;
                        } catch (Throwable th) {
                            th = th;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            throw th;
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception unused2) {
                    cursorQuery = null;
                } catch (Throwable th2) {
                    th = th2;
                    cursorQuery = null;
                }
            } else if (y8.h.b.equalsIgnoreCase(uri2.getScheme())) {
                return uri2.getPath();
            }
            return null;
        } catch (Exception e) {
            Log.e("Unity", "Exception:", e);
            return null;
        }
    }

    private static String GetSecondaryStoragePathFor(String localPath) {
        String str = secondaryStoragePath;
        if (str == null) {
            String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
            String str2 = System.getenv("SECONDARY_STORAGE");
            if (str2 == null || str2.length() == 0) {
                str2 = System.getenv("EXTERNAL_SDCARD_STORAGE");
            }
            if (str2 != null && str2.length() > 0) {
                if (!str2.contains(":")) {
                    str2 = str2 + ":";
                }
                for (String str3 : str2.split(":")) {
                    if (str3 != null && str3.length() > 0) {
                        File file = new File(str3);
                        if (file.exists() && file.isDirectory() && file.canRead() && !file.getAbsolutePath().equalsIgnoreCase(absolutePath)) {
                            String str4 = file.getAbsolutePath() + File.separator + localPath;
                            if (new File(str4).exists()) {
                                secondaryStoragePath = file.getAbsolutePath();
                                return str4;
                            }
                        }
                    }
                }
            }
            String[] strArr = {"/storage", "/mnt", "/storage/removable", "/removable", "/data", "/mnt/media_rw", "/mnt/sdcard0"};
            for (int i = 0; i < 7; i++) {
                try {
                    for (File file2 : new File(strArr[i]).listFiles()) {
                        if (file2.exists() && file2.isDirectory() && file2.canRead() && !file2.getAbsolutePath().equalsIgnoreCase(absolutePath)) {
                            String str5 = file2.getAbsolutePath() + File.separator + localPath;
                            if (new File(str5).exists()) {
                                secondaryStoragePath = file2.getAbsolutePath();
                                return str5;
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
            secondaryStoragePath = "_NulL_";
            return null;
        }
        if (str.equals("_NulL_")) {
            return null;
        }
        return secondaryStoragePath + File.separator + localPath;
    }
}
