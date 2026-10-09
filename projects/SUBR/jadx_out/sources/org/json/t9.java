package org.json;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import android.provider.BaseColumns;
import android.util.Log;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class t9 extends SQLiteOpenHelper implements ue {
    private static t9 f = null;
    private static final String g = " TEXT";
    private static final String h = " INTEGER";
    private static final String i = ",";
    private final u9 a;
    private final int b;
    private final int c;
    private final String d;
    private final String e;

    static abstract class a implements BaseColumns {
        public static final String a = "events";
        public static final int b = 4;
        public static final String c = "eventid";
        public static final String d = "timestamp";
        public static final String e = "type";
        public static final String f = "data";

        a() {
        }
    }

    public t9(Context context, String str, int i2) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i2);
        this.a = new u9();
        this.b = 4;
        this.c = CommonGatewayClient.CODE_400;
        this.d = "DROP TABLE IF EXISTS events";
        this.e = "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )";
    }

    private ContentValues a(ob obVar, String str) {
        if (obVar == null) {
            return null;
        }
        ContentValues contentValues = new ContentValues(4);
        contentValues.put("eventid", Integer.valueOf(obVar.c()));
        contentValues.put("timestamp", Long.valueOf(obVar.d()));
        contentValues.put("type", str);
        contentValues.put("data", obVar.a());
        return contentValues;
    }

    private synchronized SQLiteDatabase a(boolean z) throws Throwable {
        int i2 = 0;
        while (true) {
            try {
                if (z) {
                    return this.a.a(true, this);
                }
                return this.a.a(false, this);
            } catch (Throwable th) {
                l9.d().a(th);
                i2++;
                if (i2 >= 4) {
                    throw th;
                }
                SystemClock.sleep(i2 * CommonGatewayClient.CODE_400);
            }
        }
    }

    public static synchronized t9 a(Context context, String str, int i2) {
        if (f == null) {
            f = new t9(context, str, i2);
        }
        return f;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0099 A[Catch: all -> 0x00b6, PHI: r11
  0x0099: PHI (r11v2 android.database.sqlite.SQLiteDatabase) = (r11v1 android.database.sqlite.SQLiteDatabase), (r11v3 android.database.sqlite.SQLiteDatabase) binds: [B:39:0x0097, B:26:0x0071] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:22:0x0064, B:24:0x006a, B:25:0x006d, B:40:0x0099, B:34:0x0088, B:36:0x008e, B:38:0x0093, B:45:0x00a1, B:47:0x00a7, B:49:0x00ac, B:51:0x00b2, B:52:0x00b5, B:32:0x0078), top: B:60:0x0001, inners: #3 }] */
    @Override // org.json.ue
    public synchronized ArrayList<ob> a(String str) {
        ArrayList<ob> arrayList;
        SQLiteDatabase sQLiteDatabaseA;
        arrayList = new ArrayList<>();
        Cursor cursorQuery = null;
        try {
            sQLiteDatabaseA = a(false);
            try {
                cursorQuery = sQLiteDatabaseA.query("events", null, "type = ?", new String[]{str}, null, null, "timestamp ASC");
                if (cursorQuery.getCount() > 0) {
                    cursorQuery.moveToFirst();
                    while (!cursorQuery.isAfterLast()) {
                        int columnIndex = cursorQuery.getColumnIndex("eventid");
                        if (columnIndex >= 0) {
                            int i2 = cursorQuery.getInt(columnIndex);
                            int columnIndex2 = cursorQuery.getColumnIndex("timestamp");
                            if (columnIndex2 >= 0) {
                                long j = cursorQuery.getLong(columnIndex2);
                                int columnIndex3 = cursorQuery.getColumnIndex("data");
                                if (columnIndex3 >= 0) {
                                    arrayList.add(new ob(i2, j, cursorQuery.getString(columnIndex3)));
                                    cursorQuery.moveToNext();
                                }
                            }
                        }
                    }
                    cursorQuery.close();
                }
                if (!cursorQuery.isClosed()) {
                    cursorQuery.close();
                }
                if (sQLiteDatabaseA.isOpen()) {
                    sQLiteDatabaseA.close();
                }
            } catch (Throwable th) {
                th = th;
                try {
                    l9.d().a(th);
                    Log.e("IronSource", "Exception while loading events: ", th);
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                        cursorQuery.close();
                    }
                    if (sQLiteDatabaseA != null && sQLiteDatabaseA.isOpen()) {
                        sQLiteDatabaseA.close();
                    }
                } catch (Throwable th2) {
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                        cursorQuery.close();
                    }
                    if (sQLiteDatabaseA != null && sQLiteDatabaseA.isOpen()) {
                        sQLiteDatabaseA.close();
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabaseA = null;
        }
        return arrayList;
    }

    @Override // org.json.ue
    public synchronized void a(List<ob> list, String str) {
        if (list != null) {
            if (!list.isEmpty()) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    SQLiteDatabase sQLiteDatabaseA = a(true);
                    try {
                        Iterator<ob> it = list.iterator();
                        while (it.hasNext()) {
                            ContentValues contentValuesA = a(it.next(), str);
                            if (sQLiteDatabaseA != null && contentValuesA != null) {
                                sQLiteDatabaseA.insert("events", null, contentValuesA);
                            }
                        }
                        if (sQLiteDatabaseA != null && sQLiteDatabaseA.isOpen()) {
                            sQLiteDatabaseA.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        sQLiteDatabase = sQLiteDatabaseA;
                        try {
                            l9.d().a(th);
                            Log.e("IronSource", "Exception while saving events: ", th);
                            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                                sQLiteDatabaseA = sQLiteDatabase;
                            }
                        } catch (Throwable th2) {
                            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                                sQLiteDatabase.close();
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0033 A[Catch: all -> 0x0045, PHI: r5
  0x0033: PHI (r5v4 android.database.sqlite.SQLiteDatabase) = (r5v3 android.database.sqlite.SQLiteDatabase), (r5v5 android.database.sqlite.SQLiteDatabase) binds: [B:16:0x0031, B:7:0x0016] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:6:0x0012, B:17:0x0033, B:15:0x002d, B:22:0x003b, B:24:0x0041, B:25:0x0044, B:13:0x001d), top: B:29:0x0001, inners: #1 }] */
    @Override // org.json.ue
    public synchronized void b(String str) {
        SQLiteDatabase sQLiteDatabaseA;
        String[] strArr = {str};
        try {
            sQLiteDatabaseA = a(true);
            try {
                sQLiteDatabaseA.delete("events", "type = ?", strArr);
                if (sQLiteDatabaseA.isOpen()) {
                    sQLiteDatabaseA.close();
                }
            } catch (Throwable th) {
                th = th;
                try {
                    l9.d().a(th);
                    Log.e("IronSource", "Exception while clearing events: ", th);
                    if (sQLiteDatabaseA != null && sQLiteDatabaseA.isOpen()) {
                        sQLiteDatabaseA.close();
                    }
                } catch (Throwable th2) {
                    if (sQLiteDatabaseA != null && sQLiteDatabaseA.isOpen()) {
                        sQLiteDatabaseA.close();
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabaseA = null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS events");
        onCreate(sQLiteDatabase);
    }
}
