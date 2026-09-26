package com.netease.mpay.widget.rocoofix;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.dodola.rocoo.Hack;
import dalvik.system.DexFile;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public final class RocooFix {
    private static final String ROCOOFIX_CACHE_DIR = "mpay_rocoofix_cache";
    private static final String ROCOOFIX_CACHE_SECONDARY_DIR = "mpay_rocoofix_dexes";
    private static final String ROCOOFIX_DEX_DIR = "mpay_rocoofix";
    private static final String ROCOOFIX_HACK_DEX = "mpay-rocoofix.dex";
    static final String TAG = "MpayDebug.RocooFix";
    private static final Set installedApk = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class V14 {
        private V14() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void install(ClassLoader classLoader, List list, File file) {
            Object obj = RocooUtils.findField(classLoader, "pathList").get(classLoader);
            RocooUtils.expandFieldArray(obj, "dexElements", makeDexElements(obj, new ArrayList(list), file));
        }

        private static Object[] makeDexElements(Object obj, ArrayList arrayList, File file) {
            return (Object[]) RocooUtils.findMethod(obj, "makeDexElements", ArrayList.class, File.class).invoke(obj, arrayList, file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class V19 {
        private V19() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void install(ClassLoader classLoader, List list, File file) {
            IOException[] iOExceptionArr;
            Object obj = RocooUtils.findField(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            RocooUtils.expandFieldArray(obj, "dexElements", makeDexElements(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.w(RocooFix.TAG, "Exception in makeDexElement", (IOException) it.next());
                }
                Field findField = RocooUtils.findField(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) findField.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                findField.set(obj, iOExceptionArr);
            }
        }

        private static Object[] makeDexElements(Object obj, ArrayList arrayList, File file, ArrayList arrayList2) {
            return (Object[]) RocooUtils.findMethod(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class).invoke(obj, arrayList, file, arrayList2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class V23 {
        private V23() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void install(ClassLoader classLoader, List list, File file) {
            Object obj = RocooUtils.findField(classLoader, "pathList").get(classLoader);
            Class<?> componentType = RocooUtils.findField(obj, "dexElements").getType().getComponentType();
            Method findMethod = RocooUtils.findMethod(obj, "loadDexFile", File.class, File.class);
            findMethod.setAccessible(true);
            Object invoke = findMethod.invoke(null, list.get(0), file);
            Constructor<?> constructor = componentType.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
            constructor.setAccessible(true);
            RocooUtils.expandFieldArray(obj, "dexElements", new Object[]{constructor.newInstance(new File(""), false, list.get(0), invoke)});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class V24 {
        private V24() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void install(ClassLoader classLoader, List list, File file) {
            Object obj = RocooUtils.findField(classLoader, "pathList").get(classLoader);
            Field findField = RocooUtils.findField(obj, "dexElements");
            Class<?> componentType = findField.getType().getComponentType();
            Method findMethod = RocooUtils.findMethod(obj, "loadDexFile", File.class, File.class, ClassLoader.class, findField.getType());
            findMethod.setAccessible(true);
            Object invoke = findMethod.invoke(null, list.get(0), file, classLoader, findField.get(obj));
            Constructor<?> constructor = componentType.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
            constructor.setAccessible(true);
            RocooUtils.expandFieldArray(obj, "dexElements", new Object[]{constructor.newInstance(new File(""), false, list.get(0), invoke)});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class V4 {
        private V4() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void install(ClassLoader classLoader, List list) {
            int size = list.size();
            Field findField = RocooUtils.findField(classLoader, "path");
            StringBuilder sb = new StringBuilder((String) findField.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            ListIterator listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                File file = (File) listIterator.next();
                String absolutePath = file.getAbsolutePath();
                sb.append(':').append(absolutePath);
                int previousIndex = listIterator.previousIndex();
                strArr[previousIndex] = absolutePath;
                fileArr[previousIndex] = file;
                zipFileArr[previousIndex] = new ZipFile(file);
                dexFileArr[previousIndex] = DexFile.loadDex(absolutePath, absolutePath + ".dex", 0);
            }
            findField.set(classLoader, sb.toString());
            RocooUtils.expandFieldArray(classLoader, "mPaths", strArr);
            RocooUtils.expandFieldArray(classLoader, "mFiles", fileArr);
            RocooUtils.expandFieldArray(classLoader, "mZips", zipFileArr);
            RocooUtils.expandFieldArray(classLoader, "mDexs", dexFileArr);
        }
    }

    private RocooFix() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static boolean applyPatch(Context context, String str) {
        boolean z = false;
        try {
            ApplicationInfo applicationInfo = getApplicationInfo(context);
            if (applicationInfo != null) {
                synchronized (installedApk) {
                    if (installedApk.contains(str)) {
                        z = true;
                    } else {
                        installedApk.add(str);
                        try {
                            ClassLoader classLoader = context.getClassLoader();
                            if (classLoader == null) {
                                Log.e(TAG, "Context class loader is null. Must be running in test mode. Skip patching.");
                            } else {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new File(str));
                                installDexes(classLoader, getDexDir(context, applicationInfo), arrayList);
                                z = true;
                            }
                        } catch (RuntimeException e) {
                            Log.w(TAG, "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", e);
                        }
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return z;
    }

    public static String copyAsset(Context context, String str, File file) {
        File file2 = new File(file, str);
        if (!file2.exists()) {
            InputStream open = context.getAssets().open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            copyFile(open, fileOutputStream);
            open.close();
            fileOutputStream.close();
        }
        return file2.getAbsolutePath();
    }

    private static void copyFile(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    private static ApplicationInfo getApplicationInfo(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            if (packageManager == null || packageName == null) {
                return null;
            }
            return packageManager.getApplicationInfo(packageName, 128);
        } catch (RuntimeException e) {
            Log.w(TAG, "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e);
            return null;
        }
    }

    private static File getDexDir(Context context, ApplicationInfo applicationInfo) {
        File file = new File(applicationInfo.dataDir, ROCOOFIX_CACHE_DIR);
        try {
            mkdirChecked(file);
        } catch (IOException e) {
            file = new File(context.getFilesDir(), ROCOOFIX_CACHE_DIR);
            mkdirChecked(file);
        }
        File file2 = new File(file, ROCOOFIX_CACHE_SECONDARY_DIR);
        mkdirChecked(file2);
        return file2;
    }

    public static void init(Context context) {
        initPathFromAssets(context, ROCOOFIX_HACK_DEX);
    }

    public static void initPathFromAssets(Context context, String str) {
        File file = new File(context.getFilesDir(), ROCOOFIX_DEX_DIR);
        file.mkdir();
        try {
            String copyAsset = copyAsset(context, str, file);
            if (copyAsset == null || !new File(copyAsset).exists()) {
                return;
            }
            applyPatch(context, copyAsset);
        } catch (IOException e) {
            if (0 == 0 || !new File((String) null).exists()) {
                return;
            }
            applyPatch(context, null);
        } catch (Throwable th) {
            if (0 != 0 && new File((String) null).exists()) {
                applyPatch(context, null);
            }
            throw th;
        }
    }

    private static void installDexes(ClassLoader classLoader, File file, List list) {
        if (list.isEmpty()) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            V24.install(classLoader, list, file);
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            V23.install(classLoader, list, file);
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            V19.install(classLoader, list, file);
        } else if (Build.VERSION.SDK_INT >= 14) {
            V14.install(classLoader, list, file);
        } else {
            V4.install(classLoader, list);
        }
    }

    private static void mkdirChecked(File file) {
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            Log.e(TAG, "Failed to create dir " + file.getPath() + ". Parent file is null.");
        } else {
            Log.e(TAG, "Failed to create dir " + file.getPath() + ". parent file is a dir " + parentFile.isDirectory() + ", a file " + parentFile.isFile() + ", exists " + parentFile.exists() + ", readable " + parentFile.canRead() + ", writable " + parentFile.canWrite());
        }
        throw new IOException("Failed to create directory " + file.getPath());
    }
}
