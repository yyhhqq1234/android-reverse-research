package com.sina.weibo.sdk.statistic;

import android.os.Environment;
import android.text.TextUtils;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.MD5;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/* loaded from: classes.dex */
class LogFileUtil {
    public static final String ANALYTICS_FILE_NAME = "app_logs";
    private static final String ANALYTICS_FILE_SUFFIX = ".txt";
    private static final String SDCARD_WEIBO_ANALYTICS_DIR = "/sina/weibo/.applogs/";

    LogFileUtil() {
    }

    public static String getAppLogs(String filePath) {
        return TextUtils.isEmpty(filePath) ? "" : readStringFromFile(filePath);
    }

    public static String getAppLogPath(String fileName) {
        String parent = "";
        if (LogReport.getPackageName() != null) {
            parent = String.valueOf(MD5.hexdigest(LogReport.getPackageName())) + "/";
        }
        String filePath = String.valueOf(getSDPath()) + SDCARD_WEIBO_ANALYTICS_DIR + parent + fileName + ANALYTICS_FILE_SUFFIX;
        return filePath;
    }

    private static String getSDPath() {
        File sdDir = null;
        if (Environment.getExternalStorageState().equals("mounted")) {
            sdDir = Environment.getExternalStorageDirectory();
        }
        if (sdDir != null) {
            return sdDir.toString();
        }
        return null;
    }

    private static String readStringFromFile(String path) {
        if (TextUtils.isEmpty(path)) {
            return "";
        }
        File file = new File(path);
        if (!file.isFile() || !file.exists()) {
            return "";
        }
        BufferedReader reader = null;
        StringBuilder content = new StringBuilder((int) file.length());
        try {
            try {
                BufferedReader reader2 = new BufferedReader(new FileReader(file));
                while (true) {
                    try {
                        String temp = reader2.readLine();
                        if (temp == null) {
                            break;
                        }
                        content.append(temp);
                    } catch (IOException e) {
                        e = e;
                        reader = reader2;
                        e.printStackTrace();
                        if (reader != null) {
                            try {
                                reader.close();
                            } catch (IOException e2) {
                            }
                        }
                        return content.toString();
                    } catch (OutOfMemoryError e3) {
                        e = e3;
                        reader = reader2;
                        e.printStackTrace();
                        if (reader != null) {
                            try {
                                reader.close();
                            } catch (IOException e4) {
                            }
                        }
                        return content.toString();
                    } catch (Throwable th) {
                        th = th;
                        reader = reader2;
                        if (reader != null) {
                            try {
                                reader.close();
                            } catch (IOException e5) {
                            }
                        }
                        throw th;
                    }
                }
                if (reader2 != null) {
                    try {
                        reader2.close();
                        reader = reader2;
                    } catch (IOException e6) {
                        reader = reader2;
                    }
                } else {
                    reader = reader2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e7) {
            e = e7;
        } catch (OutOfMemoryError e8) {
            e = e8;
        }
        return content.toString();
    }

    public static synchronized void writeToFile(String filePath, String content, boolean isAppend) {
        FileWriter fileWriter;
        synchronized (LogFileUtil.class) {
            if (!TextUtils.isEmpty(filePath)) {
                LogUtil.i(WBAgent.TAG, "filePath:" + filePath);
                if (content != null && content.length() != 0) {
                    StringBuilder sb = new StringBuilder(content);
                    if (sb.charAt(0) == '[') {
                        sb.replace(0, 1, "");
                    }
                    if (sb.charAt(sb.length() - 1) != ',') {
                        sb.replace(sb.length() - 1, sb.length(), ",");
                    }
                    File file = new File(filePath);
                    FileWriter fileWriter2 = null;
                    try {
                        File parent = file.getParentFile();
                        if (!parent.exists()) {
                            parent.mkdirs();
                        }
                        if (!file.exists()) {
                            file.createNewFile();
                        } else if (file.lastModified() > 0 && System.currentTimeMillis() - file.lastModified() > LogBuilder.MAX_INTERVAL) {
                            isAppend = false;
                        }
                        fileWriter = new FileWriter(file, isAppend);
                    } catch (IOException e) {
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        fileWriter.write(sb.toString());
                        fileWriter.flush();
                        if (fileWriter != null) {
                            try {
                                fileWriter.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                    } catch (IOException e3) {
                        fileWriter2 = fileWriter;
                        if (fileWriter2 != null) {
                            try {
                                fileWriter2.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileWriter2 = fileWriter;
                        if (fileWriter2 != null) {
                            try {
                                fileWriter2.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
            }
        }
    }

    public static boolean delete(String fileName) {
        File file = new File(fileName);
        if (!file.exists() || !file.isFile()) {
            return false;
        }
        file.delete();
        return true;
    }
}
