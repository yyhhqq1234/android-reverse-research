package com.netease.environment.http;

import android.content.Context;
import com.netease.environment.config.LogConfig;
import com.netease.environment.config.SdkConfig;
import com.netease.environment.config.SdkConstants;
import com.netease.environment.config.SdkData;
import com.netease.environment.listener.OnDownloadListener;
import com.netease.environment.model.RegexGetter;
import com.netease.environment.utils.FileUtils;
import com.netease.environment.utils.JsonUtils;
import com.netease.environment.utils.LogUtils;
import com.netease.environment.utils.RC4Utils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DownloadUtils {
    private static final String TAG = DownloadUtils.class.getSimpleName();

    private static void downloadFile(final String url, final String rootPath, final String name, final OnDownloadListener onDownloadListener) {
        Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.netease.environment.http.DownloadUtils.1
            @Override // java.lang.Runnable
            public void run() {
                BufferedOutputStream bos;
                long count;
                if (OnDownloadListener.this != null) {
                    OnDownloadListener.this.onStart();
                }
                File tempFile = null;
                HttpURLConnection httpURLConnection = null;
                InputStream is = null;
                BufferedInputStream bis = null;
                FileOutputStream fos = null;
                BufferedOutputStream bos2 = null;
                try {
                    try {
                        URL getUrl = new URL(url);
                        try {
                            httpURLConnection = (HttpURLConnection) getUrl.openConnection();
                            InputStream is2 = new BufferedInputStream(httpURLConnection.getInputStream());
                            try {
                                long length = httpURLConnection.getContentLength();
                                int responseCode = httpURLConnection.getResponseCode();
                                if (responseCode == 200) {
                                    File rootFile = new File(rootPath);
                                    if (!rootFile.exists() && !rootFile.isDirectory()) {
                                        rootFile.mkdirs();
                                    }
                                    File tempFile2 = new File(rootFile, name);
                                    try {
                                        if (tempFile2.exists()) {
                                            tempFile2.delete();
                                        }
                                        tempFile2.createNewFile();
                                        BufferedInputStream bis2 = new BufferedInputStream(is2);
                                        try {
                                            FileOutputStream fos2 = new FileOutputStream(tempFile2);
                                            try {
                                                bos = new BufferedOutputStream(fos2);
                                                count = 0;
                                            } catch (MalformedURLException e) {
                                                e = e;
                                                fos = fos2;
                                                bis = bis2;
                                                is = is2;
                                                tempFile = tempFile2;
                                            } catch (IOException e2) {
                                                e = e2;
                                                fos = fos2;
                                                bis = bis2;
                                                is = is2;
                                                tempFile = tempFile2;
                                            } catch (Exception e3) {
                                                e = e3;
                                                fos = fos2;
                                                bis = bis2;
                                                is = is2;
                                                tempFile = tempFile2;
                                            } catch (Throwable th) {
                                                th = th;
                                                fos = fos2;
                                                bis = bis2;
                                                is = is2;
                                            }
                                            try {
                                                byte[] buffer = new byte[1024];
                                                while (true) {
                                                    int read = bis2.read(buffer);
                                                    if (read == -1) {
                                                        break;
                                                    }
                                                    bos.write(buffer, 0, read);
                                                    count += read;
                                                    int percent = (int) ((count / length) * 100.0d);
                                                    if (OnDownloadListener.this != null) {
                                                        OnDownloadListener.this.onProgress(percent);
                                                    }
                                                }
                                                bos.flush();
                                                bos.close();
                                                fos2.flush();
                                                fos2.close();
                                                is2.close();
                                                bis2.close();
                                                bos2 = bos;
                                                fos = fos2;
                                                bis = bis2;
                                                tempFile = tempFile2;
                                            } catch (MalformedURLException e4) {
                                                e = e4;
                                                bos2 = bos;
                                                fos = fos2;
                                                bis = bis2;
                                                is = is2;
                                                tempFile = tempFile2;
                                                if (tempFile != null && tempFile.exists()) {
                                                    tempFile.delete();
                                                }
                                                LogUtils.error(DownloadUtils.TAG, "download failed : MalformedURLException");
                                                LogConfig.saveExceptionLog(e);
                                                if (OnDownloadListener.this != null) {
                                                    OnDownloadListener.this.onFinish(false);
                                                }
                                                if (bos2 != null) {
                                                    try {
                                                        bos2.close();
                                                    } catch (IOException e5) {
                                                        e5.printStackTrace();
                                                    }
                                                }
                                                if (fos != null) {
                                                    try {
                                                        fos.close();
                                                    } catch (IOException e6) {
                                                        e6.printStackTrace();
                                                    }
                                                }
                                                if (bis != null) {
                                                    try {
                                                        bis.close();
                                                    } catch (IOException e7) {
                                                        e7.printStackTrace();
                                                    }
                                                }
                                                if (is != null) {
                                                    try {
                                                        is.close();
                                                    } catch (IOException e8) {
                                                        e8.printStackTrace();
                                                    }
                                                }
                                                if (httpURLConnection != null) {
                                                    httpURLConnection.disconnect();
                                                    return;
                                                }
                                                return;
                                            } catch (IOException e9) {
                                                e = e9;
                                                bos2 = bos;
                                                fos = fos2;
                                                bis = bis2;
                                                is = is2;
                                                tempFile = tempFile2;
                                                if (tempFile != null && tempFile.exists()) {
                                                    tempFile.delete();
                                                }
                                                LogUtils.error(DownloadUtils.TAG, "download failed : IOException");
                                                LogConfig.saveExceptionLog(e);
                                                if (OnDownloadListener.this != null) {
                                                    OnDownloadListener.this.onFinish(false);
                                                }
                                                if (bos2 != null) {
                                                    try {
                                                        bos2.close();
                                                    } catch (IOException e10) {
                                                        e10.printStackTrace();
                                                    }
                                                }
                                                if (fos != null) {
                                                    try {
                                                        fos.close();
                                                    } catch (IOException e11) {
                                                        e11.printStackTrace();
                                                    }
                                                }
                                                if (bis != null) {
                                                    try {
                                                        bis.close();
                                                    } catch (IOException e12) {
                                                        e12.printStackTrace();
                                                    }
                                                }
                                                if (is != null) {
                                                    try {
                                                        is.close();
                                                    } catch (IOException e13) {
                                                        e13.printStackTrace();
                                                    }
                                                }
                                                if (httpURLConnection != null) {
                                                    httpURLConnection.disconnect();
                                                    return;
                                                }
                                                return;
                                            } catch (Exception e14) {
                                                e = e14;
                                                bos2 = bos;
                                                fos = fos2;
                                                bis = bis2;
                                                is = is2;
                                                tempFile = tempFile2;
                                                if (tempFile != null && tempFile.exists()) {
                                                    tempFile.delete();
                                                }
                                                LogUtils.error(DownloadUtils.TAG, "download failed : Exception");
                                                LogConfig.saveExceptionLog(e);
                                                if (OnDownloadListener.this != null) {
                                                    OnDownloadListener.this.onFinish(false);
                                                }
                                                if (bos2 != null) {
                                                    try {
                                                        bos2.close();
                                                    } catch (IOException e15) {
                                                        e15.printStackTrace();
                                                    }
                                                }
                                                if (fos != null) {
                                                    try {
                                                        fos.close();
                                                    } catch (IOException e16) {
                                                        e16.printStackTrace();
                                                    }
                                                }
                                                if (bis != null) {
                                                    try {
                                                        bis.close();
                                                    } catch (IOException e17) {
                                                        e17.printStackTrace();
                                                    }
                                                }
                                                if (is != null) {
                                                    try {
                                                        is.close();
                                                    } catch (IOException e18) {
                                                        e18.printStackTrace();
                                                    }
                                                }
                                                if (httpURLConnection != null) {
                                                    httpURLConnection.disconnect();
                                                    return;
                                                }
                                                return;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                bos2 = bos;
                                                fos = fos2;
                                                bis = bis2;
                                                is = is2;
                                                if (bos2 != null) {
                                                    try {
                                                        bos2.close();
                                                    } catch (IOException e19) {
                                                        e19.printStackTrace();
                                                    }
                                                }
                                                if (fos != null) {
                                                    try {
                                                        fos.close();
                                                    } catch (IOException e20) {
                                                        e20.printStackTrace();
                                                    }
                                                }
                                                if (bis != null) {
                                                    try {
                                                        bis.close();
                                                    } catch (IOException e21) {
                                                        e21.printStackTrace();
                                                    }
                                                }
                                                if (is != null) {
                                                    try {
                                                        is.close();
                                                    } catch (IOException e22) {
                                                        e22.printStackTrace();
                                                    }
                                                }
                                                if (httpURLConnection == null) {
                                                    throw th;
                                                }
                                                httpURLConnection.disconnect();
                                                throw th;
                                            }
                                        } catch (MalformedURLException e23) {
                                            e = e23;
                                            bis = bis2;
                                            is = is2;
                                            tempFile = tempFile2;
                                        } catch (IOException e24) {
                                            e = e24;
                                            bis = bis2;
                                            is = is2;
                                            tempFile = tempFile2;
                                        } catch (Exception e25) {
                                            e = e25;
                                            bis = bis2;
                                            is = is2;
                                            tempFile = tempFile2;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            bis = bis2;
                                            is = is2;
                                        }
                                    } catch (MalformedURLException e26) {
                                        e = e26;
                                        is = is2;
                                        tempFile = tempFile2;
                                    } catch (IOException e27) {
                                        e = e27;
                                        is = is2;
                                        tempFile = tempFile2;
                                    } catch (Exception e28) {
                                        e = e28;
                                        is = is2;
                                        tempFile = tempFile2;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        is = is2;
                                    }
                                }
                                if (OnDownloadListener.this != null) {
                                    OnDownloadListener.this.onFinish(true);
                                }
                                if (bos2 != null) {
                                    try {
                                        bos2.close();
                                    } catch (IOException e29) {
                                        e29.printStackTrace();
                                    }
                                }
                                if (fos != null) {
                                    try {
                                        fos.close();
                                    } catch (IOException e30) {
                                        e30.printStackTrace();
                                    }
                                }
                                if (bis != null) {
                                    try {
                                        bis.close();
                                    } catch (IOException e31) {
                                        e31.printStackTrace();
                                    }
                                }
                                if (is2 != null) {
                                    try {
                                        is2.close();
                                    } catch (IOException e32) {
                                        e32.printStackTrace();
                                    }
                                }
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                            } catch (MalformedURLException e33) {
                                e = e33;
                                is = is2;
                            } catch (IOException e34) {
                                e = e34;
                                is = is2;
                            } catch (Exception e35) {
                                e = e35;
                                is = is2;
                            } catch (Throwable th5) {
                                th = th5;
                                is = is2;
                            }
                        } catch (MalformedURLException e36) {
                            e = e36;
                        } catch (IOException e37) {
                            e = e37;
                        } catch (Exception e38) {
                            e = e38;
                        } catch (Throwable th6) {
                            th = th6;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                    }
                } catch (MalformedURLException e39) {
                    e = e39;
                } catch (IOException e40) {
                    e = e40;
                } catch (Exception e41) {
                    e = e41;
                }
            }
        });
    }

    public static void downloadRegularFile(final Context context, final String regexFileUrl) {
        SdkConfig.saveDownloadState(context, true);
        LogUtils.info(TAG, "http get:" + regexFileUrl);
        downloadFile(regexFileUrl, FileUtils.getTempDir(context), FileUtils.getTempFileName(), new OnDownloadListener() { // from class: com.netease.environment.http.DownloadUtils.2
            @Override // com.netease.environment.listener.OnDownloadListener
            public void onStart() {
                LogUtils.info(DownloadUtils.TAG, "download data file start");
            }

            @Override // com.netease.environment.listener.OnDownloadListener
            public void onProgress(int percent) {
            }

            @Override // com.netease.environment.listener.OnDownloadListener
            public void onFinish(boolean succeed) {
                LogUtils.info(DownloadUtils.TAG, "download data file result : " + succeed);
                if (succeed) {
                    String tempFilePath = FileUtils.getTempFilePath(context);
                    String filePath = FileUtils.getRegexFilePath(context);
                    String content = FileUtils.readFile(tempFilePath);
                    String decodeContent = RC4Utils.decryptData(content, SdkData.getRC4Key());
                    if (JsonUtils.isJSONObjectFormat(decodeContent)) {
                        try {
                            JSONObject resultObject = new JSONObject(decodeContent);
                            JSONObject settingsObject = resultObject.optJSONObject(SdkConstants.JSON_KEY_SETTINGS);
                            SdkConfig.saveEnableState(context, settingsObject.optBoolean(SdkConstants.JSON_KEY_ENABLE, true));
                            SdkConfig.saveUpdateInterval(context, settingsObject.optLong(SdkConstants.JSON_KEY_UPDATE_INTERVAL, SdkConstants.AN_HOUR));
                            SdkConfig.saveTaskTimeout(context, settingsObject.optLong(SdkConstants.JSON_KEY_TASK_TIMEOUT, 1000L));
                            RegexGetter.setPatternMap(resultObject.optJSONObject(SdkConstants.JSON_KEY_REGEX));
                        } catch (Exception e) {
                            LogUtils.info(DownloadUtils.TAG, "fail to save settings");
                            e.printStackTrace();
                        }
                        SdkConfig.saveUpdateDataTime(context, System.currentTimeMillis());
                        boolean copyResult = FileUtils.copyFile(tempFilePath, filePath);
                        LogUtils.info(DownloadUtils.TAG, "regex file path:" + filePath);
                        if (copyResult) {
                            SdkConfig.saveRegexFileUrl(context, SdkData.getGameId(), regexFileUrl);
                        }
                        LogUtils.info(DownloadUtils.TAG, "check data file file done");
                    }
                }
                SdkConfig.saveDownloadState(context, false);
            }
        });
    }
}
