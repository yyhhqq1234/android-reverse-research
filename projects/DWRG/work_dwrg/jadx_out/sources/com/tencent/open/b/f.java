package com.tencent.open.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.List;

/* compiled from: ProGuard */
/* loaded from: classes.dex */
public class f extends SQLiteOpenHelper {
    protected static final String[] a = {"key"};
    protected static f b;

    public static synchronized f a() {
        f fVar;
        synchronized (f.class) {
            if (b == null) {
                b = new f(com.tencent.open.utils.d.a());
            }
            fVar = b;
        }
        return fVar;
    }

    public f(Context context) {
        super(context, "sdk_report.db", (SQLiteDatabase.CursorFactory) null, 2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS via_cgi_report( _id INTEGER PRIMARY KEY,key TEXT,type TEXT,blob BLOB);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS via_cgi_report");
        onCreate(sQLiteDatabase);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x00bc A[Catch: all -> 0x00ab, TRY_LEAVE, TryCatch #9 {, blocks: (B:4:0x0002, B:10:0x0014, B:18:0x0069, B:24:0x006e, B:21:0x0073, B:27:0x00af, B:89:0x009d, B:94:0x00a2, B:92:0x00a7, B:97:0x00b4, B:102:0x00bc, B:109:0x00c1, B:105:0x00c6, B:106:0x00c9, B:112:0x00cb), top: B:3:0x0002, inners: #3, #10, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00c6 A[Catch: all -> 0x00ab, TRY_ENTER, TryCatch #9 {, blocks: (B:4:0x0002, B:10:0x0014, B:18:0x0069, B:24:0x006e, B:21:0x0073, B:27:0x00af, B:89:0x009d, B:94:0x00a2, B:92:0x00a7, B:97:0x00b4, B:102:0x00bc, B:109:0x00c1, B:105:0x00c6, B:106:0x00c9, B:112:0x00cb), top: B:3:0x0002, inners: #3, #10, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:107:? A[Catch: all -> 0x00ab, SYNTHETIC, TryCatch #9 {, blocks: (B:4:0x0002, B:10:0x0014, B:18:0x0069, B:24:0x006e, B:21:0x0073, B:27:0x00af, B:89:0x009d, B:94:0x00a2, B:92:0x00a7, B:97:0x00b4, B:102:0x00bc, B:109:0x00c1, B:105:0x00c6, B:106:0x00c9, B:112:0x00cb), top: B:3:0x0002, inners: #3, #10, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x005e A[Catch: Exception -> 0x0092, all -> 0x00d9, TRY_ENTER, TryCatch #17 {Exception -> 0x0092, all -> 0x00d9, blocks: (B:29:0x0031, B:31:0x0037, B:32:0x003a, B:49:0x0056, B:39:0x0059, B:41:0x005e, B:42:0x0061, B:76:0x008b, B:69:0x008e, B:70:0x0091, B:57:0x007c, B:61:0x007f), top: B:28:0x0031 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.util.List<java.io.Serializable> a(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.b.f.a(java.lang.String):java.util.List");
    }

    public synchronized void a(String str, List<Serializable> list) {
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2 = null;
        synchronized (this) {
            int size = list.size();
            if (size != 0) {
                int i = size <= 20 ? size : 20;
                if (!TextUtils.isEmpty(str)) {
                    b(str);
                    SQLiteDatabase writableDatabase = getWritableDatabase();
                    if (writableDatabase != null) {
                        try {
                            writableDatabase.beginTransaction();
                            try {
                                ContentValues contentValues = new ContentValues();
                                for (int i2 = 0; i2 < i; i2++) {
                                    Serializable serializable = list.get(i2);
                                    if (serializable != null) {
                                        contentValues.put("type", str);
                                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
                                        try {
                                            ObjectOutputStream objectOutputStream3 = new ObjectOutputStream(byteArrayOutputStream);
                                            try {
                                                objectOutputStream3.writeObject(serializable);
                                                if (objectOutputStream3 != null) {
                                                    try {
                                                        objectOutputStream3.close();
                                                    } catch (IOException e) {
                                                    }
                                                }
                                                try {
                                                    byteArrayOutputStream.close();
                                                } catch (IOException e2) {
                                                }
                                            } catch (IOException e3) {
                                                objectOutputStream = objectOutputStream3;
                                                if (objectOutputStream != null) {
                                                    try {
                                                        objectOutputStream.close();
                                                    } catch (IOException e4) {
                                                    }
                                                }
                                                try {
                                                    byteArrayOutputStream.close();
                                                } catch (IOException e5) {
                                                }
                                                contentValues.put("blob", byteArrayOutputStream.toByteArray());
                                                writableDatabase.insert("via_cgi_report", null, contentValues);
                                                contentValues.clear();
                                            } catch (Throwable th) {
                                                th = th;
                                                objectOutputStream2 = objectOutputStream3;
                                                if (objectOutputStream2 != null) {
                                                    try {
                                                        objectOutputStream2.close();
                                                    } catch (IOException e6) {
                                                    }
                                                }
                                                try {
                                                    byteArrayOutputStream.close();
                                                    throw th;
                                                } catch (IOException e7) {
                                                    throw th;
                                                }
                                            }
                                        } catch (IOException e8) {
                                            objectOutputStream = null;
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                        contentValues.put("blob", byteArrayOutputStream.toByteArray());
                                        writableDatabase.insert("via_cgi_report", null, contentValues);
                                    }
                                    contentValues.clear();
                                }
                                writableDatabase.setTransactionSuccessful();
                                writableDatabase.endTransaction();
                                if (writableDatabase != null) {
                                    writableDatabase.close();
                                }
                            } catch (Exception e9) {
                                com.tencent.open.a.f.e("openSDK_LOG.ReportDatabaseHelper", "saveReportItemToDB has exception.");
                                writableDatabase.endTransaction();
                                if (writableDatabase != null) {
                                    writableDatabase.close();
                                }
                            }
                        } catch (Throwable th3) {
                            writableDatabase.endTransaction();
                            if (writableDatabase != null) {
                                writableDatabase.close();
                            }
                            throw th3;
                        }
                    }
                }
            }
        }
    }

    public synchronized void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                if (writableDatabase != null) {
                    try {
                        writableDatabase.delete("via_cgi_report", "type = ?", new String[]{str});
                    } catch (Exception e) {
                        com.tencent.open.a.f.b("openSDK_LOG.ReportDatabaseHelper", "clearReportItem has exception.", e);
                        if (writableDatabase != null) {
                            writableDatabase.close();
                        }
                    }
                }
            } finally {
                if (writableDatabase != null) {
                    writableDatabase.close();
                }
            }
        }
    }
}
