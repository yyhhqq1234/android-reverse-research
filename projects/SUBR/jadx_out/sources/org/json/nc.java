package org.json;

import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.concurrent.Callable;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.utils.IronSourceStorageUtils;
import org.json.sdk.utils.Logger;

/* JADX INFO: loaded from: classes3.dex */
class nc implements Callable<ta> {
    private static final String d = "FileWorkerThread";
    private static final String e = "X-Android-Protocols";
    private static final String f = "http/1.1,h2";
    private final sa a;
    private final String b;
    private long c;

    nc(sa saVar, String str, long j) {
        this.a = saVar;
        this.b = str;
        this.c = j;
    }

    int a(byte[] bArr, String str) throws Exception {
        return IronSourceStorageUtils.saveFile(bArr, str);
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ta call() throws Throwable {
        int i;
        if (this.c == 0) {
            this.c = 1L;
        }
        ta taVarA = null;
        for (int i2 = 0; i2 < this.c; i2++) {
            taVarA = a(this.a.e(), i2, this.a.a(), this.a.c(), this.a.f());
            int iB = taVarA.b();
            if (iB != 1008 && iB != 1009) {
                break;
            }
        }
        if (taVarA != null && taVarA.a() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.b);
            String str = File.separator;
            sb.append(str);
            sb.append(this.a.b().getName());
            String string = sb.toString();
            String str2 = this.a.d() + str + a9.E + this.a.b().getName();
            try {
                if (a(taVarA.a(), str2) == 0) {
                    taVarA.a(1006);
                } else if (!a(str2, string)) {
                    taVarA.a(1014);
                }
            } catch (FileNotFoundException e2) {
                l9.d().a(e2);
                i = 1018;
                taVarA.a(i);
            } catch (Error e3) {
                l9.d().a(e3);
                if (!TextUtils.isEmpty(e3.getMessage())) {
                    Logger.i(d, e3.getMessage());
                }
                i = 1019;
                taVarA.a(i);
            } catch (Exception e4) {
                l9.d().a(e4);
                if (!TextUtils.isEmpty(e4.getMessage())) {
                    Logger.i(d, e4.getMessage());
                }
                taVarA.a(1009);
            }
        }
        return taVarA;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0173 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:107:0x0175 A[Catch: all -> 0x0171, TRY_LEAVE, TryCatch #6 {all -> 0x0171, blocks: (B:103:0x016d, B:107:0x0175), top: B:117:0x016d }] */
    /* JADX WARN: Code duplicated, block: B:117:0x016d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0103 A[Catch: all -> 0x00ff, PHI: r5 r9
  0x0103: PHI (r5v13 java.net.HttpURLConnection) = 
  (r5v8 java.net.HttpURLConnection)
  (r5v9 java.net.HttpURLConnection)
  (r5v10 java.net.HttpURLConnection)
  (r5v11 java.net.HttpURLConnection)
  (r5v14 java.net.HttpURLConnection)
 binds: [B:63:0x0101, B:88:0x013d, B:80:0x012a, B:96:0x0150, B:72:0x0117] A[DONT_GENERATE, DONT_INLINE]
  0x0103: PHI (r9v24 int) = (r9v14 int), (r9v17 int), (r9v19 int), (r9v21 int), (r9v27 int) binds: [B:63:0x0101, B:88:0x013d, B:80:0x012a, B:96:0x0150, B:72:0x0117] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #17 {all -> 0x00ff, blocks: (B:60:0x00fb, B:64:0x0103, B:71:0x0114, B:79:0x0127, B:87:0x013a, B:95:0x014d), top: B:114:0x001a }] */
    /* JADX WARN: Multi-variable type inference failed */
    ta a(String str, int i, int i2, int i3, boolean z) throws Throwable {
        HttpURLConnection httpURLConnection;
        ta taVar = new ta();
        if (TextUtils.isEmpty(str)) {
            taVar.a(str);
            taVar.a(1007);
            return taVar;
        }
        InputStream inputStream = null;
        Object[] objArr = 0;
        InputStream inputStream2 = null;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        Object[] objArr6 = 0;
        Object[] objArr7 = 0;
        int responseCode = 0;
        try {
            try {
                try {
                    try {
                        URL url = new URL(str);
                        url.toURI();
                        httpURLConnection = (HttpURLConnection) url.openConnection();
                        try {
                            httpURLConnection.setRequestMethod("GET");
                            if (z) {
                                try {
                                    httpURLConnection.setRequestProperty(e, f);
                                } catch (IllegalStateException e2) {
                                    l9.d().a(e2);
                                }
                            }
                            httpURLConnection.setConnectTimeout(i2);
                            httpURLConnection.setReadTimeout(i3);
                            httpURLConnection.connect();
                            responseCode = httpURLConnection.getResponseCode();
                            if (responseCode < 200 || responseCode >= 400) {
                                Logger.i(d, " RESPONSE CODE: " + responseCode + " URL: " + str + " ATTEMPT: " + i);
                                responseCode = 1011;
                            } else {
                                inputStream2 = httpURLConnection.getInputStream();
                                taVar.a(a(inputStream2));
                            }
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                        } catch (FileNotFoundException e3) {
                            e = e3;
                            l9.d().a(e);
                            i = 1018;
                            if (0 != 0) {
                                (objArr2 == true ? 1 : 0).close();
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            taVar.a(str);
                            taVar.a(i);
                            return taVar;
                        } catch (Error e4) {
                            e = e4;
                            l9.d().a(e);
                            responseCode = 1019;
                            if (!TextUtils.isEmpty(e.getMessage())) {
                                Logger.i(d, e.getMessage());
                            }
                            if (0 != 0) {
                                (objArr3 == true ? 1 : 0).close();
                            }
                            if (httpURLConnection != null) {
                            }
                            taVar.a(str);
                            taVar.a(responseCode);
                            return taVar;
                        } catch (MalformedURLException e5) {
                            e = e5;
                            l9.d().a(e);
                            i = 1004;
                            if (0 != 0) {
                                (objArr4 == true ? 1 : 0).close();
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            taVar.a(str);
                            taVar.a(i);
                            return taVar;
                        } catch (SocketTimeoutException e6) {
                            e = e6;
                            l9.d().a(e);
                            i = 1008;
                            if (0 != 0) {
                                (objArr5 == true ? 1 : 0).close();
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            taVar.a(str);
                            taVar.a(i);
                            return taVar;
                        } catch (URISyntaxException e7) {
                            e = e7;
                            l9.d().a(e);
                            i = 1010;
                            if (0 != 0) {
                                (objArr6 == true ? 1 : 0).close();
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            taVar.a(str);
                            taVar.a(i);
                            return taVar;
                        } catch (Exception e8) {
                            e = e8;
                            l9.d().a(e);
                            if (!TextUtils.isEmpty(e.getMessage())) {
                                Logger.i(d, e.getMessage());
                            }
                            i = 1009;
                            if (0 != 0) {
                                (objArr7 == true ? 1 : 0).close();
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            taVar.a(str);
                            taVar.a(i);
                            return taVar;
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (0 != 0) {
                            try {
                                inputStream.close();
                                if (0 != 0) {
                                    (objArr == true ? 1 : 0).disconnect();
                                }
                            } catch (Throwable th2) {
                                l9.d().a(th2);
                                IronLog.INTERNAL.error(th2.toString());
                                taVar.a(str);
                                taVar.a(0);
                                throw th;
                            }
                        } else if (0 != 0) {
                            (objArr == true ? 1 : 0).disconnect();
                        }
                        taVar.a(str);
                        taVar.a(0);
                        throw th;
                    }
                } catch (Throwable th3) {
                    l9.d().a(th3);
                    IronLog.INTERNAL.error(th3.toString());
                    taVar.a(str);
                    taVar.a(i);
                }
            } catch (FileNotFoundException e9) {
                e = e9;
                httpURLConnection = null;
            } catch (Error e10) {
                e = e10;
                httpURLConnection = null;
            } catch (MalformedURLException e11) {
                e = e11;
                httpURLConnection = null;
            } catch (SocketTimeoutException e12) {
                e = e12;
                httpURLConnection = null;
            } catch (URISyntaxException e13) {
                e = e13;
                httpURLConnection = null;
            } catch (Exception e14) {
                e = e14;
                httpURLConnection = null;
            } catch (Throwable th4) {
                th = th4;
                if (0 != 0) {
                    inputStream.close();
                    if (0 != 0) {
                        (objArr == true ? 1 : 0).disconnect();
                    }
                } else if (0 != 0) {
                    (objArr == true ? 1 : 0).disconnect();
                }
                taVar.a(str);
                taVar.a(0);
                throw th;
            }
            httpURLConnection.disconnect();
        } catch (Throwable th5) {
            l9.d().a(th5);
            IronLog.INTERNAL.error(th5.toString());
        }
        taVar.a(str);
        taVar.a(responseCode);
        return taVar;
    }

    boolean a(String str, String str2) throws Exception {
        return IronSourceStorageUtils.renameFile(str, str2);
    }

    byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr, 0, 8192);
            if (i == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }
}
