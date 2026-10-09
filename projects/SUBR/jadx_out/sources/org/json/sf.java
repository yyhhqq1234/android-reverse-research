package org.json;

import android.net.Uri;
import android.util.Log;
import android.util.Pair;
import com.google.common.net.HttpHeaders;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes3.dex */
public class sf {
    private static final String a = "POST";
    private static final String b = "GET";
    private static final String c = "ISHttpService";

    public static class a {
        private static final int h = 15000;
        private static final int i = 15000;
        private static final String j = "UTF-8";
        final String a;
        final String b;
        final String c;
        final int d;
        final int e;
        final String f;
        ArrayList<Pair<String, String>> g;

        /* JADX INFO: renamed from: com.ironsource.sf$a$a, reason: collision with other inner class name */
        static class C0109a {
            String b;
            String d;
            List<Pair<String, String>> a = new ArrayList();
            String c = "POST";
            int e = 15000;
            int f = 15000;
            String g = a.j;

            C0109a() {
            }

            C0109a a(int i) {
                this.e = i;
                return this;
            }

            C0109a a(Pair<String, String> pair) {
                this.a.add(pair);
                return this;
            }

            C0109a a(String str) {
                this.d = str;
                return this;
            }

            C0109a a(List<Pair<String, String>> list) {
                this.a.addAll(list);
                return this;
            }

            a a() {
                return new a(this);
            }

            C0109a b(int i) {
                this.f = i;
                return this;
            }

            C0109a b(String str) {
                this.g = str;
                return this;
            }

            C0109a c(String str) {
                this.b = str;
                return this;
            }

            C0109a d(String str) {
                this.c = str;
                return this;
            }
        }

        public a(C0109a c0109a) {
            this.a = c0109a.b;
            this.b = c0109a.c;
            this.c = c0109a.d;
            this.g = new ArrayList<>(c0109a.a);
            this.d = c0109a.e;
            this.e = c0109a.f;
            this.f = c0109a.g;
        }

        boolean a() {
            return "POST".equals(this.b);
        }
    }

    public static ap a(String str, String str2, List<Pair<String, String>> list) throws Exception {
        Uri uriBuild = Uri.parse(str).buildUpon().encodedQuery(str2).build();
        a.C0109a c0109a = new a.C0109a();
        c0109a.c(uriBuild.toString()).a(str2).d("GET").a(list);
        return b(c0109a.a());
    }

    private static HttpURLConnection a(a aVar) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(aVar.a).openConnection();
        httpURLConnection.setConnectTimeout(aVar.d);
        httpURLConnection.setReadTimeout(aVar.e);
        httpURLConnection.setRequestMethod(aVar.b);
        return httpURLConnection;
    }

    private static void a(HttpURLConnection httpURLConnection, a aVar) throws Exception {
        if (aVar.a()) {
            byte[] bytes = aVar.c.getBytes(aVar.f);
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_LENGTH, Integer.toString(bytes.length));
            a(httpURLConnection, bytes);
        }
    }

    private static void a(HttpURLConnection httpURLConnection, List<Pair<String, String>> list) throws ProtocolException {
        for (Pair<String, String> pair : list) {
            httpURLConnection.setRequestProperty((String) pair.first, (String) pair.second);
        }
    }

    private static void a(HttpURLConnection httpURLConnection, byte[] bArr) throws Exception {
        httpURLConnection.setDoOutput(true);
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        try {
            dataOutputStream.write(bArr);
            dataOutputStream.flush();
        } finally {
            dataOutputStream.close();
        }
    }

    private static boolean a(String str, String str2) {
        return (str == null || str.isEmpty() || str2 == null || str2.isEmpty()) ? false : true;
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x009d: MOVE (r8 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:42:0x009d */
    public static ap b(a aVar) throws Exception {
        HttpURLConnection httpURLConnectionA;
        InputStream inputStream;
        InputStream inputStream2;
        if (!a(aVar.a, aVar.c)) {
            throw new InvalidParameterException("not valid params");
        }
        ap apVar = new ap();
        InputStream inputStream3 = null;
        inputStream3 = null;
        inputStream3 = null;
        inputStream3 = null;
        inputStream3 = null;
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                httpURLConnectionA = a(aVar);
                try {
                    a(httpURLConnectionA, aVar.g);
                    a(httpURLConnectionA, aVar);
                    inputStream3 = httpURLConnectionA.getInputStream();
                    apVar.a = httpURLConnectionA.getResponseCode();
                    if (inputStream3 != null) {
                        apVar.b = cu.a(inputStream3);
                    }
                    if (inputStream3 != null) {
                        inputStream3.close();
                    }
                } catch (InterruptedIOException e) {
                    e = e;
                    Log.d(c, "Failed post to " + aVar.a + " exception: " + e.getMessage());
                    throw e;
                } catch (SSLException e2) {
                    e = e2;
                    Log.d(c, "Failed post to " + aVar.a + " exception: " + e.getMessage());
                    throw e;
                } catch (IOException e3) {
                    e = e3;
                    inputStream = inputStream3;
                    httpURLConnection = httpURLConnectionA;
                    l9.d().a(e);
                    if (httpURLConnection != null && httpURLConnection.getHeaderFields().isEmpty()) {
                        throw new dn(e);
                    }
                    if (httpURLConnection != null) {
                        int responseCode = httpURLConnection.getResponseCode();
                        apVar.a = responseCode;
                        if (responseCode >= 400) {
                            Log.d(c, "Failed post to " + aVar.a + " StatusCode: " + apVar.a);
                            if (inputStream != null) {
                                InputStream inputStream4 = inputStream;
                                httpURLConnectionA = httpURLConnection;
                                inputStream3 = inputStream4;
                                inputStream3.close();
                            } else {
                                httpURLConnectionA = httpURLConnection;
                            }
                        }
                    }
                    throw e;
                } catch (Throwable th) {
                    th = th;
                    if (inputStream3 != null) {
                        inputStream3.close();
                    }
                    if (httpURLConnectionA != null) {
                        httpURLConnectionA.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnectionA = null;
                inputStream3 = inputStream2;
            }
        } catch (InterruptedIOException e4) {
            e = e4;
            Log.d(c, "Failed post to " + aVar.a + " exception: " + e.getMessage());
            throw e;
        } catch (SSLException e5) {
            e = e5;
            Log.d(c, "Failed post to " + aVar.a + " exception: " + e.getMessage());
            throw e;
        } catch (IOException e6) {
            e = e6;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnectionA = null;
        }
        httpURLConnectionA.disconnect();
        return apVar;
    }

    public static ap b(String str, String str2, List<Pair<String, String>> list) throws Exception {
        a.C0109a c0109a = new a.C0109a();
        c0109a.c(str).a(str2).d("POST").a(list);
        return b(c0109a.a());
    }
}
