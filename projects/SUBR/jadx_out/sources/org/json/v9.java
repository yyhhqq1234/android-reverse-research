package org.json;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class v9 extends SQLiteOpenHelper {
    private static u9 a = new u9();

    public v9(Context context) {
        super(context, "reports", (SQLiteDatabase.CursorFactory) null, 1);
    }

    public static Cursor a(int i) throws Throwable {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase sQLiteDatabaseA = a.a(new v9(l9.d().a()));
            try {
                Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT * FROM REPORTSWHERE id= " + i + ";", null);
                sQLiteDatabaseA.close();
                return cursorRawQuery;
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = sQLiteDatabaseA;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void a() {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            sQLiteDatabaseA = a.a(true, new v9(l9.d().a()));
            sQLiteDatabaseA.execSQL("DELETE FROM REPORTS WHERE id >= 0;");
            sQLiteDatabaseA.close();
        } catch (Throwable th) {
            if (sQLiteDatabaseA != null) {
                sQLiteDatabaseA.close();
            }
            throw th;
        }
    }

    public static void a(ac acVar) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase sQLiteDatabaseA = a.a(true, new v9(l9.d().a()));
            try {
                sQLiteDatabaseA.beginTransaction();
                ContentValues contentValues = new ContentValues();
                String strE = acVar.e();
                String strB = acVar.b();
                String strD = acVar.d();
                contentValues.put("stack_trace", strE);
                contentValues.put("crash_date", strB);
                contentValues.put("crashType", strD);
                sQLiteDatabaseA.insert("REPORTS", null, contentValues);
                sQLiteDatabaseA.setTransactionSuccessful();
                sQLiteDatabaseA.endTransaction();
                sQLiteDatabaseA.close();
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = sQLiteDatabaseA;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.endTransaction();
                    sQLiteDatabase.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static ac b(int i) throws Throwable {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase sQLiteDatabaseA = a.a(new v9(l9.d().a()));
            try {
                Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT * FROM REPORTSWHERE id= " + i + ";", null);
                int i2 = cursorRawQuery.getInt(0);
                String string = cursorRawQuery.getString(1);
                String string2 = cursorRawQuery.getString(2);
                String string3 = cursorRawQuery.getString(3);
                cursorRawQuery.close();
                ac acVar = new ac(i2, string, string2, string3);
                sQLiteDatabaseA.close();
                return acVar;
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = sQLiteDatabaseA;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static List<ac> b() {
        v9 v9Var = new v9(l9.d().a());
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase sQLiteDatabaseA = a.a(v9Var);
            try {
                Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT * FROM REPORTS ;", null);
                if (cursorRawQuery.moveToFirst()) {
                    do {
                        arrayList.add(new ac(cursorRawQuery.getInt(0), cursorRawQuery.getString(1), cursorRawQuery.getString(2), cursorRawQuery.getString(3)));
                    } while (cursorRawQuery.moveToNext());
                }
                cursorRawQuery.close();
                sQLiteDatabaseA.close();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = sQLiteDatabaseA;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Cursor c() throws Throwable {
        v9 v9Var = new v9(l9.d().a());
        new ArrayList();
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase sQLiteDatabaseA = a.a(v9Var);
            try {
                Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT * FROM REPORTS;", null);
                sQLiteDatabaseA.close();
                return cursorRawQuery;
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = sQLiteDatabaseA;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS REPORTS(id INTEGER PRIMARY KEY AUTOINCREMENT , stack_trace TEXT NOT NULL, crash_date TEXT NOT NULL,crashType TEXT NOT NULL );");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
