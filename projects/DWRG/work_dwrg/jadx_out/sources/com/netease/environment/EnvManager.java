package com.netease.environment;

import android.content.Context;
import com.netease.environment.config.LogConfig;
import com.netease.environment.config.SdkConfig;
import com.netease.environment.config.SdkConstants;
import com.netease.environment.config.SdkData;
import com.netease.environment.model.RegexGetter;
import com.netease.environment.task.InitialTask;
import com.netease.environment.task.ReviewNicknameCallable;
import com.netease.environment.task.ReviewWordsCallable;
import com.netease.environment.utils.JsonUtils;
import com.netease.environment.utils.LogUtils;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class EnvManager {
    private static final String TAG = EnvManager.class.getSimpleName();

    public static void initSDK(Context context, String gameId, String secretKey, String host) {
        LogUtils.info(TAG, "int SDK");
        if (context == null || gameId == null || secretKey == null || host == null) {
            LogUtils.info(TAG, "parameter is null");
            return;
        }
        if (gameId.isEmpty() || secretKey.isEmpty() || host.isEmpty()) {
            LogUtils.info(TAG, "parameter is empty");
            return;
        }
        String gameId2 = gameId.toLowerCase();
        String secretKey2 = secretKey.toLowerCase();
        SdkData.setContext(context);
        SdkData.setGameId(gameId2);
        SdkData.setRC4Key(secretKey2);
        SdkData.setHost(host);
        RegexGetter.setPatternMap(SdkData.getContext());
        new InitialTask(SdkData.getContext()).execute(new Void[0]);
    }

    public static void initSDKWithTestEnable(Context context, String gameId, String secretKey, String host, boolean ifTest) {
        SdkData.setIfTest(ifTest);
        initSDK(context, gameId, secretKey, host);
    }

    public static void enableLog(boolean enable) {
        LogUtils.enableLog(enable);
        LogUtils.info(TAG, "enable log : " + enable);
    }

    public static String reviewNickname(String nickname) {
        String result;
        long start = System.currentTimeMillis();
        LogUtils.info(TAG, "review nickname : " + nickname);
        if (SdkData.getContext() == null) {
            LogUtils.info(TAG, SdkConstants.RESULT_MESSAGE_CONTEXT_NULL);
            return JsonUtils.getResultJsonString(100, SdkConstants.RESULT_MESSAGE_CONTEXT_NULL, "-1");
        }
        if (nickname == null || nickname.isEmpty()) {
            LogUtils.info(TAG, "parameter is null or empty");
            return JsonUtils.getResultJsonString(100, SdkConstants.RESULT_MESSAGE_EMPTY, "-1");
        }
        if (!SdkConfig.isEnable(SdkData.getContext(), true)) {
            LogUtils.info(TAG, "sdk is disable");
            return JsonUtils.getResultJsonString(200, SdkConstants.RESULT_MESSAGE_PASS, "-1");
        }
        ExecutorService executor = Executors.newSingleThreadExecutor();
        JsonUtils.getResultJsonString(100, "error", "-1");
        Future<String> future = executor.submit(new ReviewNicknameCallable(SdkData.getContext(), nickname));
        try {
            try {
                try {
                    result = future.get(SdkConfig.getTaskTimeout(SdkData.getContext(), 1000L), TimeUnit.MILLISECONDS);
                    System.out.println(result);
                } finally {
                    try {
                        executor.shutdown();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    LogUtils.info(TAG, "shut down executor");
                }
            } catch (ExecutionException e) {
                e = e;
                try {
                    future.cancel(true);
                } catch (Exception e22) {
                    e22.printStackTrace();
                }
                String message = "exception";
                try {
                    message = e.getClass().getSimpleName();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                result = JsonUtils.getResultJsonString(100, message, "-1");
                LogUtils.info(TAG, e.toString());
                try {
                    executor.shutdown();
                } catch (Exception e23) {
                    e23.printStackTrace();
                }
                LogUtils.info(TAG, "shut down executor");
                LogUtils.info(TAG, "review nickname result : " + result);
                LogConfig.saveReviewLog(result);
                long cost = System.currentTimeMillis() - start;
                LogUtils.info(TAG, "it cost " + cost + " ms to review nickname ");
                return result;
            } catch (TimeoutException e4) {
                try {
                    future.cancel(true);
                } catch (Exception e24) {
                    e24.printStackTrace();
                }
                result = JsonUtils.getResultJsonString(100, SdkConstants.RESULT_MESSAGE_TIMEOUT, "-1");
                LogUtils.info(TAG, e4.toString());
                try {
                    executor.shutdown();
                } catch (Exception e25) {
                    e25.printStackTrace();
                }
                LogUtils.info(TAG, "shut down executor");
            }
        } catch (InterruptedException e5) {
            e = e5;
            future.cancel(true);
            String message2 = "exception";
            message2 = e.getClass().getSimpleName();
            result = JsonUtils.getResultJsonString(100, message2, "-1");
            LogUtils.info(TAG, e.toString());
            executor.shutdown();
            LogUtils.info(TAG, "shut down executor");
            LogUtils.info(TAG, "review nickname result : " + result);
            LogConfig.saveReviewLog(result);
            long cost2 = System.currentTimeMillis() - start;
            LogUtils.info(TAG, "it cost " + cost2 + " ms to review nickname ");
            return result;
        } catch (Exception e6) {
            try {
                future.cancel(true);
            } catch (Exception e26) {
                e26.printStackTrace();
            }
            String message3 = "exception";
            try {
                message3 = e6.getClass().getSimpleName();
            } catch (Exception e32) {
                e32.printStackTrace();
            }
            result = JsonUtils.getResultJsonString(100, message3, "-1");
            LogUtils.info(TAG, e6.toString());
            try {
                executor.shutdown();
            } catch (Exception e27) {
                e27.printStackTrace();
            }
            LogUtils.info(TAG, "shut down executor");
        }
        LogUtils.info(TAG, "review nickname result : " + result);
        LogConfig.saveReviewLog(result);
        long cost22 = System.currentTimeMillis() - start;
        LogUtils.info(TAG, "it cost " + cost22 + " ms to review nickname ");
        return result;
    }

    public static String reviewWords(String level, String channel, String content) {
        String result;
        long start = System.currentTimeMillis();
        LogUtils.info(TAG, "review words : level=" + level + "_" + SdkConstants.PRE_CHANNEL + channel + "_" + SdkConstants.PRE_CONTENT + content);
        if (SdkData.getContext() == null) {
            LogUtils.info(TAG, SdkConstants.RESULT_MESSAGE_CONTEXT_NULL);
            return JsonUtils.getResultJsonString(100, SdkConstants.RESULT_MESSAGE_CONTEXT_NULL, "-1");
        }
        if (level == null || level.isEmpty() || channel == null || channel.isEmpty() || content == null || content.isEmpty()) {
            LogUtils.info(TAG, "parameter is null or empty");
            return JsonUtils.getResultJsonString(100, SdkConstants.RESULT_MESSAGE_EMPTY, "-1");
        }
        if (!SdkConfig.isEnable(SdkData.getContext(), true)) {
            LogUtils.info(TAG, "sdk is disable");
            return JsonUtils.getResultJsonString(200, SdkConstants.RESULT_MESSAGE_PASS, "-1");
        }
        String composeContent = SdkConstants.PRE_LEVEL + level + "_" + SdkConstants.PRE_CHANNEL + channel + "_" + SdkConstants.PRE_CONTENT + content;
        ExecutorService executor = Executors.newSingleThreadExecutor();
        JsonUtils.getResultJsonString(100, "error", "-1");
        Future<String> future = executor.submit(new ReviewWordsCallable(SdkData.getContext(), composeContent));
        try {
            try {
                result = future.get(SdkConfig.getTaskTimeout(SdkData.getContext(), 1000L), TimeUnit.MILLISECONDS);
                System.out.println(result);
            } finally {
                try {
                    executor.shutdown();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                LogUtils.info(TAG, "shut down executor");
            }
        } catch (InterruptedException e) {
            e = e;
            try {
                future.cancel(true);
            } catch (Exception e22) {
                e22.printStackTrace();
            }
            String message = "exception";
            try {
                message = e.getClass().getSimpleName();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            result = JsonUtils.getResultJsonString(100, message, "-1");
            LogUtils.info(TAG, e.toString());
            try {
                executor.shutdown();
            } catch (Exception e23) {
                e23.printStackTrace();
            }
            LogUtils.info(TAG, "shut down executor");
            LogUtils.info(TAG, "review words result : " + result);
            LogConfig.saveReviewLog(result);
            long cost = System.currentTimeMillis() - start;
            LogUtils.info(TAG, "it cost " + cost + " ms to review words ");
            return result;
        } catch (ExecutionException e4) {
            e = e4;
            future.cancel(true);
            String message2 = "exception";
            message2 = e.getClass().getSimpleName();
            result = JsonUtils.getResultJsonString(100, message2, "-1");
            LogUtils.info(TAG, e.toString());
            executor.shutdown();
            LogUtils.info(TAG, "shut down executor");
            LogUtils.info(TAG, "review words result : " + result);
            LogConfig.saveReviewLog(result);
            long cost2 = System.currentTimeMillis() - start;
            LogUtils.info(TAG, "it cost " + cost2 + " ms to review words ");
            return result;
        } catch (TimeoutException e5) {
            try {
                future.cancel(true);
            } catch (Exception e24) {
                e24.printStackTrace();
            }
            result = JsonUtils.getResultJsonString(100, SdkConstants.RESULT_MESSAGE_TIMEOUT, "-1");
            LogUtils.info(TAG, e5.toString());
            try {
                executor.shutdown();
            } catch (Exception e25) {
                e25.printStackTrace();
            }
            LogUtils.info(TAG, "shut down executor");
        } catch (Exception e6) {
            try {
                future.cancel(true);
            } catch (Exception e26) {
                e26.printStackTrace();
            }
            String message3 = "exception";
            try {
                message3 = e6.getClass().getSimpleName();
            } catch (Exception e32) {
                e32.printStackTrace();
            }
            result = JsonUtils.getResultJsonString(100, message3, "-1");
            LogUtils.info(TAG, e6.toString());
            try {
                executor.shutdown();
            } catch (Exception e27) {
                e27.printStackTrace();
            }
            LogUtils.info(TAG, "shut down executor");
        }
        LogUtils.info(TAG, "review words result : " + result);
        LogConfig.saveReviewLog(result);
        long cost22 = System.currentTimeMillis() - start;
        LogUtils.info(TAG, "it cost " + cost22 + " ms to review words ");
        return result;
    }
}
