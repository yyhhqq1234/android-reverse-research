package com.applovin.impl.sdk;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import com.applovin.impl.ba;
import com.applovin.impl.jn;
import com.applovin.impl.ka;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.u2;
import com.applovin.impl.yl;
import com.applovin.impl.yp;
import com.unity3d.services.UnityAdsConstants;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.y8;

/* JADX INFO: loaded from: classes.dex */
public class l {
    private final j b;
    private final n c;
    private final boolean f;
    private final String a = "FileManager";
    private final Object d = new Object();
    private final Set e = new HashSet();

    l(j jVar) {
        this.b = jVar;
        this.c = jVar.I();
        this.f = ((Boolean) jVar.a(sj.W0)).booleanValue();
    }

    private boolean f(File file) {
        if (n.a()) {
            this.c.a("FileManager", "Removing file " + file.getName() + " from filesystem...");
        }
        try {
            c(file);
            boolean zDelete = file.delete();
            if (!zDelete) {
                this.b.D().a(ka.U, "removeFile", (Map) CollectionUtils.hashMap("path", file.getAbsolutePath()));
            }
            g(file);
            return zDelete;
        } catch (Throwable th) {
            try {
                if (n.a()) {
                    this.c.a("FileManager", "Failed to remove file " + file.getName() + " from filesystem!", th);
                }
                this.b.D().a("FileManager", "removeFile", th);
                return false;
            } finally {
                g(file);
            }
        }
    }

    private void g(File file) {
        String absolutePath = file.getAbsolutePath();
        synchronized (this.d) {
            if (!this.e.remove(absolutePath)) {
                this.b.D().a(ka.U, "unlockFile", (Map) CollectionUtils.hashMap("path", absolutePath));
            }
            this.d.notifyAll();
        }
    }

    public boolean b(InputStream inputStream, File file, boolean z) {
        return a(inputStream, file, z, false);
    }

