package com.netease.mpay.skin;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import com.dodola.rocoo.Hack;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class g {
    private String a;
    private a b;

    /* loaded from: classes.dex */
    public class a {
        public String a;
        public String b;
        public AssetManager c;
        public Resources d;
        public DexClassLoader e;

        public a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public g(Context context, String str) {
        this.a = str;
        this.b = new a();
        try {
            a(context);
        } catch (IOException e) {
            this.b = null;
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private AssetManager a(Context context, String str) {
        if (str == null) {
            return context.getAssets();
        }
        try {
            AssetManager assetManager = (AssetManager) AssetManager.class.newInstance();
            assetManager.getClass().getMethod("addAssetPath", String.class).invoke(assetManager, str);
            return assetManager;
        } catch (Exception e) {
            e.printStackTrace();
            return context.getAssets();
        }
    }

    private Resources a(Context context, AssetManager assetManager) {
        Resources resources = context.getResources();
        return new Resources(assetManager, resources.getDisplayMetrics(), resources.getConfiguration());
    }

    private void a(Context context, String str, String str2) {
        if (str == null) {
            throw new IOException("file path is null");
        }
        InputStream open = context.getAssets().open(str2);
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        byte[] bArr = new byte[1024];
        for (int read = open.read(bArr); read > 0; read = open.read(bArr)) {
            fileOutputStream.write(bArr, 0, read);
        }
        fileOutputStream.flush();
        open.close();
        fileOutputStream.close();
    }

    public a a() {
        return this.b;
    }

    public void a(Context context) {
        String str;
        DexClassLoader dexClassLoader = null;
        File file = new File(this.a);
        String name = file.getName();
        File dir = context.getDir("skin", 0);
        String str2 = dir.getPath() + File.separator + name;
        try {
            if (file.getParent() == null) {
                a(context, str2, this.a);
                str = str2;
            } else {
                if (!file.exists()) {
                    throw new IOException("file not exist!!");
                }
                str = this.a;
            }
            try {
                PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 1);
                DexClassLoader dexClassLoader2 = new DexClassLoader(str, dir.getAbsolutePath(), null, context.getClassLoader());
                try {
                    AssetManager a2 = a(context, str);
                    Resources a3 = a(context, a2);
                    this.b.c = a2;
                    this.b.d = a3;
                    this.b.a = packageArchiveInfo.packageName;
                    this.b.b = str;
                    this.b.e = dexClassLoader2;
                } catch (IOException e) {
                    dexClassLoader = dexClassLoader2;
                    str2 = str;
                    this.b.c = context.getAssets();
                    this.b.d = context.getResources();
                    this.b.a = context.getPackageName();
                    this.b.b = str2;
                    this.b.e = dexClassLoader;
                }
            } catch (IOException e2) {
                str2 = str;
            }
        } catch (IOException e3) {
        }
    }
}
