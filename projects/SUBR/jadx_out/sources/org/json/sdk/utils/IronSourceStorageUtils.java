package org.json.sdk.utils;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.nearby.messages.Message;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.jl;
import org.json.l9;
import org.json.ls;
import org.json.mediationsdk.logger.IronLog;
import org.json.mg;
import org.json.oe;
import org.json.y8;

/* JADX INFO: loaded from: classes3.dex */
public class IronSourceStorageUtils {
    private static final String a = "supersonicads";
    private static ls b;
    private static boolean c;

    private static void a(Context context) {
        ls lsVar = b;
        if (lsVar != null && lsVar.b()) {
            deleteCacheDirectories(context);
        }
        ls lsVar2 = b;
        if (lsVar2 == null || !lsVar2.c()) {
            return;
        }
        deleteFilesDirectories(context);
    }

    private static void a(File file) {
        if (file != null) {
            deleteFolder(b(file).getPath());
        }
    }

    private static boolean a() {
        ls lsVar;
        return Build.VERSION.SDK_INT > 29 && (lsVar = b) != null && lsVar.a();
    }

    private static File b(Context context) {
        oe oeVarF = jl.P().f();
        ls lsVar = b;
        return (lsVar == null || !lsVar.d()) ? oeVarF.t(context) : oeVarF.e(context);
    }

    private static File b(File file) {
        StringBuilder sb = new StringBuilder();
        sb.append(file.getAbsolutePath());
        String str = File.separator;
        sb.append(str);
        sb.append(a);
        sb.append(str);
        return new File(sb.toString());
    }

    public static String buildAbsolutePathToDirInCache(String str, String str2) {
        if (str2 == null) {
            return str;
        }
        return str + File.separator + str2;
    }