    public void c(final com.applovin.impl.sdk.ad.b bVar, final Context context) {
        this.b.i0().a((yl) new jn(this.b, false, "removeCachedResourcesForAd", new Runnable() { // from class: com.applovin.impl.sdk.l$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(bVar, context);
            }
        }), tm.b.CACHING);
    }

    public void d(final com.applovin.impl.sdk.ad.b bVar, final Context context) {
        this.b.i0().a((yl) new jn(this.b, false, "removeCachedVideoResourceForAd", new Runnable() { // from class: com.applovin.impl.sdk.l$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(bVar, context);
            }
        }), tm.b.CACHING);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [boolean, java.io.Closeable] */
    public String e(File file) throws Throwable {
        Throwable th;
        InputStream fileInputStream;
        IOException e;
        FileNotFoundException e2;
        if (file == null) {
            return null;
        }
        if (n.a()) {
            this.c.a("FileManager", "Reading resource from filesystem: " + file.getName());
        }
        ?? BooleanValue = ((Boolean) this.b.a(sj.z)).booleanValue();
        boolean z = false;
        boolean z2 = true;
        try {
            try {
                try {
                    try {
                        if (BooleanValue != 0) {
                            try {
                                try {
                                    try {
                                        FileInputStream fileInputStream2 = new FileInputStream(file);
                                        try {
                                            c(file);
                                            String strA = a(fileInputStream2);
                                            z = strA == null;
                                            fileInputStream2.close();
                                            if (z && ((Boolean) this.b.a(sj.L0)).booleanValue()) {
                                                a(file, "removeFileAfterReadFail");
                                            }
                                            g(file);
                                            return strA;
                                        } catch (Throwable th2) {
                                            try {
                                                fileInputStream2.close();
                                            } catch (Throwable th3) {
                                                th2.addSuppressed(th3);
                                            }
                                            throw th2;
                                        }
                                    } catch (IOException e3) {
                                        if (n.a()) {
                                            this.c.a("FileManager", "Failed to read file: " + file.getName() + e3);
                                        }
                                        this.c.a("FileManager", e3);
                                        this.b.D().a("FileManager", "readFileIO", e3);
                                        if (((Boolean) this.b.a(sj.L0)).booleanValue()) {
                                            a(file, "removeFileAfterReadFail");
                                        }
                                        g(file);
                                        return null;
                                    }
                                } catch (FileNotFoundException e4) {
                                    if (n.a()) {
                                        this.c.d("FileManager", "File not found. " + e4);
                                    }
                                    this.c.a("FileManager", e4);
                                    this.b.D().a("FileManager", "readFileNotFound", e4);
                                    if (0 != 0 && ((Boolean) this.b.a(sj.L0)).booleanValue()) {
                                        a(file, "removeFileAfterReadFail");
                                    }
                                    g(file);
                                    return null;
                                }
                            } catch (Throwable th4) {
                                if (n.a()) {
                                    this.c.a("FileManager", "Unknown failure to read file.", th4);
                                }
                                this.c.a("FileManager", th4);
                                this.b.D().a("FileManager", "readFile", th4);
                                if (((Boolean) this.b.a(sj.L0)).booleanValue()) {
                                    a(file, "removeFileAfterReadFail");
                                }
                                g(file);
                                return null;
                            }
                        }
                        try {
                            c(file);
                            fileInputStream = new FileInputStream(file);
                            try {
                                String strA2 = a(fileInputStream);
                                z = strA2 == null;
                                yp.a(fileInputStream, this.b);
                                if (z && ((Boolean) this.b.a(sj.L0)).booleanValue()) {
                                    a(file, "removeFileAfterReadFail");
                                }
                                g(file);
                                return strA2;
                            } catch (FileNotFoundException e5) {
                                e2 = e5;
                                if (n.a()) {
                                    this.c.d("FileManager", "File not found. " + e2);
                                }
                                this.b.D().a("FileManager", "readFileNotFound", e2);
                                yp.a(fileInputStream, this.b);
                                g(file);
                                return null;
                            } catch (IOException e6) {
                                e = e6;
                                if (n.a()) {
                                    this.c.a("FileManager", "Failed to read file: " + file.getName() + e);
                                }
                                this.b.D().a("FileManager", "readFileIO", e);
                                yp.a(fileInputStream, this.b);
                                if (((Boolean) this.b.a(sj.L0)).booleanValue()) {
                                    a(file, "removeFileAfterReadFail");
                                }
                                g(file);
                                return null;
                            } catch (Throwable th5) {
                                th = th5;
                                if (n.a()) {
                                    this.c.a("FileManager", "Unknown failure to read file.", th);
                                }
                                this.b.D().a("FileManager", "readFile", th);
                                yp.a(fileInputStream, this.b);
                                if (((Boolean) this.b.a(sj.L0)).booleanValue()) {
                                    a(file, "removeFileAfterReadFail");
                                }
                                g(file);
                                return null;
                            }
                        } catch (FileNotFoundException e7) {
                            e2 = e7;
                            fileInputStream = null;
                        } catch (IOException e8) {
                            e = e8;
                            fileInputStream = null;
                        } catch (Throwable th6) {
                            th = th6;
                            fileInputStream = null;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        yp.a((Closeable) BooleanValue, this.b);
                        if (z && ((Boolean) this.b.a(sj.L0)).booleanValue()) {
                            a(file, "removeFileAfterReadFail");
                        }
                        g(file);
                        throw th;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    if (z2 && ((Boolean) this.b.a(sj.L0)).booleanValue()) {
                        a(file, "removeFileAfterReadFail");
                    }
                    g(file);
                    throw th;
                }
            } catch (Throwable th9) {
                th = th9;
                z2 = false;
                if (z2) {
                    a(file, "removeFileAfterReadFail");
                }
                g(file);
                throw th;
            }
        } catch (Throwable th10) {
            th = th10;
            z = true;
            yp.a((Closeable) BooleanValue, this.b);
            if (z) {
                a(file, "removeFileAfterReadFail");
            }
            g(file);
            throw th;
        }
    }

    private void c(File file) {
        String absolutePath = file.getAbsolutePath();
        synchronized (this.d) {
            boolean zAdd = this.e.add(absolutePath);
            while (!zAdd) {
                try {
                    this.d.wait();
                    zAdd = this.e.add(absolutePath);
                } catch (InterruptedException e) {
                    if (n.a()) {
                        this.c.a("FileManager", "Lock '" + absolutePath + "' interrupted", e);
                    }
                    throw new RuntimeException(e);
                }
            }
        }
    }

    private boolean d(File file) {
        if (file == null) {
            return false;
        }
        String absolutePath = file.getAbsolutePath();
        synchronized (this.d) {
            if (this.e.contains(absolutePath)) {
                return false;
            }
            c(file);
            return true;
        }
    }

    public void b(Context context) {
        if (this.b.v0()) {
            if (n.a()) {
                this.c.a("FileManager", "Compacting cache...");
            }
            a(a(context), context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(com.applovin.impl.sdk.ad.b bVar, Context context) {
        if (bVar.u0() == null) {
            return;
        }
        f(a(bVar.u0().getLastPathSegment(), context));
    }

    private boolean b(File file) {
        boolean zContains;
        String absolutePath = file.getAbsolutePath();
        synchronized (this.d) {
            zContains = this.e.contains(absolutePath);
        }
        return zContains;
    }

    private File d(Context context) {
        return new File(context.getFilesDir(), "al");
    }

    public boolean b(String str, Context context) {
        return a(a(str, false, context));
    }

    private List c(Context context) {
        File[] fileArrListFiles;
        File fileD = d(context);
        if (fileD.isDirectory() && (fileArrListFiles = fileD.listFiles()) != null) {
            return Arrays.asList(fileArrListFiles);
        }
        return Collections.emptyList();
    }

    public boolean c(String str, Context context) {
        if (this.f) {
            return b(str, context);
        }
        boolean z = false;
        File fileA = a(str, false, context);
        if (!d(fileA)) {
            return false;
        }
        if (fileA.exists() && !fileA.isDirectory()) {
            z = true;
        }
        g(fileA);
        return z;
    }

    public void e(Context context) {
        try {
            a(".nomedia", context);
            File file = new File(d(context), ".nomedia");
            if (a(file)) {
                return;
            }
            if (n.a()) {
                this.c.a("FileManager", "Creating .nomedia file at " + file.getAbsolutePath());
            }
            if (file.createNewFile()) {
                return;
            }
            if (n.a()) {
                this.c.b("FileManager", "Failed to create .nomedia file");
            }
            this.b.D().a(ka.U, "createNoMediaFile");
        } catch (IOException e) {
            if (n.a()) {
                this.c.a("FileManager", "Failed to create .nomedia file", e);
            }
        }
    }

    public String a(Context context, String str, String str2, List list, boolean z, u2 u2Var, int i) {
        return a(context, str, str2, list, z, false, u2Var, i);
    }

    public String a(Context context, String str, String str2, List list, boolean z, boolean z2, u2 u2Var, int i) {
        if (!StringUtils.isValidString(str)) {
            if (n.a()) {
                this.c.a("FileManager", "Nothing to cache, skipping...");
            }
            this.b.D().a(ka.U, "cacheResource");
            return null;
        }
        String strA = yp.a(Uri.parse(str), str2, this.b);
        File fileA = a(strA, context);
        if (!a(fileA, str, list, z, u2Var, i)) {
            return null;
        }
        if (n.a()) {
            this.c.a("FileManager", "Caching succeeded for file " + strA);
        }
        return z2 ? Uri.fromFile(fileA).toString() : strA;
    }

    public boolean a(File file, String str, List list, u2 u2Var, int i) {
        return a(file, str, list, true, u2Var, i);
    }

    private boolean a(File file, String str, List list, boolean z, u2 u2Var) throws Throwable {
        InputStream inputStreamA;
        Boolean bool = (Boolean) this.b.a(sj.X0);
        if (bool.booleanValue()) {
            c(file);
        }
        if (a(file)) {
            if (n.a()) {
                this.c.a("FileManager", "File exists for " + str);
            }
            if (u2Var != null) {
                u2Var.a(file.length());
            }
            if (!bool.booleanValue()) {
                return true;
            }
            g(file);
            return true;
        }
        if (((Boolean) this.b.a(sj.z)).booleanValue()) {
            try {
                InputStream inputStreamA2 = a(str, list, z, u2Var);
                try {
                    boolean zA = a(inputStreamA2, file, bool.booleanValue());
                    if (inputStreamA2 != null) {
                        inputStreamA2.close();
                    }
                    if (bool.booleanValue()) {
                        g(file);
                    }
                    return zA;
                } catch (Throwable th) {
                    if (inputStreamA2 != null) {
                        try {
                            inputStreamA2.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    this.c.a("FileManager", th3);
                    this.b.D().a("FileManager", "loadAndCacheResource", th3);
                } finally {
                    if (bool.booleanValue()) {
                        g(file);
                    }
                }
            }
        }
        try {
            inputStreamA = a(str, list, z, u2Var);
            try {
                boolean zA2 = a(inputStreamA, file, bool.booleanValue());
                if (bool.booleanValue()) {
                    g(file);
                }
                yp.a(inputStreamA, this.b);
                return zA2;
            } catch (Throwable th4) {
                th = th4;
                if (bool.booleanValue()) {
                    g(file);
                }
                yp.a(inputStreamA, this.b);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            inputStreamA = null;
        }
    }

    private boolean a(File file, String str, List list, boolean z, u2 u2Var, int i) {
        HashMap map = new HashMap(1);
        map.put("url", str);
        this.b.D().a(ka.m, (Map) map);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (int i2 = 1; i2 <= i; i2++) {
            if (a(file, str, list, z, u2Var)) {
                a(true, str, i2, jElapsedRealtime);
                return true;
            }
        }
        a(false, str, i, jElapsedRealtime);
        return false;
    }

    public InputStream a(String str, List list, boolean z, u2 u2Var) {
        HttpURLConnection httpURLConnection;
        if (z && !yp.a(str, list)) {
            if (n.a()) {
                this.c.a("FileManager", "Domain is not whitelisted, skipping precache for url: " + str);
            }
            return null;
        }
        if (((Boolean) this.b.a(sj.W2)).booleanValue() && !str.contains("https://")) {
            if (n.a()) {
                this.c.k("FileManager", "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting...");
            }
            str = str.replace("http://", "https://");
        }
        if (n.a()) {
            this.c.a("FileManager", "Loading " + str + "...");
        }
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setConnectTimeout(((Integer) this.b.a(sj.U2)).intValue());
                httpURLConnection.setReadTimeout(((Integer) this.b.a(sj.V2)).intValue());
                httpURLConnection.setDefaultUseCaches(true);
                httpURLConnection.setUseCaches(true);
                httpURLConnection.setAllowUserInteraction(false);
                httpURLConnection.setInstanceFollowRedirects(true);
                int responseCode = httpURLConnection.getResponseCode();
                u2Var.a(responseCode);
                this.b.D().a("loadResource", str, responseCode);
                if (responseCode >= 200 && responseCode < 300) {
                    if (n.a()) {
                        this.c.a("FileManager", "Opened stream to resource " + str);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    if (((Boolean) this.b.a(sj.t3)).booleanValue()) {
                        yp.a(httpURLConnection, this.b);
                    }
                    return inputStream;
                }
                if (((Boolean) this.b.a(sj.t3)).booleanValue()) {
                    yp.a(httpURLConnection, this.b);
                }
                return null;
            } catch (Throwable th) {
                th = th;
                try {
                    if (n.a()) {
                        this.c.a("FileManager", "Error loading " + str, th);
                    }
                    this.b.D().a("FileManager", "loadResource", th, CollectionUtils.hashMap("url", str));
                    u2Var.a(th);
                    return null;
                } finally {
                    if (((Boolean) this.b.a(sj.t3)).booleanValue()) {
                        yp.a(httpURLConnection, this.b);
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
    }

    public File a(String str, Context context) {
        return a(str, true, context);
    }

    private File a(String str, boolean z, Context context) {
        if (!StringUtils.isValidString(str)) {
            if (n.a()) {
                this.c.a("FileManager", "Nothing to look up, skipping...");
            }
            return null;
        }
        if (n.a()) {
            this.c.a("FileManager", "Looking up cached resource: " + str);
        }
        String strReplace = str.contains(y8.h.H0) ? str.replace(UnityAdsConstants.DefaultUrls.AD_ASSET_PATH, "_").replace(".", "_") : str;
        File fileD = d(context);
        File file = new File(fileD, strReplace);
        if (yp.a(sj.N0, this.b)) {
            boolean z2 = file.length() == 0;
            boolean zEquals = str.equals(".nomedia");
            if (file.exists() && z2 && !zEquals) {
                this.b.D().a(ka.U, "removeEmptyCachedResource", (Map) CollectionUtils.hashMap("path", file.getAbsolutePath()));
                f(file);
            }
        }
        if (z) {
            try {
                fileD.mkdirs();
            } catch (Throwable th) {
                if (n.a()) {
                    this.c.a("FileManager", "Unable to make cache directory at " + fileD, th);
                }
                this.b.D().a("FileManager", "createCacheDir", th);
                return null;
            }
        }
        return file;
    }

    public String a(InputStream inputStream) throws IOException {
        if (((Boolean) this.b.a(sj.z)).booleanValue()) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i = inputStream.read(bArr, 0, 8192);
                        if (i >= 0) {
                            byteArrayOutputStream.write(bArr, 0, i);
                        } else {
                            String string = byteArrayOutputStream.toString("UTF-8");
                            byteArrayOutputStream.close();
                            return string;
                        }
                        this.c.a("FileManager", th);
                        this.b.D().a("FileManager", "readInputStreamAsString", th);
                        return null;
                    }
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                this.c.a("FileManager", th3);
                this.b.D().a("FileManager", "readInputStreamAsString", th3);
                return null;
            }
        }
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[8192];
        while (true) {
            int i2 = inputStream.read(bArr2, 0, 8192);
            if (i2 >= 0) {
                try {
                    byteArrayOutputStream2.write(bArr2, 0, i2);
                } catch (Throwable th4) {
                    yp.a(byteArrayOutputStream2, this.b);
                    this.b.D().a("FileManager", "readInputStreamAsString", th4);
                    return null;
                }
            } else {
                return byteArrayOutputStream2.toString("UTF-8");
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00eb */
    /* JADX WARN: Code duplicated, block: B:149:0x01ff A[Catch: all -> 0x0229, TRY_LEAVE, TryCatch #3 {all -> 0x0229, blocks: (B:147:0x01f9, B:149:0x01ff), top: B:181:0x01f9 }] */
    /* JADX WARN: Code duplicated, block: B:153:0x0211 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:154:0x0213  */
    /* JADX WARN: Code duplicated, block: B:155:0x0217  */
    /* JADX WARN: Code duplicated, block: B:157:0x0221  */
    /* JADX WARN: Code duplicated, block: B:215:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(java.io.InputStream r18, java.io.File r19, boolean r20, boolean r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.l.a(java.io.InputStream, java.io.File, boolean, boolean):boolean");
    }

    private void a(boolean z, String str, int i, long j) {
        ka kaVar = z ? ka.n : ka.o;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
        HashMap map = new HashMap(3);
        map.put("details", "Download attempts: " + i);
        map.put("url", str);
        map.put("duration_ms", String.valueOf(jElapsedRealtime));
        this.b.D().a(kaVar, (Map) map);
    }

    public boolean a(InputStream inputStream, File file) {
        return a(inputStream, file, false);
    }

    private boolean a(InputStream inputStream, File file, boolean z) {
        if (file == null) {
            return false;
        }
        if (n.a()) {
            this.c.a("FileManager", "Caching " + file.getAbsolutePath() + "...");
        }
        if (!a(inputStream, file, false, z)) {
            if (n.a()) {
                this.c.b("FileManager", "Unable to cache " + file.getAbsolutePath());
            }
            return false;
        }
        if (!n.a()) {
            return true;
        }
        this.c.a("FileManager", "Caching completed for " + file);
        return true;
    }

    public int a(String str, com.applovin.impl.sdk.ad.b bVar) {
        List listZ = bVar.Z();
        if (bVar.U0() || listZ.contains(str)) {
            return bVar.G();
        }
        return 1;
    }

    private long a(Context context) {
        long jA = a();
        boolean z = jA != -1;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        List listC = this.b.c(sj.G0);
        long length = 0;
        for (File file : c(context)) {
            if (z && !listC.contains(file.getName()) && !b(file) && seconds - TimeUnit.MILLISECONDS.toSeconds(file.lastModified()) > jA) {
                if (n.a()) {
                    this.c.a("FileManager", "File " + file.getName() + " has expired, removing...");
                }
                if (f(file)) {
                    this.b.C().c(ba.j);
                }
            }
            length += file.length();
        }
        return length;
    }

    private void a(long j, Context context) {
        long jIntValue = ((Integer) this.b.a(sj.C0)).intValue();
        if (jIntValue == -1) {
            if (n.a()) {
                this.c.a("FileManager", "Cache has no maximum size set; skipping drop...");
            }
        } else {
            if (a(j) > jIntValue) {
                if (n.a()) {
                    this.c.a("FileManager", "Cache has exceeded maximum size; dropping...");
                }
                Iterator it = c(context).iterator();
                while (it.hasNext()) {
                    f((File) it.next());
                }
                this.b.C().c(ba.k);
                return;
            }
            if (n.a()) {
                this.c.a("FileManager", "Cache is present but under size limit; not dropping...");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, Context context) {
        ArrayList arrayList = new ArrayList(bVar.i());
        CollectionUtils.addObjectIfExists(bVar.u0(), arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            f(a(((Uri) it.next()).getLastPathSegment(), context));
        }
    }

    public void a(File file, String str) {
        if (n.a()) {
            this.c.a("FileManager", "Removing file " + file.getName() + " for source " + str + ".");
        }
        try {
            if (file.delete()) {
                return;
            }
            this.b.D().a(ka.U, str, (Map) CollectionUtils.hashMap("path", file.getAbsolutePath()));
        } catch (Throwable th) {
            if (n.a()) {
                this.c.a("FileManager", "Failed to remove file " + file.getName() + " from filesystem after failed operation.", th);
            }
            this.b.D().a("FileManager", str, th);
        }
    }

    private long a() {
        long jLongValue = ((Long) this.b.a(sj.B0)).longValue();
        if (jLongValue >= 0) {
            return jLongValue;
        }
        return -1L;
    }

    private long a(long j) {
        return j / 1048576;
    }

    public boolean a(File file) {
        if (!yp.a(sj.Q0, this.b)) {
            return (file == null || !file.exists() || file.isDirectory()) ? false : true;
        }
        if (file == null) {
            return false;
        }
        yp.a();
        c(file);
        boolean z = file.exists() && !file.isDirectory();
        g(file);
        return z;
    }
}
