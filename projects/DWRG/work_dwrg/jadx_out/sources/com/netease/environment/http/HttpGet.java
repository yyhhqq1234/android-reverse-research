package com.netease.environment.http;

import com.netease.environment.config.LogConfig;
import com.netease.environment.utils.HttpUtils;
import com.netease.environment.utils.LogUtils;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.zip.GZIPInputStream;

/* loaded from: classes.dex */
public class HttpGet {
    private static final int CONNECT_TIME_OUT_DEFAULT = 15000;
    private static final int READ_TIME_OUT_DEFAULT = 30000;
    private static final String TAG = HttpGet.class.getSimpleName();

    public static String get(String urlString) {
        return get(urlString, CONNECT_TIME_OUT_DEFAULT, READ_TIME_OUT_DEFAULT);
    }

    /* JADX WARN: Not initialized variable reg: 5, insn: 0x007d: MOVE (r4 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY] A[D('input' java.io.BufferedReader)]), block:B:42:0x007d */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x00d9: MOVE (r4 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY] A[D('input' java.io.BufferedReader)]), block:B:54:0x00d9 */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x016b: MOVE (r4 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY] A[D('input' java.io.BufferedReader)]), block:B:76:0x016b */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x016e: MOVE (r4 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY] A[D('input' java.io.BufferedReader)]), block:B:65:0x016e */
    public static String get(String urlString, int connectTimeout, int readTimeOut) {
        int responseCode;
        String contentEncoding;
        BufferedReader input;
        BufferedReader input2;
        BufferedReader input3;
        BufferedReader input4;
        if (!HttpUtils.verifyURL(urlString)) {
            return null;
        }
        LogUtils.info(TAG, "http get:" + urlString);
        HttpURLConnection urlConnection = null;
        BufferedReader input5 = null;
        try {
            try {
                URL url = new URL(urlString);
                urlConnection = (HttpURLConnection) url.openConnection();
                urlConnection.setConnectTimeout(connectTimeout);
                urlConnection.setReadTimeout(readTimeOut);
                urlConnection.setRequestProperty(HttpHeaders.Names.ACCEPT_ENCODING, HttpHeaders.Values.GZIP);
                responseCode = urlConnection.getResponseCode();
                contentEncoding = urlConnection.getContentEncoding();
            } catch (Throwable th) {
                th = th;
            }
        } catch (MalformedURLException e) {
            e = e;
        } catch (IOException e2) {
            e = e2;
        } catch (Exception e3) {
            e = e3;
        }
        if (responseCode != 200) {
            if (0 != 0) {
                try {
                    input5.close();
                } catch (IOException e4) {
                    LogUtils.error(TAG, e4.toString());
                }
            }
            if (urlConnection != null) {
                urlConnection.disconnect();
            }
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            if (contentEncoding == null || !contentEncoding.contains(HttpHeaders.Values.GZIP)) {
                BufferedReader input6 = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
                while (true) {
                    String line = input6.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line).append("\n");
                }
                input5 = input6;
            } else {
                GZIPInputStream gzipIn = new GZIPInputStream(urlConnection.getInputStream());
                BufferedReader input7 = new BufferedReader(new InputStreamReader(gzipIn));
                while (true) {
                    String line2 = input7.readLine();
                    if (line2 == null) {
                        break;
                    }
                    sb.append(line2).append("\n");
                }
                input5 = input7;
            }
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
            String sb2 = sb.toString();
            if (input5 != null) {
                try {
                    input5.close();
                } catch (IOException e5) {
                    LogUtils.error(TAG, e5.toString());
                }
            }
            if (urlConnection == null) {
                return sb2;
            }
            urlConnection.disconnect();
            return sb2;
        } catch (MalformedURLException e6) {
            e = e6;
            input5 = input4;
            e.printStackTrace();
            LogUtils.error(TAG, e.toString());
            LogConfig.saveExceptionLog(e);
            if (input5 != null) {
                try {
                    input5.close();
                } catch (IOException e7) {
                    LogUtils.error(TAG, e7.toString());
                }
            }
            if (urlConnection != null) {
                urlConnection.disconnect();
            }
            return null;
        } catch (IOException e8) {
            e = e8;
            input5 = input3;
            e.printStackTrace();
            LogUtils.error(TAG, e.toString());
            LogConfig.saveExceptionLog(e);
            if (input5 != null) {
                try {
                    input5.close();
                } catch (IOException e9) {
                    LogUtils.error(TAG, e9.toString());
                }
            }
            if (urlConnection != null) {
                urlConnection.disconnect();
            }
            return null;
        } catch (Exception e10) {
            e = e10;
            input5 = input2;
            e.printStackTrace();
            LogUtils.error(TAG, e.toString());
            LogConfig.saveExceptionLog(e);
            if (input5 != null) {
                try {
                    input5.close();
                } catch (IOException e11) {
                    LogUtils.error(TAG, e11.toString());
                }
            }
            if (urlConnection != null) {
                urlConnection.disconnect();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            input5 = input;
            if (input5 != null) {
                try {
                    input5.close();
                } catch (IOException e12) {
                    LogUtils.error(TAG, e12.toString());
                }
            }
            if (urlConnection != null) {
                urlConnection.disconnect();
            }
            throw th;
        }
    }
}
