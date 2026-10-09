package com.yasirkula.unity;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class NativeFilePickerSAFEntry {
    private static final String TAG = "DocumentFile";
    private Context mContext;
    private Uri mUri;

    public static NativeFilePickerSAFEntry fromTreeUri(Context context, Uri uri) {
        Uri uriBuildDocumentUriUsingTree = DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri));
        if (uriBuildDocumentUriUsingTree == null) {
            return null;
        }
        return new NativeFilePickerSAFEntry(context, uriBuildDocumentUriUsingTree);
    }

    public NativeFilePickerSAFEntry(Context context, Uri uri) {
        this.mContext = context;
        this.mUri = uri;
    }

    public NativeFilePickerSAFEntry createFile(String mimeType, String displayName) {
        try {
            Uri uriCreateDocument = DocumentsContract.createDocument(this.mContext.getContentResolver(), this.mUri, mimeType, displayName);
            if (uriCreateDocument != null) {
                return new NativeFilePickerSAFEntry(this.mContext, uriCreateDocument);
            }
            return null;
        } catch (Exception e) {
            Log.e("Unity", "Exception:", e);
            return null;
        }
    }

    public NativeFilePickerSAFEntry createDirectory(String displayName) {
        try {
            Uri uriCreateDocument = DocumentsContract.createDocument(this.mContext.getContentResolver(), this.mUri, "vnd.android.document/directory", displayName);
            if (uriCreateDocument != null) {
                return new NativeFilePickerSAFEntry(this.mContext, uriCreateDocument);
            }
            return null;
        } catch (Exception e) {
            Log.e("Unity", "Exception:", e);
            return null;
        }
    }

    public Uri getUri() {
        return this.mUri;
    }

    public String getName() {
        return queryForString("_display_name", null);
    }

    public String getType() {
        String rawType = getRawType();
        if ("vnd.android.document/directory".equals(rawType)) {
            return null;
        }
        return rawType;
    }

    public boolean isDirectory() {
        return "vnd.android.document/directory".equals(getRawType());
    }

    public boolean isFile() {
        String rawType = getRawType();
        return ("vnd.android.document/directory".equals(rawType) || TextUtils.isEmpty(rawType)) ? false : true;
    }

    public long lastModified() {
        return queryForLong("last_modified", 0L);
    }

    public long length() {
        return queryForLong("_size", 0L);
    }

    public boolean canRead() {
        return this.mContext.checkCallingOrSelfUriPermission(this.mUri, 1) == 0 && !TextUtils.isEmpty(getRawType());
    }

    public boolean canWrite() {
        if (this.mContext.checkCallingOrSelfUriPermission(this.mUri, 2) != 0) {
            return false;
        }
        String rawType = getRawType();
        int iQueryForInt = queryForInt("flags", 0);
        if (TextUtils.isEmpty(rawType)) {
            return false;
        }
        if ((iQueryForInt & 4) != 0) {
            return true;
        }
        if (!"vnd.android.document/directory".equals(rawType) || (iQueryForInt & 8) == 0) {
            return (TextUtils.isEmpty(rawType) || (iQueryForInt & 2) == 0) ? false : true;
        }
        return true;
    }

    public boolean delete() {
        try {
            return DocumentsContract.deleteDocument(this.mContext.getContentResolver(), this.mUri);
        } catch (Exception e) {
            Log.e("Unity", "Exception:", e);
            return false;
        }
    }

    public boolean exists() {
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.mContext.getContentResolver().query(this.mUri, new String[]{"document_id"}, null, null, null);
            return cursorQuery.getCount() > 0;
        } catch (Exception e) {
            Log.w(TAG, "Failed query: " + e);
            return false;
        } finally {
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception e2) {
                    Log.e(TAG, "Exception:", e2);
                }
            }
        }
    }

    public ArrayList<NativeFilePickerSAFEntry> listFiles() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        Uri uri = this.mUri;
        Uri uriBuildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        ArrayList<NativeFilePickerSAFEntry> arrayList = new ArrayList<>();
        Cursor cursorQuery = null;
        try {
            try {
                try {
                    cursorQuery = contentResolver.query(uriBuildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(new NativeFilePickerSAFEntry(this.mContext, DocumentsContract.buildDocumentUriUsingTree(this.mUri, cursorQuery.getString(0))));
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Exception e) {
                    Log.w("Unity", "Failed query: " + e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            } catch (Exception e2) {
                Log.e(TAG, "Exception:", e2);
            }
            return arrayList;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception e3) {
                    Log.e(TAG, "Exception:", e3);
                }
            }
            throw th;
        }
    }

    public String renameTo(String displayName) {
        try {
            Uri uriRenameDocument = DocumentsContract.renameDocument(this.mContext.getContentResolver(), this.mUri, displayName);
            if (uriRenameDocument != null) {
                this.mUri = uriRenameDocument;
            }
        } catch (Exception e) {
            Log.e("Unity", "Exception:", e);
        }
        return this.mUri.toString();
    }

    private String getRawType() {
        return queryForString("mime_type", null);
    }

    private String queryForString(String column, String defaultValue) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.mContext.getContentResolver().query(this.mUri, new String[]{column}, null, null, null);
            return (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) ? defaultValue : cursorQuery.getString(0);
        } catch (Exception e) {
            Log.w(TAG, "Failed query: " + e);
            return defaultValue;
        } finally {
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception e2) {
                    Log.e(TAG, "Exception:", e2);
                }
            }
        }
    }

    private int queryForInt(String column, int defaultValue) {
        return (int) queryForLong(column, defaultValue);
    }

    private long queryForLong(String column, long defaultValue) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.mContext.getContentResolver().query(this.mUri, new String[]{column}, null, null, null);
            return (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) ? defaultValue : cursorQuery.getLong(0);
        } catch (Exception e) {
            Log.w(TAG, "Failed query: " + e);
            return defaultValue;
        } finally {
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception e2) {
                    Log.e(TAG, "Exception:", e2);
                }
            }
        }
    }
}
