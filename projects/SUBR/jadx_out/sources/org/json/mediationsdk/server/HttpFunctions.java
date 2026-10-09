package org.json.mediationsdk.server;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.be;
import org.json.l9;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.p;

/* JADX INFO: loaded from: classes3.dex */
public class HttpFunctions {
    public static final String ERROR_PREFIX = "ERROR:";
    private static final int a = 15000;
    private static final String b = "GET";
    private static final String c = "POST";
    private static final String d = "UTF-8";
    private static final String e = "Bad Request - 400";
    private static final ExecutorService f = Executors.newSingleThreadExecutor();

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ be c;

        a(String str, String str2, be beVar) {
            this.a = str;
            this.b = str2;
            this.c = beVar;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            HttpURLConnection httpURLConnectionB;
            OutputStream outputStream;
            OutputStream outputStream2;
            try {
                try {
                    httpURLConnectionB = HttpFunctions.b(this.a);
                    try {
                        outputStream2 = httpURLConnectionB.getOutputStream();
                        try {
                            HttpFunctions.b(this.b, outputStream2);
                            int responseCode = httpURLConnectionB.getResponseCode();
                            boolean z = responseCode == 200;
                            if (!z) {
                                IronLog.INTERNAL.error("invalid response code " + responseCode + " sending request");
                            }
                            this.c.a(z);
                        } catch (Exception e) {
                            e = e;
                            l9.d().a(e);
                            IronLog.INTERNAL.error("exception while sending request " + e.getMessage());
                            this.c.a(false);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        outputStream2 = null;
                    } catch (Throwable th) {
                        th = th;
                        outputStream = null;
                        HttpFunctions.b(outputStream, httpURLConnectionB, null);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e3) {
                e = e3;
                httpURLConnectionB = null;
                outputStream2 = null;
            } catch (Throwable th3) {
                th = th3;
                httpURLConnectionB = null;
                outputStream = null;
            }
            HttpFunctions.b(outputStream2, httpURLConnectionB, null);
        }
    }

    private static String a(BufferedReader bufferedReader) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            sb.append(line);
        }
        String string = sb.toString();
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HttpURLConnection b(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setReadTimeout(a);
        httpURLConnection.setConnectTimeout(a);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        return httpURLConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(OutputStream outputStream, HttpURLConnection httpURLConnection, BufferedReader bufferedReader) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error("exception while closing output stream " + e2.getMessage());
            }
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (IOException e3) {
                l9.d().a(e3);
                IronLog.INTERNAL.error("exception while closing reader " + e3.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, OutputStream outputStream) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, d));
        bufferedWriter.write(str);
        bufferedWriter.flush();
        bufferedWriter.close();
    }

    public static String getStringFromURL(String str) throws Exception {
        return getStringFromURL(str, null);
    }

    public static String getStringFromURL(String str, p.c cVar) throws Throwable {
        HttpURLConnection httpURLConnection;
        BufferedReader bufferedReader;
        Exception e2;
        BufferedReader bufferedReader2;
        Throwable th;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setReadTimeout(a);
                httpURLConnection.setConnectTimeout(a);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() == 400) {
                    if (cVar != null) {
                        cVar.a(e);
                    }
                    b(null, httpURLConnection, null);
                    return null;
                }
                bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                try {
                    String strA = a(bufferedReader2);
                    b(null, httpURLConnection, bufferedReader2);
                    return strA;
                } catch (Exception e3) {
                    e2 = e3;
                    try {
                        l9.d().a(e2);
                        b(null, httpURLConnection, bufferedReader2);
                        return null;
                    } catch (Throwable th2) {
                        bufferedReader = bufferedReader2;
                        th = th2;
                        BufferedReader bufferedReader3 = bufferedReader;
                        th = th;
                        bufferedReader2 = bufferedReader3;
                        b(null, httpURLConnection, bufferedReader2);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    b(null, httpURLConnection, bufferedReader2);
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                e2 = e;
                bufferedReader2 = null;
                l9.d().a(e2);
                b(null, httpURLConnection, bufferedReader2);
                return null;
            } catch (Throwable th4) {
                th = th4;
                bufferedReader = null;
                BufferedReader bufferedReader4 = bufferedReader;
                th = th;
                bufferedReader2 = bufferedReader4;
                b(null, httpURLConnection, bufferedReader2);
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            httpURLConnection = null;
        } catch (Throwable th5) {
            th = th5;
            httpURLConnection = null;
            bufferedReader = null;
        }
    }

    public static String sendPostRequest(String str, String str2, p.c cVar) {
        BufferedReader bufferedReader;
        OutputStream outputStream;
        HttpURLConnection httpURLConnectionB;
        Exception e2;
        BufferedReader bufferedReader2;
        Throwable th;
        HttpURLConnection httpURLConnection = null;
        try {
            httpURLConnectionB = b(str);
            try {
                httpURLConnectionB.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                outputStream = httpURLConnectionB.getOutputStream();
                try {
                    b(str2, outputStream);
                    int responseCode = httpURLConnectionB.getResponseCode();
                    if (!(responseCode == 200)) {
                        if (responseCode == 400 && cVar != null) {
                            cVar.a(e);
                        }
                        b(outputStream, httpURLConnectionB, null);
                        return null;
                    }
                    bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnectionB.getInputStream()));
                    try {
                        String strA = a(bufferedReader2);
                        b(outputStream, httpURLConnectionB, bufferedReader2);
                        return strA;
                    } catch (Exception e3) {
                        e2 = e3;
                        try {
                            l9.d().a(e2);
                            IronLog.INTERNAL.error("exception while sending request " + e2.getMessage());
                            b(outputStream, httpURLConnectionB, bufferedReader2);
                            return null;
                        } catch (Throwable th2) {
                            httpURLConnection = httpURLConnectionB;
                            bufferedReader = bufferedReader2;
                            th = th2;
                            th = th;
                            bufferedReader2 = bufferedReader;
                            httpURLConnectionB = httpURLConnection;
                            b(outputStream, httpURLConnectionB, bufferedReader2);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        b(outputStream, httpURLConnectionB, bufferedReader2);
                        throw th;
                    }
                } catch (Exception e4) {
                    e = e4;
                    e2 = e;
                    bufferedReader2 = null;
                    l9.d().a(e2);
                    IronLog.INTERNAL.error("exception while sending request " + e2.getMessage());
                    b(outputStream, httpURLConnectionB, bufferedReader2);
                    return null;
                } catch (Throwable th4) {
                    th = th4;
                    httpURLConnection = httpURLConnectionB;
                    bufferedReader = null;
                    th = th;
                    bufferedReader2 = bufferedReader;
                    httpURLConnectionB = httpURLConnection;
                    b(outputStream, httpURLConnectionB, bufferedReader2);
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
                outputStream = null;
            } catch (Throwable th5) {
                th = th5;
                outputStream = null;
                httpURLConnection = httpURLConnectionB;
                bufferedReader = null;
            }
        } catch (Exception e6) {
            e = e6;
            httpURLConnectionB = null;
            outputStream = null;
        } catch (Throwable th6) {
            th = th6;
            bufferedReader = null;
            outputStream = null;
        }
    }

    public static void sendPostRequest(String str, String str2, be beVar) {
        f.submit(new a(str, str2, beVar));
    }
}
