package com.netease.androidcrashhandler;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.netease.androidcrashhandler.MyPostEntity;
import com.netease.androidcrashhandler.util.LogUtils;
import com.netease.download.util.HashUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

/* loaded from: classes.dex */
public class MyFileUtils {
    static final String ANR_FILE_PATH = "/data/anr/traces.txt";
    static final String ANR_TIME_RECORD_FILE_NAME = "MyANRTime.txt";
    static final String BASICINFOS_JSON_NAME = "BasicInfos";
    private static final int BUFFER_SIZE = 4096;
    static final String CFG_SUFFIX = ".javacfg";
    static final String CONFIG_ARRAY_NAME = "ConfigArray";
    static final String CONFIG_FILE_NAME = "MyConfig.txt";
    static final String DI_SUFFIX = ".di";
    static final String DMP_SUFFIX = ".dmp";
    static final String FILENAME_JSON_NAME = "FileName";
    static final String FILES_JSON_NAME = "Files";
    static final String JE_SUFFIX = ".aci";
    static final String JNI_CFG_SUFFIX = ".jnicfg";
    static final String PARAMS_JSON_NAME = "Params";
    static final String UPLOADTYPE_JSON_NAME = "UploadType";
    static final String USERDESCS_JSON_NAME = "UserDescs";
    static final String ZIP_SUFFIX = ".zip";
    private Context ctx;
    static final String SEPARATOR = File.separator;
    static final String CRLF = System.getProperty("line.separator");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MyFileUtils getInstance() {
        return MyFilesUtilsHolder.INSTANCE;
    }

    private MyFileUtils() {
        this.ctx = null;
    }

    /* synthetic */ MyFileUtils(MyFileUtils myFileUtils) {
        this();
    }

    /* loaded from: classes.dex */
    private static class MyFilesUtilsHolder {
        public static final MyFileUtils INSTANCE = new MyFileUtils(null);

        private MyFilesUtilsHolder() {
        }
    }

