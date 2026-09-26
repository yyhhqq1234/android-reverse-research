package com.alipay.sdk.tid;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class a extends SQLiteOpenHelper {
    private static final String a = "msp.db";
    private static final int b = 1;
    private WeakReference<Context> c;

    public a(Context context) {
        super(context, a, (SQLiteDatabase.CursorFactory) null, 1);
        this.c = new WeakReference<>(context);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("drop table if exists tb_tid");
        onCreate(sQLiteDatabase);
    }

    public final void a(String str, String str2, String str3, String str4) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (a(writableDatabase, str, str2)) {
                a(writableDatabase, str, str2, str3, str4);
            } else {
                writableDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[]{c(str, str2), com.alipay.sdk.encrypt.b.a(1, str3, com.alipay.sdk.util.a.c(this.c.get())), str4});
                Cursor rawQuery = writableDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
                if (rawQuery.getCount() <= 14) {
                    rawQuery.close();
                } else {
                    int count = rawQuery.getCount() - 14;
                    String[] strArr = new String[count];
                    if (rawQuery.moveToFirst()) {
                        int i = 0;
                        do {
                            strArr[i] = rawQuery.getString(0);
                            i++;
                            if (!rawQuery.moveToNext()) {
                                break;
                            }
                        } while (count > i);
                    }
                    rawQuery.close();
                    for (int i2 = 0; i2 < count; i2++) {
                        if (!TextUtils.isEmpty(strArr[i2])) {
                            a(writableDatabase, strArr[i2]);
                        }
                    }
                }
            }
            if (writableDatabase != null && writableDatabase.isOpen()) {
                writableDatabase.close();
            }
        } catch (Exception e) {
            if (0 != 0 && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
        } catch (Throwable th) {
            if (0 != 0 && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
            throw th;
        }
    }

    private void d(String str, String str2) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = getWritableDatabase();
            a(sQLiteDatabase, str, str2, "", "");
            a(sQLiteDatabase, c(str, str2));
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
        } catch (Exception e) {
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
        } catch (Throwable th) {
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(java.lang.String r8, java.lang.String r9) {
        /*
            r7 = this;
            r0 = 0
            java.lang.String r1 = "select tid from tb_tid where name=?"
            android.database.sqlite.SQLiteDatabase r2 = r7.getReadableDatabase()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5e
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L7b
            r4 = 0
            java.lang.String r5 = c(r8, r9)     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L7b
            r3[r4] = r5     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L7b
            android.database.Cursor r1 = r2.rawQuery(r1, r3)     // Catch: java.lang.Throwable -> L74 java.lang.Exception -> L7b
            boolean r3 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7e
            if (r3 == 0) goto L20
            r3 = 0
            java.lang.String r0 = r1.getString(r3)     // Catch: java.lang.Throwable -> L79 java.lang.Exception -> L7e
        L20:
            if (r1 == 0) goto L25
            r1.close()
        L25:
            if (r2 == 0) goto L82
            boolean r1 = r2.isOpen()
            if (r1 == 0) goto L82
            r2.close()
            r1 = r0
        L31:
            boolean r0 = android.text.TextUtils.isEmpty(r1)
            if (r0 != 0) goto L48
            java.lang.ref.WeakReference<android.content.Context> r0 = r7.c
            java.lang.Object r0 = r0.get()
            android.content.Context r0 = (android.content.Context) r0
            java.lang.String r0 = com.alipay.sdk.util.a.c(r0)
            r2 = 2
            java.lang.String r1 = com.alipay.sdk.encrypt.b.a(r2, r1, r0)
        L48:
            return r1
        L49:
            r1 = move-exception
            r1 = r0
            r2 = r0
        L4c:
            if (r1 == 0) goto L51
            r1.close()
        L51:
            if (r2 == 0) goto L80
            boolean r1 = r2.isOpen()
            if (r1 == 0) goto L80
            r2.close()
            r1 = r0
            goto L31
        L5e:
            r1 = move-exception
            r2 = r0
            r6 = r0
            r0 = r1
            r1 = r6
        L63:
            if (r1 == 0) goto L68
            r1.close()
        L68:
            if (r2 == 0) goto L73
            boolean r1 = r2.isOpen()
            if (r1 == 0) goto L73
            r2.close()
        L73:
            throw r0
        L74:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L63
        L79:
            r0 = move-exception
            goto L63
        L7b:
            r1 = move-exception
            r1 = r0
            goto L4c
        L7e:
            r3 = move-exception
            goto L4c
        L80:
            r1 = r0
            goto L31
        L82:
            r1 = r0
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.sdk.tid.a.a(java.lang.String, java.lang.String):java.lang.String");
    }

    private long e(String str, String str2) {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor = null;
        try {
            sQLiteDatabase = getReadableDatabase();
            try {
                cursor = sQLiteDatabase.rawQuery("select dt from tb_tid where name=?", new String[]{c(str, str2)});
                r0 = cursor.moveToFirst() ? new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).parse(cursor.getString(0)).getTime() : 0L;
                if (cursor != null) {
                    cursor.close();
                }
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.close();
                }
            } catch (Exception e) {
                if (cursor != null) {
                    cursor.close();
                }
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.close();
                }
                return r0;
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            sQLiteDatabase = null;
        } catch (Throwable th2) {
            th = th2;
            sQLiteDatabase = null;
        }
        return r0;
    }

    private List<String> a() {
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase2;
        Cursor cursor2 = null;
        ArrayList arrayList = new ArrayList();
        try {
            sQLiteDatabase = getReadableDatabase();
            try {
                cursor = sQLiteDatabase.rawQuery("select tid from tb_tid", null);
                while (cursor.moveToNext()) {
                    try {
                        String string = cursor.getString(0);
                        if (!TextUtils.isEmpty(string)) {
                            arrayList.add(com.alipay.sdk.encrypt.b.a(2, string, com.alipay.sdk.util.a.c(this.c.get())));
                        }
                    } catch (Exception e) {
                        cursor2 = cursor;
                        sQLiteDatabase2 = sQLiteDatabase;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        if (sQLiteDatabase2 != null && sQLiteDatabase2.isOpen()) {
                            sQLiteDatabase2.close();
                        }
                        return arrayList;
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                            sQLiteDatabase.close();
                        }
                        throw th;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.close();
                }
            } catch (Exception e2) {
                sQLiteDatabase2 = sQLiteDatabase;
            } catch (Throwable th3) {
                cursor = null;
                th = th3;
            }
        } catch (Exception e3) {
            sQLiteDatabase2 = null;
        } catch (Throwable th4) {
            sQLiteDatabase = null;
            th = th4;
            cursor = null;
        }
        return arrayList;
    }

    public final String b(String str, String str2) {
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        Cursor cursor;
        try {
            sQLiteDatabase = getReadableDatabase();
            try {
                cursor = sQLiteDatabase.rawQuery("select key_tid from tb_tid where name=?", new String[]{c(str, str2)});
                try {
                    r0 = cursor.moveToFirst() ? cursor.getString(0) : null;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                } catch (Exception e) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    return r0;
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                cursor = null;
            } catch (Throwable th3) {
                cursor = null;
                th = th3;
            }
        } catch (Exception e3) {
            cursor = null;
            sQLiteDatabase = null;
        } catch (Throwable th4) {
            sQLiteDatabase = null;
            th = th4;
            cursor = null;
        }
        return r0;
    }

    private static boolean a(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        int i;
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("select count(*) from tb_tid where name=?", new String[]{c(str, str2)});
            int i2 = cursor.moveToFirst() ? cursor.getInt(0) : 0;
            if (cursor != null) {
                cursor.close();
                i = i2;
            } else {
                i = i2;
            }
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
                i = 0;
            } else {
                i = 0;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return i > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(String str, String str2) {
        return str + str2;
    }

    private void b(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4) {
        sQLiteDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[]{c(str, str2), com.alipay.sdk.encrypt.b.a(1, str3, com.alipay.sdk.util.a.c(this.c.get())), str4});
        Cursor rawQuery = sQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
        if (rawQuery.getCount() <= 14) {
            rawQuery.close();
            return;
        }
        int count = rawQuery.getCount() - 14;
        String[] strArr = new String[count];
        if (rawQuery.moveToFirst()) {
            int i = 0;
            do {
                strArr[i] = rawQuery.getString(0);
                i++;
                if (!rawQuery.moveToNext()) {
                    break;
                }
            } while (count > i);
        }
        rawQuery.close();
        for (int i2 = 0; i2 < count; i2++) {
            if (!TextUtils.isEmpty(strArr[i2])) {
                a(sQLiteDatabase, strArr[i2]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4) {
        sQLiteDatabase.execSQL("update tb_tid set tid=?, key_tid=?, dt=datetime('now', 'localtime') where name=?", new Object[]{com.alipay.sdk.encrypt.b.a(1, str3, com.alipay.sdk.util.a.c(this.c.get())), str4, c(str, str2)});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            sQLiteDatabase.delete("tb_tid", "name=?", new String[]{str});
        } catch (Exception e) {
        }
    }

    private static void a(SQLiteDatabase sQLiteDatabase) {
        Cursor rawQuery = sQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
        if (rawQuery.getCount() <= 14) {
            rawQuery.close();
            return;
        }
        int count = rawQuery.getCount() - 14;
        String[] strArr = new String[count];
        if (rawQuery.moveToFirst()) {
            int i = 0;
            do {
                strArr[i] = rawQuery.getString(0);
                i++;
                if (!rawQuery.moveToNext()) {
                    break;
                }
            } while (count > i);
        }
        rawQuery.close();
        for (int i2 = 0; i2 < count; i2++) {
            if (!TextUtils.isEmpty(strArr[i2])) {
                a(sQLiteDatabase, strArr[i2]);
            }
        }
    }
}
