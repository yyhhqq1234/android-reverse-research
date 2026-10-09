.class public Lcom/tencent/msdk/sdkwrapper/bugly/MSDKBuglyUtil;
.super Ljava/lang/Object;
.source "MSDKBuglyUtil.java"


# static fields
.field private static isBuglyOpenSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/msdk/sdkwrapper/bugly/MSDKBuglyUtil;->isBuglyOpenSwitch:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buglyLog(Lcom/tencent/msdk/stat/eBuglyLogLevel;Ljava/lang/String;)V
    .locals 2
    .param p0, "level"    # Lcom/tencent/msdk/stat/eBuglyLogLevel;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, "MSDKBuglyLog"

    .line 153
    .local v0, "tag":Ljava/lang/String;
    sget-object v1, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_S:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    if-ne p0, v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    sget-object v1, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_E:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    if-ne p0, v1, :cond_2

    .line 156
    invoke-static {v0, p1}, Lcom/tencent/bugly/msdk/crashreport/BuglyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    sget-object v1, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_W:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    if-ne p0, v1, :cond_3

    .line 158
    invoke-static {v0, p1}, Lcom/tencent/bugly/msdk/crashreport/BuglyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_3
    sget-object v1, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_D:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    if-ne p0, v1, :cond_4

    .line 160
    invoke-static {v0, p1}, Lcom/tencent/bugly/msdk/crashreport/BuglyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_4
    sget-object v1, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_I:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    if-ne p0, v1, :cond_5

    .line 162
    invoke-static {v0, p1}, Lcom/tencent/bugly/msdk/crashreport/BuglyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_5
    sget-object v1, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_V:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    if-ne p0, v1, :cond_0

    .line 164
    invoke-static {v0, p1}, Lcom/tencent/bugly/msdk/crashreport/BuglyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBuglyVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v0, v1, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    .line 144
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/CrashReport;->getBuglyVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initBugly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v5

    iget-object v0, v5, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    .line 26
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Lcom/tencent/bugly/msdk/crashreport/CrashReport$UserStrategy;

    invoke-direct {v4, v0}, Lcom/tencent/bugly/msdk/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    .line 27
    .local v4, "strategy":Lcom/tencent/bugly/msdk/crashreport/CrashReport$UserStrategy;
    invoke-virtual {v4, p2}, Lcom/tencent/bugly/msdk/crashreport/CrashReport$UserStrategy;->setAppChannel(Ljava/lang/String;)Lcom/tencent/bugly/msdk/BuglyStrategy;

    .line 28
    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Lcom/tencent/bugly/msdk/crashreport/CrashReport$UserStrategy;->setAppReportDelay(J)Lcom/tencent/bugly/msdk/BuglyStrategy;

    .line 29
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/msdk/framework/MSDKEnv;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/bugly/msdk/crashreport/CrashReport$UserStrategy;->setAppVersion(Ljava/lang/String;)Lcom/tencent/bugly/msdk/BuglyStrategy;

    .line 30
    new-instance v5, Lcom/tencent/msdk/sdkwrapper/bugly/MSDKBuglyUtil$1;

    invoke-direct {v5}, Lcom/tencent/msdk/sdkwrapper/bugly/MSDKBuglyUtil$1;-><init>()V

    invoke-virtual {v4, v5}, Lcom/tencent/bugly/msdk/crashreport/CrashReport$UserStrategy;->setCrashHandleCallback(Lcom/tencent/bugly/msdk/crashreport/CrashReport$CrashHandleCallback;)V

    .line 122
    invoke-static {v0}, Lcom/tencent/msdk/config/ConfigManager;->needStatLog(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 125
    .local v2, "isDebug":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v0, p0, v5, v4}, Lcom/tencent/bugly/msdk/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/msdk/crashreport/CrashReport$UserStrategy;)V

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/msdk/framework/MSDKEnv;->getMSDKVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_ref"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "msdkVersionRef":Ljava/lang/String;
    const-string v5, "1105021739"

    invoke-static {v0, v5, v3}, Lcom/tencent/bugly/msdk/crashreport/CrashReport;->setSdkExtraData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/tencent/bugly/msdk/crashreport/CrashReport;->enableBugly(Z)V

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    invoke-static {p1}, Lcom/tencent/bugly/msdk/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init and set bugly userid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 134
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init Bugly in java appid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",channelId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",openid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",msdkVersion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "isDebug":Ljava/lang/Boolean;
    .end local v3    # "msdkVersionRef":Ljava/lang/String;
    .end local v4    # "strategy":Lcom/tencent/bugly/msdk/crashreport/CrashReport$UserStrategy;
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "init bugly exception in java"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 138
    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static removeGameStatus(Ljava/lang/String;)V
    .locals 4
    .param p0, "statusKey"    # Ljava/lang/String;

    .prologue
    .line 180
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove statusKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v0, v2, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    .line 182
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p0}, Lcom/tencent/bugly/msdk/crashreport/CrashReport;->removeUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setGameStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "gameStatus"    # Ljava/lang/String;
    .param p1, "statusKey"    # Ljava/lang/String;

    .prologue
    .line 170
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set gameStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " statusKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v0, v2, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    .line 172
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1, p0}, Lcom/tencent/bugly/msdk/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setLoginStateToBuglySDK(Ljava/lang/String;)V
    .locals 2
    .param p0, "openid"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openid is set in crashreport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 149
    invoke-static {p0}, Lcom/tencent/bugly/msdk/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    .line 150
    return-void
.end method