    public void zip(String[] files, String zipfile) throws IOException {
        LogUtils.i("trace", "zip ctx.getFilesDir():" + this.ctx.getFilesDir());
        BufferedInputStream origin = null;
        ZipOutputStream out = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(new File(this.ctx.getFilesDir(), zipfile))));
        try {
            byte[] data = new byte[4096];
            LogUtils.i("trace", "zip content");
            int i = 0;
            while (true) {
                try {
                    BufferedInputStream bufferedInputStream = origin;
                    if (i < files.length) {
                        LogUtils.i("trace", "file name:" + files[i] + "  size:" + new File(this.ctx.getFilesDir(), files[i]).length());
                        LogUtils.i("zip file", files[i]);
                        FileInputStream fi = new FileInputStream(new File(this.ctx.getFilesDir(), files[i]));
                        origin = new BufferedInputStream(fi, 4096);
                        try {
                            ZipEntry entry = new ZipEntry(files[i].substring(files[i].lastIndexOf("/") + 1));
                            out.putNextEntry(entry);
                            while (true) {
                                int count = origin.read(data, 0, 4096);
                                if (count == -1) {
                                    break;
                                } else {
                                    out.write(data, 0, count);
                                }
                            }
                            i++;
                        } finally {
                        }
                    } else {
                        out.close();
                        LogUtils.i("zip file", String.valueOf(zipfile) + " success");
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    out.close();
                    LogUtils.i("zip file", String.valueOf(zipfile) + " success");
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            out.close();
            LogUtils.i("zip file", String.valueOf(zipfile) + " success");
            throw th;
        }
    }

    public boolean info2File(Map<String, String> info, String name, String suffix) {
        String fileName = String.valueOf(name) + suffix;
        PrintWriter pw = null;
        try {
            PrintWriter pw2 = new PrintWriter(this.ctx.openFileOutput(fileName, 0));
            try {
                for (Map.Entry<String, String> entry : info.entrySet()) {
                    pw2.append((CharSequence) entry.getKey());
                    pw2.append((CharSequence) "=");
                    pw2.append((CharSequence) entry.getValue());
                    pw2.append((CharSequence) CRLF);
                }
                if (pw2 != null) {
                    try {
                        pw2.flush();
                        pw2.close();
                    } catch (Exception e) {
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                th = th;
                pw = pw2;
                if (pw != null) {
                    try {
                        pw.flush();
                        pw.close();
                    } catch (Exception e2) {
                        return false;
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public String info2str(Map<String, String> info) {
        StringBuilder strbuilder = new StringBuilder();
        for (Map.Entry<String, String> entry : info.entrySet()) {
            strbuilder.append(entry.getKey());
            strbuilder.append(" = ");
            strbuilder.append(entry.getValue());
            strbuilder.append(CRLF);
        }
        return strbuilder.toString();
    }

    public String str2MD5(String str) {
        try {
            MessageDigest m = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
            m.reset();
            m.update(str.getBytes());
            byte[] digest = m.digest();
            BigInteger bigInt = new BigInteger(1, digest);
            String md5 = bigInt.toString(16);
            while (md5.length() < 32) {
                md5 = "0" + md5;
            }
            return md5;
        } catch (NoSuchAlgorithmException e) {
            return "null";
        }
    }

    public String getFileMD5(File file) {
        MessageDigest md;
        FileInputStream fin;
        String md5 = "null";
        FileInputStream fin2 = null;
        try {
            try {
                md = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
                md.reset();
                fin = new FileInputStream(file);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] buffer = new byte[1024];
            while (true) {
                int length = fin.read(buffer);
                if (length == -1) {
                    break;
                }
                md.update(buffer, 0, length);
            }
            BigInteger bigint = new BigInteger(1, md.digest());
            md5 = bigint.toString(16);
        } catch (Exception e2) {
            e = e2;
            fin2 = fin;
            e.printStackTrace();
            if (fin2 != null) {
                try {
                    fin2.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            return md5;
        } catch (Throwable th2) {
            th = th2;
            fin2 = fin;
            if (fin2 != null) {
                try {
                    fin2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
        if (fin != null) {
            try {
                fin.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            return md5;
        }
        return md5;
    }

    public String getFileMD5(String filename) {
        MessageDigest md;
        FileInputStream fin;
        String md5 = "null";
        FileInputStream fin2 = null;
        try {
            try {
                md = MessageDigest.getInstance(HashUtil.Algorithm.MD5);
                md.reset();
                fin = new FileInputStream(new File(this.ctx.getFilesDir(), filename));
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            byte[] buffer = new byte[1024];
            while (true) {
                int length = fin.read(buffer);
                if (length == -1) {
                    break;
                }
                md.update(buffer, 0, length);
            }
            BigInteger bigint = new BigInteger(1, md.digest());
            md5 = bigint.toString(16);
        } catch (Exception e2) {
            e = e2;
            fin2 = fin;
            e.printStackTrace();
            if (fin2 != null) {
                try {
                    fin2.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            return md5;
        } catch (Throwable th2) {
            th = th2;
            fin2 = fin;
            if (fin2 != null) {
                try {
                    fin2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
        if (fin != null) {
            try {
                fin.close();
                fin2 = fin;
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            return md5;
        }
        fin2 = fin;
        return md5;
    }

    public String[] getFilesBySuffix(final String suffix) {
        File filesDir = this.ctx.getFilesDir();
        FilenameFilter filter = new FilenameFilter() { // from class: com.netease.androidcrashhandler.MyFileUtils.1
            @Override // java.io.FilenameFilter
            public boolean accept(File dir, String name) {
                return name.endsWith(suffix);
            }
        };
        return filesDir.list(filter);
    }

    public Properties file2Properties(File file) {
        Properties info = new Properties();
        try {
            FileInputStream fis = new FileInputStream(file);
            info.load(fis);
            return info;
        } catch (IOException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean str2File(String str, String fileName) {
        BufferedOutputStream stream = null;
        try {
            byte[] b = str.getBytes("UTF-8");
            try {
                FileOutputStream fstream = this.ctx.openFileOutput(fileName, 0);
                BufferedOutputStream stream2 = new BufferedOutputStream(fstream);
                try {
                    stream2.write(b);
                    if (stream2 != null) {
                        try {
                            stream2.close();
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            return false;
                        }
                    }
                    return true;
                } catch (Throwable th) {
                    th = th;
                    stream = stream2;
                    if (stream != null) {
                        stream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    String file2Str(String fileName) {
        InputStream is = null;
        BufferedReader reader = null;
        try {
            InputStream is2 = new FileInputStream(new File(this.ctx.getFilesDir(), fileName));
            try {
                BufferedReader reader2 = new BufferedReader(new InputStreamReader(is2));
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        try {
                            String line = reader2.readLine();
                            if (line == null) {
                                break;
                            }
                            sb.append(line);
                            sb.append(CRLF);
                        } catch (Throwable th) {
                            th = th;
                            reader = reader2;
                            is = is2;
                            if (reader != null) {
                                try {
                                    reader.close();
                                } catch (Exception e) {
                                    e = e;
                                    e.printStackTrace();
                                    return null;
                                }
                            }
                            if (is != null) {
                                is.close();
                            }
                            throw th;
                        }
                    }
                    if (reader2 != null) {
                        try {
                            reader2.close();
                        } catch (Exception e2) {
                            e = e2;
                            e.printStackTrace();
                            return null;
                        }
                    }
                    if (is2 != null) {
                        is2.close();
                    }
                    return sb.toString();
                } catch (Throwable th2) {
                    th = th2;
                    reader = reader2;
                    is = is2;
                }
            } catch (Throwable th3) {
                th = th3;
                is = is2;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean config2File(MyPostEntity entity, String name, String suffix) {
        boolean result;
        if (entity == null) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            Map<String, String> params = entity.getParams();
            if (params != null && !params.isEmpty()) {
                JSONObject paramsObj = new JSONObject();
                for (Map.Entry<String, String> entry : params.entrySet()) {
                    paramsObj.put(entry.getKey(), entry.getValue());
                }
                jSONObject.put(PARAMS_JSON_NAME, paramsObj);
            }
            Map<String, String> userdesc = entity.getUserDesc();
            if (userdesc != null && !userdesc.isEmpty()) {
                JSONObject userdescObj = new JSONObject();
                for (Map.Entry<String, String> entry2 : userdesc.entrySet()) {
                    userdescObj.put(entry2.getKey(), entry2.getValue());
                }
                jSONObject.put(USERDESCS_JSON_NAME, userdescObj);
            }
            Map<String, String> basicinfo = entity.getBasicInfo();
            if (basicinfo != null && !basicinfo.isEmpty()) {
                JSONObject basicinfoObj = new JSONObject();
                for (Map.Entry<String, String> entry3 : basicinfo.entrySet()) {
                    basicinfoObj.put(entry3.getKey(), entry3.getValue());
                }
                jSONObject.put(BASICINFOS_JSON_NAME, basicinfoObj);
            }
            Map<String, MyPostEntity.FileForm> files = entity.getFiles();
            if (files != null && !files.isEmpty()) {
                JSONArray filesArray = new JSONArray();
                for (Map.Entry<String, MyPostEntity.FileForm> entry4 : files.entrySet()) {
                    JSONObject fileObj = new JSONObject();
                    fileObj.put(FILENAME_JSON_NAME, entry4.getKey());
                    fileObj.put(UPLOADTYPE_JSON_NAME, entry4.getValue().getUploadType());
                    filesArray.put(fileObj);
                }
                jSONObject.put(FILES_JSON_NAME, filesArray);
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            String jsonData = new JSONStringer().object().key(CONFIG_ARRAY_NAME).value(jSONArray).endObject().toString();
            String filename = String.valueOf(name) + suffix;
            result = str2File(jsonData, filename);
            LogUtils.i("JSONFILE", jsonData);
        } catch (JSONException e) {
            e.printStackTrace();
            result = false;
        }
        return result;
    }

    JSONArray getConfigJSONArray(String filename) {
        JSONObject jsonObject;
        String jsonData = file2Str(filename);
        if (jsonData == null) {
            return null;
        }
        try {
            jsonObject = new JSONObject(jsonData);
        } catch (JSONException e) {
            e = e;
        }
        try {
            JSONArray configArray = jsonObject.getJSONArray(CONFIG_ARRAY_NAME);
            return configArray;
        } catch (JSONException e2) {
            e = e2;
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MyPostEntity getPostEntityByFile(String _name, String _suffix) {
        JSONArray files;
        JSONObject basicinfoObj;
        JSONObject userdescObj;
        JSONObject paramObj;
        MyPostEntity entity = new MyPostEntity();
        String filename = String.valueOf(_name) + _suffix;
        JSONArray jsonArray = getConfigJSONArray(filename);
        if (jsonArray != null) {
            try {
                if (jsonArray.length() != 0) {
                    JSONObject curObj = jsonArray.getJSONObject(0);
                    LogUtils.i("cfginfo not null.....", "success");
                    if (curObj.has(PARAMS_JSON_NAME) && (paramObj = curObj.getJSONObject(PARAMS_JSON_NAME)) != null) {
                        LogUtils.i("getParam.....", "success");
                        JSONArray paramNames = paramObj.names();
                        if (paramNames != null) {
                            for (int i = 0; i < paramNames.length(); i++) {
                                String name = paramNames.getString(i);
                                entity.setParam(name, paramObj.getString(name), false);
                            }
                        }
                    }
                    if (curObj.has(USERDESCS_JSON_NAME) && (userdescObj = curObj.getJSONObject(USERDESCS_JSON_NAME)) != null) {
                        LogUtils.i("getUserDesc.....", "success");
                        JSONArray userdescNames = userdescObj.names();
                        if (userdescNames != null) {
                            for (int i2 = 0; i2 < userdescNames.length(); i2++) {
                                String name2 = userdescNames.getString(i2);
                                entity.setUserDesc(name2, userdescObj.getString(name2));
                            }
                        }
                    }
                    if (curObj.has(BASICINFOS_JSON_NAME) && (basicinfoObj = curObj.getJSONObject(BASICINFOS_JSON_NAME)) != null) {
                        LogUtils.i("getBasicInfo.....", "success");
                        JSONArray basicinfoNames = basicinfoObj.names();
                        if (basicinfoNames != null) {
                            for (int i3 = 0; i3 < basicinfoNames.length(); i3++) {
                                String name3 = basicinfoNames.getString(i3);
                                entity.setBasicInfo(name3, basicinfoObj.getString(name3));
                            }
                        }
                    }
                    if (curObj.has(FILES_JSON_NAME) && (files = curObj.getJSONArray(FILES_JSON_NAME)) != null) {
                        LogUtils.i("getFiles.....", "success");
                        for (int i4 = 0; i4 < files.length(); i4++) {
                            JSONObject fileObj = files.getJSONObject(i4);
                            String name4 = fileObj.getString(FILENAME_JSON_NAME);
                            String uploadType = fileObj.getString(UPLOADTYPE_JSON_NAME);
                            File file = new File(this.ctx.getFilesDir(), name4);
                            if (file.exists()) {
                                entity.setFile(file, name4, uploadType);
                            }
                        }
                    }
                    LogUtils.i("all............", "success");
                    return entity;
                }
            } catch (JSONException e) {
                e = e;
                e.printStackTrace();
                return new MyPostEntity(AndroidCrashHandler.getInstance().getNetworkUtils().getDefaultPostEntity());
            }
        }
        String jnicfgInfo = file2Str(filename);
        if (!TextUtils.isEmpty(jnicfgInfo)) {
            JSONObject curObj2 = new JSONObject(jnicfgInfo);
            try {
                MyPostEntity entity2 = AndroidCrashHandler.getInstance().getNetworkUtils().getDefaultPostEntity();
                Iterator it = curObj2.keys();
                while (it.hasNext()) {
                    String key = it.next().toString();
                    entity2.setParam(key, curObj2.getString(key), false);
                }
                return entity2;
            } catch (JSONException e2) {
                e = e2;
                e.printStackTrace();
                return new MyPostEntity(AndroidCrashHandler.getInstance().getNetworkUtils().getDefaultPostEntity());
            }
        }
        return new MyPostEntity(AndroidCrashHandler.getInstance().getNetworkUtils().getDefaultPostEntity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void deleteFile(String path, String name) {
        File file = new File(path, name);
        LogUtils.i("trace", "======file path=" + file.getAbsolutePath());
        if (file != null && file.exists()) {
            file.delete();
        }
    }

    void deleteFile(String path) {
        File file = new File(path);
        if (file != null && file.exists()) {
            file.delete();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0061, code lost:
    
        r12 = r14.readLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0066, code lost:
    
        if (r12 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006e, code lost:
    
        if (r12.contains(r25) == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0070, code lost:
    
        r10 = getLastANRProcessTime();
        r18 = r12.split(" ");
        r19 = java.lang.String.valueOf(r18[4]) + " " + r18[5];
        r7 = new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        r20 = r7.parse(r19).getTime();
        com.netease.androidcrashhandler.util.LogUtils.i("anr_time", java.lang.String.valueOf(r20));
        com.netease.androidcrashhandler.util.LogUtils.i("last_process", java.lang.String.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c2, code lost:
    
        if (r10 >= r20) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c4, code lost:
    
        r15 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean isANRFileProcessed(java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.androidcrashhandler.MyFileUtils.isANRFileProcessed(java.lang.String):boolean");
    }

    long getLastANRProcessTime() {
        InputStream is;
        BufferedReader reader;
        File file = new File(this.ctx.getFilesDir(), ANR_TIME_RECORD_FILE_NAME);
        long result = 0;
        if (file != null && file.exists()) {
            InputStream is2 = null;
            BufferedReader reader2 = null;
            try {
                is = new FileInputStream(file);
                try {
                    reader = new BufferedReader(new InputStreamReader(is));
                } catch (Throwable th) {
                    th = th;
                    is2 = is;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                String line = reader.readLine();
                if (line != null) {
                    result = Long.valueOf(line).longValue();
                }
                if (reader != null) {
                    try {
                        reader.close();
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        return result;
                    }
                }
                if (is != null) {
                    is.close();
                }
            } catch (Throwable th3) {
                th = th3;
                reader2 = reader;
                is2 = is;
                if (reader2 != null) {
                    try {
                        reader2.close();
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        return result;
                    }
                }
                if (is2 != null) {
                    is2.close();
                }
                throw th;
            }
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean setANRProcessTime(long timestamp) {
        return str2File(String.valueOf(timestamp), ANR_TIME_RECORD_FILE_NAME);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<String> getANRContent(String bundleID, String filePath) {
        String line;
        StringBuilder sb;
        if (this.ctx == null || bundleID == null || filePath == null) {
            return null;
        }
        InputStream is = null;
        BufferedReader reader = null;
        try {
            InputStream is2 = new FileInputStream(new File(filePath));
            try {
                BufferedReader reader2 = new BufferedReader(new InputStreamReader(is2));
                boolean ANRMatch = false;
                String firstLine = null;
                int pLine = 0;
                do {
                    try {
                        line = reader2.readLine();
                        if (line != null) {
                            break;
                        }
                        pLine++;
                    } catch (Throwable th) {
                        th = th;
                        reader = reader2;
                        is = is2;
                    }
                } while (pLine != 100);
                while (true) {
                    LogUtils.e("trace", "line = " + line);
                    if (line.contains("-----")) {
                        firstLine = line;
                        line = reader2.readLine();
                        if (line != null) {
                            LogUtils.e("trace", "line = " + line + ", bundleID=" + bundleID);
                            if (line.contains(bundleID)) {
                                ANRMatch = true;
                                break;
                            }
                        }
                    }
                    line = reader2.readLine();
                    if (line == null) {
                        break;
                    }
                }
                LogUtils.i("trace", "ANRMatch = " + ANRMatch);
                if (ANRMatch) {
                    StringBuilder fixedStr = new StringBuilder();
                    boolean hasReachedFixedStr = false;
                    boolean isFixedStrFinished = false;
                    ArrayList<String> result = new ArrayList<>();
                    try {
                        sb = new StringBuilder();
                    } catch (Throwable th2) {
                        th = th2;
                        reader = reader2;
                        is = is2;
                    }
                    try {
                        String[] strs = firstLine.split(" ");
                        result.add(String.valueOf(strs[4]) + " " + strs[5]);
                        sb.append(firstLine);
                        do {
                            sb.append(CRLF);
                            sb.append(line);
                            if (!hasReachedFixedStr || !isFixedStrFinished) {
                                if (line.contains("at")) {
                                    hasReachedFixedStr = true;
                                    fixedStr.append(line);
                                } else if (hasReachedFixedStr) {
                                    isFixedStrFinished = true;
                                }
                            }
                            line = reader2.readLine();
                            if (line == null) {
                                break;
                            }
                        } while (!line.contains("-----"));
                        sb.append(CRLF);
                        sb.append(line);
                        result.add(str2MD5(fixedStr.toString()));
                        result.add(sb.toString());
                        if (reader2 != null) {
                            try {
                                reader2.close();
                            } catch (Exception e) {
                                e = e;
                            }
                        }
                        if (is2 != null) {
                            is2.close();
                            return result;
                        }
                        return result;
                    } catch (Throwable th3) {
                        th = th3;
                        reader = reader2;
                        is = is2;
                        if (reader != null) {
                            try {
                                reader.close();
                            } catch (Exception e2) {
                                e = e2;
                            }
                        }
                        if (is != null) {
                            is.close();
                        }
                        throw th;
                    }
                } else {
                    if (reader2 != null) {
                        try {
                            reader2.close();
                        } catch (Exception e3) {
                            e = e3;
                        }
                    }
                    if (is2 != null) {
                        is2.close();
                    }
                    return null;
                }
            } catch (Throwable th4) {
                th = th4;
                is = is2;
            }
            e.printStackTrace();
            LogUtils.e("trace", "Exception = " + e);
            return null;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public Context getCtx() {
        return this.ctx;
    }

    public void setCtx(Context ctx) {
        this.ctx = ctx;
    }

    public static File[] orderByDate(String fliePath) {
        LogUtils.i("trace", "orderByDate param = " + fliePath);
        if (TextUtils.isEmpty(fliePath)) {
            LogUtils.i("trace", "orderByDate param error");
            return null;
        }
        File file = new File(fliePath);
        File[] fs = null;
        if (file.exists() && file.isDirectory() && (fs = file.listFiles()) != null && fs.length > 0) {
            for (File file2 : fs) {
                LogUtils.i("trace", "file2 name=" + file2.getAbsolutePath());
            }
        }
        if (fs != null && fs.length > 0) {
            Arrays.sort(fs, new Comparator<File>() { // from class: com.netease.androidcrashhandler.MyFileUtils.2
                @Override // java.util.Comparator
                public int compare(File f1, File f2) {
                    long diff = f2.lastModified() - f1.lastModified();
                    if (diff > 0) {
                        return 1;
                    }
                    if (diff == 0) {
                        return 0;
                    }
                    return -1;
                }

                @Override // java.util.Comparator
                public boolean equals(Object obj) {
                    return true;
                }
            });
            return fs;
        }
        return fs;
    }

    public static void setInfo(Context context, String key, long info) {
        if (context != null) {
            SharedPreferences pref = context.getSharedPreferences(key, 0);
            SharedPreferences.Editor editor = pref.edit();
            editor.putLong(key, info);
            editor.commit();
        }
    }

    public static long getInfo(Context context, String key) {
        if (context == null) {
            return -1L;
        }
        SharedPreferences pref = context.getSharedPreferences(key, 0);
        long data = pref.getLong(key, -1L);
        return data;
    }
}
