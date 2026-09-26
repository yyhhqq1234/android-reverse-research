package com.ta.utdid2.core.persistent;

import com.ta.utdid2.core.persistent.MySharedPreferences;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class TransactionXMLFile {
    private static final Object GLOBAL_COMMIT_LOCK = new Object();
    public static final int MODE_PRIVATE = 0;
    public static final int MODE_WORLD_READABLE = 1;
    public static final int MODE_WORLD_WRITEABLE = 2;
    private File mPreferencesDir;
    private final Object mSync = new Object();
    private HashMap<File, MySharedPreferencesImpl> sSharedPrefs = new HashMap<>();

    public TransactionXMLFile(String str) {
        if (str != null && str.length() > 0) {
            this.mPreferencesDir = new File(str);
            return;
        }
        throw new RuntimeException("Directory can not be empty");
    }

    private File makeFilename(File file, String str) {
        if (str.indexOf(File.separatorChar) < 0) {
            return new File(file, str);
        }
        throw new IllegalArgumentException("File " + str + " contains a path separator");
    }

    private File getPreferencesDir() {
        File file;
        synchronized (this.mSync) {
            file = this.mPreferencesDir;
        }
        return file;
    }

    private File getSharedPrefsFile(String str) {
        return makeFilename(getPreferencesDir(), String.valueOf(str) + ".xml");
    }

    public MySharedPreferences getMySharedPreferences(String str, int i) {
        MySharedPreferencesImpl mySharedPreferencesImpl;
        File sharedPrefsFile = getSharedPrefsFile(str);
        synchronized (GLOBAL_COMMIT_LOCK) {
            mySharedPreferencesImpl = this.sSharedPrefs.get(sharedPrefsFile);
            if (mySharedPreferencesImpl == null || mySharedPreferencesImpl.hasFileChanged()) {
                File makeBackupFile = makeBackupFile(sharedPrefsFile);
                if (makeBackupFile.exists()) {
                    sharedPrefsFile.delete();
                    makeBackupFile.renameTo(sharedPrefsFile);
                }
                if (sharedPrefsFile.exists()) {
                    sharedPrefsFile.canRead();
                }
                HashMap hashMap = null;
                if (sharedPrefsFile.exists() && sharedPrefsFile.canRead()) {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(sharedPrefsFile);
                        hashMap = XmlUtils.readMapXml(fileInputStream);
                        fileInputStream.close();
                    } catch (FileNotFoundException e) {
                        e.printStackTrace();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    } catch (XmlPullParserException e3) {
                        try {
                            FileInputStream fileInputStream2 = new FileInputStream(sharedPrefsFile);
                            byte[] bArr = new byte[fileInputStream2.available()];
                            fileInputStream2.read(bArr);
                            new String(bArr, 0, bArr.length, "UTF-8");
                        } catch (FileNotFoundException e4) {
                            e4.printStackTrace();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                }
                synchronized (GLOBAL_COMMIT_LOCK) {
                    if (mySharedPreferencesImpl != null) {
                        mySharedPreferencesImpl.replace(hashMap);
                    } else {
                        mySharedPreferencesImpl = this.sSharedPrefs.get(sharedPrefsFile);
                        if (mySharedPreferencesImpl == null) {
                            mySharedPreferencesImpl = new MySharedPreferencesImpl(sharedPrefsFile, i, hashMap);
                            this.sSharedPrefs.put(sharedPrefsFile, mySharedPreferencesImpl);
                        }
                    }
                }
            }
        }
        return mySharedPreferencesImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File makeBackupFile(File file) {
        return new File(String.valueOf(file.getPath()) + ".bak");
    }

    /* loaded from: classes.dex */
    private static final class MySharedPreferencesImpl implements MySharedPreferences {
        private static final Object mContent = new Object();
        private boolean hasChange = false;
        private final File mBackupFile;
        private final File mFile;
        private WeakHashMap<MySharedPreferences.OnSharedPreferenceChangeListener, Object> mListeners;
        private Map mMap;
        private final int mMode;

        MySharedPreferencesImpl(File file, int i, Map map) {
            this.mFile = file;
            this.mBackupFile = TransactionXMLFile.makeBackupFile(file);
            this.mMode = i;
            this.mMap = map == null ? new HashMap() : map;
            this.mListeners = new WeakHashMap<>();
        }

        @Override // com.ta.utdid2.core.persistent.MySharedPreferences
        public final boolean checkFile() {
            return this.mFile != null && new File(this.mFile.getAbsolutePath()).exists();
        }

        public final void setHasChange(boolean z) {
            synchronized (this) {
                this.hasChange = z;
            }
        }

        public final boolean hasFileChanged() {
            boolean z;
            synchronized (this) {
                z = this.hasChange;
            }
            return z;
        }

        public final void replace(Map map) {
            if (map != null) {
                synchronized (this) {
                    this.mMap = map;
                }
            }
        }

        @Override // com.ta.utdid2.core.persistent.MySharedPreferences
        public final void registerOnSharedPreferenceChangeListener(MySharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
            synchronized (this) {
                this.mListeners.put(onSharedPreferenceChangeListener, mContent);
            }
        }

        @Override // com.ta.utdid2.core.persistent.MySharedPreferences
        public final void unregisterOnSharedPreferenceChangeListener(MySharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
            synchronized (this) {
                this.mListeners.remove(onSharedPreferenceChangeListener);
            }
        }

        @Override // com.ta.utdid2.core.persistent.MySharedPreferences
        public final Map<String, ?> getAll() {
            HashMap hashMap;
            synchronized (this) {
                hashMap = new HashMap(this.mMap);
            }
            return hashMap;
        }

        @Override // com.ta.utdid2.core.persistent.MySharedPreferences
        public final String getString(String str, String str2) {
            String str3;
            synchronized (this) {
                str3 = (String) this.mMap.get(str);
                if (str3 == null) {
                    str3 = str2;
                }
            }
            return str3;
        }

        @Override // com.ta.utdid2.core.persistent.MySharedPreferences
        public final int getInt(String str, int i) {
            synchronized (this) {
                Integer num = (Integer) this.mMap.get(str);
                if (num != null) {
                    i = num.intValue();
                }
            }
            return i;
        }

        @Override // com.ta.utdid2.core.persistent.MySharedPreferences
        public final long getLong(String str, long j) {
            synchronized (this) {
                Long l = (Long) this.mMap.get(str);
                if (l != null) {
                    j = l.longValue();
                }
            }
            return j;
        }

        @Override // com.ta.utdid2.core.persistent.MySharedPreferences
        public final float getFloat(String str, float f) {
            synchronized (this) {
                Float f2 = (Float) this.mMap.get(str);
                if (f2 != null) {
                    f = f2.floatValue();
                }
            }
            return f;
        }

        @Override // com.ta.utdid2.core.persistent.MySharedPreferences
        public final boolean getBoolean(String str, boolean z) {
            synchronized (this) {
                Boolean bool = (Boolean) this.mMap.get(str);
                if (bool != null) {
                    z = bool.booleanValue();
                }
            }
            return z;
        }

        @Override // com.ta.utdid2.core.persistent.MySharedPreferences
        public final boolean contains(String str) {
            boolean containsKey;
            synchronized (this) {
                containsKey = this.mMap.containsKey(str);
            }
            return containsKey;
        }

        /* loaded from: classes.dex */
        public final class EditorImpl implements MySharedPreferences.MyEditor {
            private final Map<String, Object> mModified = new HashMap();
            private boolean mClear = false;

            public EditorImpl() {
            }

            @Override // com.ta.utdid2.core.persistent.MySharedPreferences.MyEditor
            public final MySharedPreferences.MyEditor putString(String str, String str2) {
                synchronized (this) {
                    this.mModified.put(str, str2);
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.MySharedPreferences.MyEditor
            public final MySharedPreferences.MyEditor putInt(String str, int i) {
                synchronized (this) {
                    this.mModified.put(str, Integer.valueOf(i));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.MySharedPreferences.MyEditor
            public final MySharedPreferences.MyEditor putLong(String str, long j) {
                synchronized (this) {
                    this.mModified.put(str, Long.valueOf(j));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.MySharedPreferences.MyEditor
            public final MySharedPreferences.MyEditor putFloat(String str, float f) {
                synchronized (this) {
                    this.mModified.put(str, Float.valueOf(f));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.MySharedPreferences.MyEditor
            public final MySharedPreferences.MyEditor putBoolean(String str, boolean z) {
                synchronized (this) {
                    this.mModified.put(str, Boolean.valueOf(z));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.MySharedPreferences.MyEditor
            public final MySharedPreferences.MyEditor remove(String str) {
                synchronized (this) {
                    this.mModified.put(str, this);
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.MySharedPreferences.MyEditor
            public final MySharedPreferences.MyEditor clear() {
                synchronized (this) {
                    this.mClear = true;
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.MySharedPreferences.MyEditor
            public final boolean commit() {
                boolean z;
                HashSet<MySharedPreferences.OnSharedPreferenceChangeListener> hashSet;
                ArrayList arrayList;
                boolean writeFileLocked;
                synchronized (TransactionXMLFile.GLOBAL_COMMIT_LOCK) {
                    z = MySharedPreferencesImpl.this.mListeners.size() > 0;
                    if (z) {
                        ArrayList arrayList2 = new ArrayList();
                        hashSet = new HashSet(MySharedPreferencesImpl.this.mListeners.keySet());
                        arrayList = arrayList2;
                    } else {
                        hashSet = null;
                        arrayList = null;
                    }
                    synchronized (this) {
                        if (this.mClear) {
                            MySharedPreferencesImpl.this.mMap.clear();
                            this.mClear = false;
                        }
                        for (Map.Entry<String, Object> entry : this.mModified.entrySet()) {
                            String key = entry.getKey();
                            Object value = entry.getValue();
                            if (value == this) {
                                MySharedPreferencesImpl.this.mMap.remove(key);
                            } else {
                                MySharedPreferencesImpl.this.mMap.put(key, value);
                            }
                            if (z) {
                                arrayList.add(key);
                            }
                        }
                        this.mModified.clear();
                    }
                    writeFileLocked = MySharedPreferencesImpl.this.writeFileLocked();
                    if (writeFileLocked) {
                        MySharedPreferencesImpl.this.setHasChange(true);
                    }
                }
                if (z) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        String str = (String) arrayList.get(size);
                        for (MySharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener : hashSet) {
                            if (onSharedPreferenceChangeListener != null) {
                                onSharedPreferenceChangeListener.onSharedPreferenceChanged(MySharedPreferencesImpl.this, str);
                            }
                        }
                    }
                }
                return writeFileLocked;
            }
        }

        @Override // com.ta.utdid2.core.persistent.MySharedPreferences
        public final MySharedPreferences.MyEditor edit() {
            return new EditorImpl();
        }

        private FileOutputStream createFileOutputStream(File file) {
            try {
                return new FileOutputStream(file);
            } catch (FileNotFoundException e) {
                if (!file.getParentFile().mkdir()) {
                    return null;
                }
                try {
                    return new FileOutputStream(file);
                } catch (FileNotFoundException e2) {
                    return null;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean writeFileLocked() {
            if (this.mFile.exists()) {
                if (!this.mBackupFile.exists()) {
                    if (!this.mFile.renameTo(this.mBackupFile)) {
                        return false;
                    }
                } else {
                    this.mFile.delete();
                }
            }
            try {
                FileOutputStream createFileOutputStream = createFileOutputStream(this.mFile);
                if (createFileOutputStream == null) {
                    return false;
                }
                XmlUtils.writeMapXml(this.mMap, createFileOutputStream);
                createFileOutputStream.close();
                this.mBackupFile.delete();
                return true;
            } catch (IOException | XmlPullParserException e) {
                if (!this.mFile.exists()) {
                    return false;
                }
                this.mFile.delete();
                return false;
            }
        }
    }
}