    public static JSONObject buildFilesMap(String str, String str2) {
        String name;
        File file = new File(str, str2);
        JSONObject jSONObject = new JSONObject();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                try {
                    Object objC = c(file2);
                    if (objC instanceof JSONArray) {
                        name = "files";
                    } else {
                        if (objC instanceof JSONObject) {
                            name = file2.getName();
                        }
                    }
                    jSONObject.put(name, c(file2));
                } catch (JSONException e) {
                    l9.d().a(e);
                    IronLog.INTERNAL.error(e.toString());
                }
            }
        }
        return jSONObject;
    }

    public static JSONObject buildFilesMapOfDirectory(mg mgVar, JSONObject jSONObject) throws Exception {
        String name;
        JSONObject jSONObjectBuildFilesMapOfDirectory;
        if (mgVar == null || !mgVar.isDirectory()) {
            return new JSONObject();
        }
        File[] fileArrListFiles = mgVar.listFiles();
        if (fileArrListFiles == null) {
            return new JSONObject();
        }
        JSONObject jSONObject2 = new JSONObject();
        for (File file : fileArrListFiles) {
            mg mgVar2 = new mg(file.getPath());
            if (mgVar2.isFile()) {
                name = mgVar2.getName();
                jSONObjectBuildFilesMapOfDirectory = mgVar2.a();
                if (jSONObject.has(name)) {
                    jSONObjectBuildFilesMapOfDirectory = SDKUtils.mergeJSONObjects(jSONObjectBuildFilesMapOfDirectory, jSONObject.getJSONObject(name));
                }
            } else {
                if (mgVar2.isDirectory()) {
                    name = mgVar2.getName();
                    jSONObjectBuildFilesMapOfDirectory = buildFilesMapOfDirectory(mgVar2, jSONObject);
                }
            }
            jSONObject2.put(name, jSONObjectBuildFilesMapOfDirectory);
        }
        return jSONObject2;
    }

    private static File c(Context context) {
        oe oeVarF = jl.P().f();
        ls lsVar = b;
        return (lsVar == null || !lsVar.d()) ? oeVarF.v(context) : oeVarF.k(context);
    }

    private static Object c(File file) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            if (file.isFile()) {
                jSONArray.put(file.getName());
                return jSONArray;
            }
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory()) {
                    jSONObject.put(file2.getName(), c(file2));
                } else {
                    jSONArray.put(file2.getName());
                    jSONObject.put("files", jSONArray);
                }
            }
            return jSONObject;
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public static void deleteCacheDirectories(Context context) {
        oe oeVarF = jl.P().f();
        a(oeVarF.e(context));
        a(oeVarF.k(context));
    }

    public static synchronized boolean deleteFile(mg mgVar) {
        if (!mgVar.exists()) {
            return false;
        }
        return mgVar.delete();
    }

    public static void deleteFilesDirectories(Context context) {
        oe oeVarF = jl.P().f();
        a(oeVarF.t(context));
        a(oeVarF.v(context));
    }

    public static synchronized boolean deleteFolder(String str) {
        File file;
        file = new File(str);
        return deleteFolderContentRecursive(file) && file.delete();
    }

    public static boolean deleteFolderContentRecursive(File file) {
        File[] fileArrListFiles = file.listFiles();
        boolean zDeleteFolderContentRecursive = true;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    zDeleteFolderContentRecursive &= deleteFolderContentRecursive(file2);
                }
                if (!file2.delete()) {
                    zDeleteFolderContentRecursive = false;
                }
            }
        }
        return zDeleteFolderContentRecursive;
    }

    public static void ensurePathSafety(File file, String str) throws Exception {
        ls lsVar = b;
        if (lsVar == null || !lsVar.e()) {
            String canonicalPath = new File(str).getCanonicalPath();
            String canonicalPath2 = file.getCanonicalPath();
            if (canonicalPath2.startsWith(canonicalPath)) {
                return;
            }
            throw new Exception(y8.c.u + canonicalPath2);
        }
    }

    public static String getCachedFilesMap(String str, String str2) {
        JSONObject jSONObjectBuildFilesMap = buildFilesMap(str, str2);
        try {
            jSONObjectBuildFilesMap.put("path", str2);
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return jSONObjectBuildFilesMap.toString();
    }

    public static String getDiskCacheDirPath(Context context) {
        File fileB;
        if (!a() || !SDKUtils.isExternalStorageAvailable() || (fileB = b(context)) == null || !fileB.canWrite()) {
            return c(context).getPath();
        }
        c = true;
        return fileB.getPath();
    }

    public static ArrayList<mg> getFilesInFolderRecursive(mg mgVar) {
        if (mgVar == null || !mgVar.isDirectory()) {
            return new ArrayList<>();
        }
        ArrayList<mg> arrayList = new ArrayList<>();
        File[] fileArrListFiles = mgVar.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                mg mgVar2 = new mg(file.getPath());
                if (mgVar2.isDirectory()) {
                    arrayList.addAll(getFilesInFolderRecursive(mgVar2));
                }
                if (mgVar2.isFile()) {
                    arrayList.add(mgVar2);
                }
            }
        }
        return arrayList;
    }

    public static String getNetworkStorageDir(Context context) {
        File fileB = b(new File(getDiskCacheDirPath(context)));
        if (!fileB.exists()) {
            fileB.mkdir();
        }
        return fileB.getPath();
    }

    public static long getTotalSizeOfDir(mg mgVar) {
        long totalSizeOfDir;
        long j = 0;
        if (mgVar != null && mgVar.isDirectory()) {
            File[] fileArrListFiles = mgVar.listFiles();
            if (fileArrListFiles == null) {
                return 0L;
            }
            for (File file : fileArrListFiles) {
                mg mgVar2 = new mg(file.getPath());
                if (mgVar2.isFile()) {
                    totalSizeOfDir = mgVar2.length();
                } else {
                    if (mgVar2.isDirectory()) {
                        totalSizeOfDir = getTotalSizeOfDir(mgVar2);
                    }
                }
                j += totalSizeOfDir;
            }
        }
        return j;
    }

    public static void initializeCacheDirectory(Context context, ls lsVar) {
        b = lsVar;
        a(context);
    }

    public static boolean isPathExist(String str, String str2) {
        return new File(str, str2).exists();
    }

    public static boolean isUxt() {
        return c;
    }

    public static String makeDir(String str) {
        File file = new File(str);
        if (file.exists() || file.mkdirs()) {
            return file.getPath();
        }
        return null;
    }

    public static String readFile(mg mgVar) throws Exception {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new FileReader(mgVar));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                bufferedReader.close();
                return sb.toString();
            }
            sb.append(line);
            sb.append('\n');
        }
    }

    public static boolean renameFile(String str, String str2) throws Exception {
        return new File(str).renameTo(new File(str2));
    }

    public static int saveFile(byte[] bArr, String str) throws Exception {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            byte[] bArr2 = new byte[Message.MAX_CONTENT_SIZE_BYTES];
            int i = 0;
            while (true) {
                int i2 = byteArrayInputStream.read(bArr2);
                if (i2 == -1) {
                    fileOutputStream.close();
                    byteArrayInputStream.close();
                    return i;
                }
                fileOutputStream.write(bArr2, 0, i2);
                i += i2;
            }
        } catch (Throwable th) {
            fileOutputStream.close();
            byteArrayInputStream.close();
            throw th;
        }
    }
}
