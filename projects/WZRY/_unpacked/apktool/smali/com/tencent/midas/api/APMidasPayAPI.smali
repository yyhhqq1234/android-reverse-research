.class public Lcom/tencent/midas/api/APMidasPayAPI;
.super Ljava/lang/Object;
.source "APMidasPayAPI.java"


# static fields
.field public static final ACCOUNT_TYPE_COMMON:Ljava/lang/String; = "common"

.field public static final ACCOUNT_TYPE_SECURITY:Ljava/lang/String; = "secrety"

.field public static final ENV_DEV:Ljava/lang/String; = "dev"

.field public static final ENV_RELEASE:Ljava/lang/String; = "release"

.field public static final ENV_TEST:Ljava/lang/String; = "test"

.field public static final ENV_TESTING:Ljava/lang/String; = "testing"

.field public static final LANDSCAPE:I = 0x0

.field public static final PAY_CHANNEL_BANK:Ljava/lang/String; = "bank"

.field public static final PAY_CHANNEL_QQWALLET:Ljava/lang/String; = "qqwallet"

.field public static final PAY_CHANNEL_WECHAT:Ljava/lang/String; = "wechat"

.field public static final PORTRAINT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "APMidasPayAPI"

.field public static final WX_COUPONS:Ljava/lang/String; = "wechatAddCardToWXCardPackage"

.field private static dataPath:Ljava/lang/String;

.field public static env:Ljava/lang/String;

.field public static fromContext:Landroid/content/Context;

.field private static logEnable:Z

.field private static screenType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "release"

    sput-object v0, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/midas/api/APMidasPayAPI;->fromContext:Landroid/content/Context;

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/midas/api/APMidasPayAPI;->logEnable:Z

    .line 84
    const/4 v0, -0x1

    sput v0, Lcom/tencent/midas/api/APMidasPayAPI;->screenType:I

    .line 85
    const-string v0, ""

    sput-object v0, Lcom/tencent/midas/api/APMidasPayAPI;->dataPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static H5Release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 708
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->x5Webview:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 709
    sput-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->x5Webview:Lcom/tencent/smtt/sdk/WebView;

    .line 712
    :cond_0
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 713
    sput-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->webview:Landroid/webkit/WebView;

    .line 715
    :cond_1
    return-void
.end method

.method public static InnerH5PayInit(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 145
    const-string v0, "APMidasPayAPI"

    const-string v1, "InnerH5PayInit enter"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_INNER_WEBVIEW:I

    sput v0, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_WEBVIEW:I

    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/midas/control/APMidasPayHelper;->h5Init(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/tencent/smtt/sdk/WebView;)V

    .line 148
    return-void
.end method

.method public static InnerH5PayInitX5(Landroid/app/Activity;Lcom/tencent/smtt/sdk/WebView;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;

    .prologue
    .line 168
    const-string v0, "APMidasPayAPI"

    const-string v1, "InnerH5PayInit enter"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_INNER_WEBVIEW:I

    sput v0, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_WEBVIEW:I

    .line 170
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tencent/midas/control/APMidasPayHelper;->h5Init(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/tencent/smtt/sdk/WebView;)V

    .line 171
    return-void
.end method

.method private static checkInitCommParam(Landroid/content/Context;Lcom/tencent/midas/api/request/APMidasBaseRequest;)Z
    .locals 5
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 529
    sget-object v3, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    const-string v4, "release"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 532
    :try_start_0
    invoke-static {}, Lcom/pay/tool/APMidasCommMethod;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "packageName":Ljava/lang/String;
    const-string v3, "com.tencent.unipay"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 537
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 538
    const-string/jumbo v3, "\u521d\u59cb\u5316request\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 539
    goto :goto_0

    .line 542
    :cond_2
    iget-object v3, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->offerId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 543
    const-string/jumbo v3, "\u521d\u59cb\u5316offerid\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 544
    goto :goto_0

    .line 545
    :cond_3
    iget-object v3, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 546
    const-string/jumbo v3, "\u521d\u59cb\u5316openId\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 547
    goto :goto_0

    .line 548
    :cond_4
    iget-object v3, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 549
    const-string/jumbo v3, "\u521d\u59cb\u5316openKey\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 550
    goto :goto_0

    .line 551
    :cond_5
    iget-object v3, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 552
    const-string/jumbo v3, "\u521d\u59cb\u5316sessionId\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 553
    goto :goto_0

    .line 554
    :cond_6
    iget-object v3, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 555
    const-string/jumbo v3, "\u521d\u59cb\u5316sessionType\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 556
    goto :goto_0

    .line 557
    :cond_7
    iget-object v3, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pf:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 558
    const-string/jumbo v3, "\u521d\u59cb\u5316pf\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 559
    goto/16 :goto_0

    .line 560
    :cond_8
    iget-object v3, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pfKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    const-string/jumbo v3, "\u521d\u59cb\u5316pfKey\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 562
    goto/16 :goto_0

    .line 564
    .end local v0    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public static closeAll()V
    .locals 0

    .prologue
    .line 524
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginStatic;->removeAll()V

    .line 525
    return-void
.end method

.method public static consumeAsync(Landroid/app/Activity;Ljava/util/List;Lcom/tencent/midas/api/request/OnAPConsumeFinishedListener;)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/tencent/midas/api/request/OnAPConsumeFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/midas/api/request/APPurchase;",
            ">;",
            "Lcom/tencent/midas/api/request/OnAPConsumeFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/midas/api/request/APPurchase;>;"
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 674
    const-string v7, "APMidasPayAPI"

    const-string v8, "consumeAsync enter"

    invoke-static {v7, v8}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    new-instance v3, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v3}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 680
    .local v3, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    const/4 v0, 0x0

    .line 682
    .local v0, "ListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-class v7, Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 688
    :goto_0
    const/4 v5, 0x0

    .line 690
    .local v5, "queryInventory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v7, "com.tencent.midas.api.request.OnAPConsumeFinishedListener"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 695
    :goto_1
    new-array v2, v12, [Ljava/lang/Class;

    aput-object v0, v2, v10

    aput-object v5, v2, v11

    .line 696
    .local v2, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v7, "consumeAsync"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object p1, v8, v10

    aput-object p2, v8, v11

    invoke-virtual {v3, p0, v7, v8, v2}, Lcom/tencent/midas/control/APMidasPayHelper;->call(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 697
    .local v6, "ret":Ljava/lang/Object;
    const-string v7, "APMidasPayAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "consumeAsync ret "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    if-nez v6, :cond_0

    .line 699
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v4, "purch":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/midas/api/request/APPurchase;>;"
    invoke-interface {p2, v4}, Lcom/tencent/midas/api/request/OnAPConsumeFinishedListener;->onConsumeFinished(Ljava/util/List;)V

    .line 702
    .end local v4    # "purch":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/midas/api/request/APPurchase;>;"
    :cond_0
    return-void

    .line 683
    .end local v2    # "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "queryInventory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 684
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "APMidasPayAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "consumeAsync setEnv e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v5    # "queryInventory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 692
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "APMidasPayAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "consumeAsync OnAPConsumeFinishedListener e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInfo(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasNetCallBack;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "reqType"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p3, "callBack"    # Lcom/tencent/midas/api/IAPMidasNetCallBack;

    .prologue
    .line 466
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/tencent/midas/api/APMidasPayAPI;->fromContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->payDataRelease()V

    .line 476
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v2

    const-string v3, "getinfo"

    invoke-virtual {v2, p2, v3}, Lcom/tencent/midas/data/APPluginReportManager;->payInterfaceInit(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v2

    const-string v3, "getinfo"

    const-string/jumbo v4, "timename.launchinfo"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v1, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v1}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 484
    .local v1, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    sget-object v2, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/midas/control/APMidasPayHelper;->setEnv(Ljava/lang/String;)V

    .line 485
    sget-boolean v2, Lcom/tencent/midas/api/APMidasPayAPI;->logEnable:Z

    invoke-static {v2}, Lcom/tencent/midas/control/APMidasPayHelper;->setLogEnable(Z)V

    .line 487
    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/tencent/midas/control/APMidasPayHelper;->getInfo(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasNetCallBack;)I

    .line 488
    return-void

    .line 468
    .end local v1    # "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "fromContext"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getJSContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-static {p0}, Lcom/tencent/midas/control/APMidasPayHelper;->getJSContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMidasCoreVersion(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 315
    const-string v0, "APMidasPayAPI"

    const-string v1, "getMidasCoreVersion enter"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->getMidasCoreVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMidasPluginVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 296
    const-string v2, "APMidasPayAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMidasPluginVersion enter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v1, ""

    .line 299
    .local v1, "version":Ljava/lang/String;
    invoke-static {}, Lcom/pay/tool/APMidasCommMethod;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "com.tencent.unipay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-static {}, Lcom/pay/tool/APMidasCommMethod;->getApplicationVersion()Ljava/lang/String;

    move-result-object v1

    .line 306
    :goto_0
    return-object v1

    .line 304
    :cond_0
    const-string v1, "1.6.9a"

    goto :goto_0
.end method

.method public static getMidasSDKVersion(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 325
    const-string v3, "APMidasPayAPI"

    const-string v4, "getMidasSDKVersion enter"

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "methodName":Ljava/lang/String;
    new-instance v1, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v1}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 329
    .local v1, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v3}, Lcom/tencent/midas/control/APMidasPayHelper;->call(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 330
    .local v2, "sdkVersion":Ljava/lang/String;
    return-object v2
.end method

.method public static getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/tencent/midas/api/APMidasPayAPI;->dataPath:Ljava/lang/String;

    return-object v0
.end method

.method public static h5PayHook(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)I
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "jsResult"    # Landroid/webkit/JsResult;

    .prologue
    .line 193
    const-string v1, "APMidasPayAPI"

    const-string v2, "h5PayHook enter"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v0, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v0}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 195
    .local v0, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    sget-object v1, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/midas/control/APMidasPayHelper;->setEnv(Ljava/lang/String;)V

    .line 196
    sget-boolean v1, Lcom/tencent/midas/api/APMidasPayAPI;->logEnable:Z

    invoke-static {v1}, Lcom/tencent/midas/control/APMidasPayHelper;->setLogEnable(Z)V

    .line 197
    sget v1, Lcom/tencent/midas/api/APMidasPayAPI;->screenType:I

    invoke-virtual {v0, v1}, Lcom/tencent/midas/control/APMidasPayHelper;->setScreenType(I)V

    .line 198
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/midas/control/APMidasPayHelper;->h5Pay(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static h5PayHookX5(Landroid/app/Activity;Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)I
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "jsResult"    # Lcom/tencent/smtt/export/external/interfaces/JsResult;

    .prologue
    .line 212
    const-string v1, "APMidasPayAPI"

    const-string v2, "h5PayHookX5 enter"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v0}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 214
    .local v0, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    sget-object v1, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/midas/control/APMidasPayHelper;->setEnv(Ljava/lang/String;)V

    .line 215
    sget-boolean v1, Lcom/tencent/midas/api/APMidasPayAPI;->logEnable:Z

    invoke-static {v1}, Lcom/tencent/midas/control/APMidasPayHelper;->setLogEnable(Z)V

    .line 216
    sget v1, Lcom/tencent/midas/api/APMidasPayAPI;->screenType:I

    invoke-virtual {v0, v1}, Lcom/tencent/midas/control/APMidasPayHelper;->setScreenType(I)V

    .line 217
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/midas/control/APMidasPayHelper;->h5Pay(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static h5PayInit(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 133
    const-string v0, "APMidasPayAPI"

    const-string v1, "h5PayInit enter"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_OUT_WEBVIEW:I

    sput v0, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_WEBVIEW:I

    .line 135
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/midas/control/APMidasPayHelper;->h5Init(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/tencent/smtt/sdk/WebView;)V

    .line 136
    return-void
.end method

.method public static h5PayInitX5(Landroid/app/Activity;Lcom/tencent/smtt/sdk/WebView;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;

    .prologue
    .line 157
    const-string v0, "APMidasPayAPI"

    const-string v1, "h5PayInitX5 enter"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tencent/midas/control/APMidasPayHelper;->h5Init(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/tencent/smtt/sdk/WebView;)V

    .line 159
    return-void
.end method

.method public static hfCouponsRollBack(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "strJson"    # Ljava/lang/String;

    .prologue
    .line 494
    const-string v1, "APMidasPayAPI"

    const-string v2, "hfCouponsRollBack enter"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v0, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v0}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 496
    .local v0, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    const-string v1, "hfCouponsRollBack"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/midas/control/APMidasPayHelper;->call(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
    .locals 3
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    .line 101
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->initDataRelease()V

    .line 104
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v0

    const-string v1, "init"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/midas/data/APPluginReportManager;->initInterfaceInit(Ljava/lang/String;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/midas/api/APMidasPayAPI;->logEnable:Z

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLogUtil;->initAPLogInPlugin(Landroid/content/Context;Z)V

    .line 110
    const-string v0, "APMidasPayAPI"

    const-string v1, "init new enter"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v0

    const-string v1, "init"

    const-string/jumbo v2, "timename.init"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/midas/control/APMidasPayHelper;->setEnv(Ljava/lang/String;)V

    .line 116
    sget-boolean v0, Lcom/tencent/midas/api/APMidasPayAPI;->logEnable:Z

    invoke-static {v0}, Lcom/tencent/midas/control/APMidasPayHelper;->setLogEnable(Z)V

    .line 119
    invoke-static {p0, p1}, Lcom/tencent/midas/api/APMidasPayAPI;->checkInitCommParam(Landroid/content/Context;Lcom/tencent/midas/api/request/APMidasBaseRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p0, p1}, Lcom/tencent/midas/control/APMidasPayHelper;->init(Landroid/content/Context;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {p0}, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess:Z

    goto :goto_0
.end method

.method public static launchNet(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasNetRequest;Lcom/tencent/midas/api/IAPMidasNetCallBack;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasNetRequest;
    .param p2, "callBack"    # Lcom/tencent/midas/api/IAPMidasNetCallBack;

    .prologue
    .line 429
    const-string v2, "APMidasPayAPI"

    const-string v3, "launchNet enter"

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/tencent/midas/api/APMidasPayAPI;->fromContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->payDataRelease()V

    .line 441
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v2

    const-string v3, "launchnet"

    invoke-virtual {v2, p1, v3}, Lcom/tencent/midas/data/APPluginReportManager;->payInterfaceInit(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v2

    const-string v3, "launchnet"

    const-string/jumbo v4, "timename.launchnet"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v1, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v1}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 449
    .local v1, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    sget-object v2, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/midas/control/APMidasPayHelper;->setEnv(Ljava/lang/String;)V

    .line 450
    sget-boolean v2, Lcom/tencent/midas/api/APMidasPayAPI;->logEnable:Z

    invoke-static {v2}, Lcom/tencent/midas/control/APMidasPayHelper;->setLogEnable(Z)V

    .line 452
    invoke-virtual {v1, p0, p1, p2}, Lcom/tencent/midas/control/APMidasPayHelper;->net(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasNetRequest;Lcom/tencent/midas/api/IAPMidasNetCallBack;)I

    .line 453
    return-void

    .line 433
    .end local v1    # "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "fromContext"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p2, "callBack"    # Lcom/tencent/midas/api/IAPMidasPayCallBack;

    .prologue
    .line 364
    const-string v2, "APMidasPayAPI"

    const-string v3, "launchPay enter"

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/tencent/midas/api/APMidasPayAPI;->fromContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    invoke-static {}, Lcom/pay/tool/APMidasTools;->isFastClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    const-string v2, "launchPay"

    const-string v3, "isfast"

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :goto_1
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "fromContext"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->payDataRelease()V

    .line 379
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v2

    const-string v3, "launchpay"

    invoke-virtual {v2, p1, v3}, Lcom/tencent/midas/data/APPluginReportManager;->payInterfaceInit(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v2

    const-string v3, "launchpay"

    const-string/jumbo v4, "timename.launchpay"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v1, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v1}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 384
    .local v1, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    sget-object v2, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/midas/control/APMidasPayHelper;->setEnv(Ljava/lang/String;)V

    .line 385
    sget-boolean v2, Lcom/tencent/midas/api/APMidasPayAPI;->logEnable:Z

    invoke-static {v2}, Lcom/tencent/midas/control/APMidasPayHelper;->setLogEnable(Z)V

    .line 386
    sget v2, Lcom/tencent/midas/api/APMidasPayAPI;->screenType:I

    invoke-virtual {v1, v2}, Lcom/tencent/midas/control/APMidasPayHelper;->setScreenType(I)V

    .line 387
    invoke-virtual {v1, p0, p1, p2}, Lcom/tencent/midas/control/APMidasPayHelper;->pay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)I

    goto :goto_1
.end method

.method public static launchPurchaseFlow(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/APOnIabPurchaseFinished;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p2, "callBack"    # Lcom/tencent/midas/api/APOnIabPurchaseFinished;

    .prologue
    .line 580
    const-string v1, "APMidasPayAPI"

    const-string v2, "launchPurchaseFlow enter"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    sget-object v1, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/midas/control/APMidasPayHelper;->setEnv(Ljava/lang/String;)V

    .line 582
    sget-boolean v1, Lcom/tencent/midas/api/APMidasPayAPI;->logEnable:Z

    invoke-static {v1}, Lcom/tencent/midas/control/APMidasPayHelper;->setLogEnable(Z)V

    .line 584
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    if-nez v1, :cond_1

    .line 585
    :cond_0
    new-instance v0, Lcom/tencent/midas/api/request/APIabResult;

    const/4 v1, 0x3

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/tencent/midas/api/request/APIabResult;-><init>(ILjava/lang/String;)V

    .line 586
    .local v0, "result":Lcom/tencent/midas/api/request/APIabResult;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/tencent/midas/api/APOnIabPurchaseFinished;->onIabPurchaseFinished(Lcom/tencent/midas/api/request/APIabResult;Lcom/tencent/midas/api/request/APPurchase;)V

    .line 587
    const-string v1, "launchPurchaseFlow"

    const-string v2, "parameter is error"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .end local v0    # "result":Lcom/tencent/midas/api/request/APIabResult;
    :goto_0
    return-void

    .line 592
    :cond_1
    instance-of v1, p1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 593
    check-cast v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mIsReceiptMode:Z

    :cond_2
    move-object v1, p1

    .line 598
    check-cast v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->isCanChange:Z

    move-object v1, p1

    .line 599
    check-cast v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    const-string v2, "1"

    iput-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->saveValue:Ljava/lang/String;

    move-object v1, p1

    .line 600
    check-cast v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->tokenType:I

    .line 602
    new-instance v1, Lcom/tencent/midas/api/APMidasPayAPI$1;

    invoke-direct {v1, p2}, Lcom/tencent/midas/api/APMidasPayAPI$1;-><init>(Lcom/tencent/midas/api/APOnIabPurchaseFinished;)V

    invoke-static {p0, p1, v1}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    goto :goto_0
.end method

.method public static launchWXMiniProgram(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 503
    const-string v1, "APMidasPayAPI"

    const-string v2, "launchWXMiniProgram enter"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v0, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v0}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 505
    .local v0, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/midas/control/APMidasPayHelper;->launchWXMiniProgram(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 506
    return-void
.end method

.method public static launchWXMiniProgram_OnResponse(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resultCode"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 513
    const-string v1, "APMidasPayAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchWXMiniProgram_OnResponse enter: bundle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v0, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v0}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 515
    .local v0, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/midas/control/APMidasPayHelper;->launchWXMiniProgram_OnResponse(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 516
    return-void
.end method

.method public static launchWeb(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p2, "callBack"    # Lcom/tencent/midas/api/IAPMidasPayCallBack;

    .prologue
    .line 398
    const-string v2, "APMidasPayAPI"

    const-string v3, "launchWeb enter"

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/tencent/midas/api/APMidasPayAPI;->fromContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->payDataRelease()V

    .line 410
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v2

    const-string v3, "launchweb"

    invoke-virtual {v2, p1, v3}, Lcom/tencent/midas/data/APPluginReportManager;->payInterfaceInit(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v2

    const-string v3, "launchweb"

    const-string/jumbo v4, "timename.launchweb"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v1, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v1}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 415
    .local v1, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    sget-object v2, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/midas/control/APMidasPayHelper;->setEnv(Ljava/lang/String;)V

    .line 416
    sget-boolean v2, Lcom/tencent/midas/api/APMidasPayAPI;->logEnable:Z

    invoke-static {v2}, Lcom/tencent/midas/control/APMidasPayHelper;->setLogEnable(Z)V

    .line 417
    sget v2, Lcom/tencent/midas/api/APMidasPayAPI;->screenType:I

    invoke-virtual {v1, v2}, Lcom/tencent/midas/control/APMidasPayHelper;->setScreenType(I)V

    .line 418
    invoke-virtual {v1, p0, p1, p2}, Lcom/tencent/midas/control/APMidasPayHelper;->web(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 419
    return-void

    .line 402
    .end local v1    # "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "fromContext"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static queryInventoryAsync(Landroid/app/Activity;ZLjava/util/List;Lcom/tencent/midas/api/request/APQueryInventoryFinishedListener;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/tencent/midas/api/request/APQueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/util/List",
            "<*>;",
            "Lcom/tencent/midas/api/request/APQueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 635
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v7, "APMidasPayAPI"

    const-string v8, "queryInventoryAsync enter"

    invoke-static {v7, v8}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance v3, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v3}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 642
    .local v3, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    const/4 v0, 0x0

    .line 644
    .local v0, "ListClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-class v7, Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 650
    :goto_0
    const/4 v4, 0x0

    .line 652
    .local v4, "queryInventory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v7, "com.tencent.midas.api.request.APQueryInventoryFinishedListener"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 657
    :goto_1
    const/4 v7, 0x3

    new-array v2, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Boolean;

    aput-object v8, v2, v7

    const/4 v7, 0x1

    aput-object v0, v2, v7

    const/4 v7, 0x2

    aput-object v4, v2, v7

    .line 658
    .local v2, "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v7, "queryInventoryAsync"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-virtual {v3, p0, v7, v8, v2}, Lcom/tencent/midas/control/APMidasPayHelper;->call(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 660
    .local v6, "ret":Ljava/lang/Object;
    const-string v7, "APMidasPayAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryInventoryAsync ret "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    if-nez v6, :cond_0

    .line 662
    new-instance v5, Lcom/tencent/midas/api/request/APIabResult;

    const/4 v7, -0x1

    const-string v8, ""

    invoke-direct {v5, v7, v8}, Lcom/tencent/midas/api/request/APIabResult;-><init>(ILjava/lang/String;)V

    .line 663
    .local v5, "result":Lcom/tencent/midas/api/request/APIabResult;
    const/4 v7, 0x0

    invoke-interface {p3, v5, v7}, Lcom/tencent/midas/api/request/APQueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/tencent/midas/api/request/APIabResult;Lcom/tencent/midas/api/request/APInventory;)V

    .line 665
    .end local v5    # "result":Lcom/tencent/midas/api/request/APIabResult;
    :cond_0
    return-void

    .line 645
    .end local v2    # "paramsTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "queryInventory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "APMidasPayAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryInventoryAsync setEnv e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 653
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "queryInventory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 654
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "APMidasPayAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryInventoryAsync APQueryInventoryFinishedListener e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static setEnv(Ljava/lang/String;)V
    .locals 9
    .param p0, "payEnv"    # Ljava/lang/String;

    .prologue
    .line 227
    sput-object p0, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "appDataInterfaceCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v5, "com.pay.tool.APAppDataInterface"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 238
    const/4 v3, 0x0

    .line 240
    .local v3, "getInstance":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v5, "singleton"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 246
    :goto_0
    const/4 v1, 0x0

    .line 248
    .local v1, "appDataInterfaceObj":Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 255
    .end local v1    # "appDataInterfaceObj":Ljava/lang/Object;
    :goto_1
    const/4 v4, 0x0

    .line 257
    .local v4, "setEnv":Ljava/lang/reflect/Method;
    :try_start_3
    const-string v5, "setEnv"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 264
    :goto_2
    const/4 v5, 0x1

    :try_start_4
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 277
    .end local v3    # "getInstance":Ljava/lang/reflect/Method;
    .end local v4    # "setEnv":Ljava/lang/reflect/Method;
    :cond_0
    :goto_3
    const-string v5, "MidasPluginSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "env= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void

    .line 241
    .restart local v3    # "getInstance":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    :try_start_5
    const-string v5, "APMidasPayAPI"

    const-string v6, "com.pay.tool.APAppDataInterface ClassNotFound"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 271
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "getInstance":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "APMidasPayAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setEnv exception e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 249
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "appDataInterfaceObj":Ljava/lang/Object;
    .restart local v3    # "getInstance":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v2

    .line 250
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v5, "APMidasPayAPI"

    const-string v6, "com.pay.tool.APAppDataInterface invoke error"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 258
    .end local v1    # "appDataInterfaceObj":Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "setEnv":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "APMidasPayAPI"

    const-string v6, "setEnv no such method"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 265
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "APMidasPayAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setEnv invoke error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3
.end method

.method public static setLogEnable(Z)V
    .locals 0
    .param p0, "isEnable"    # Z

    .prologue
    .line 286
    sput-boolean p0, Lcom/tencent/midas/api/APMidasPayAPI;->logEnable:Z

    .line 288
    return-void
.end method

.method public static setParentClassloader(Ldalvik/system/DexClassLoader;)V
    .locals 3
    .param p0, "classLoader"    # Ldalvik/system/DexClassLoader;

    .prologue
    .line 88
    const-string v0, "APMidasPayAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParentClassloader enter classLoader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginLoader;->setParentClassLoader(Ldalvik/system/DexClassLoader;)V

    .line 90
    return-void
.end method

.method public static setPath(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 352
    const-string v0, "APMidasPayAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPath enter path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sput-object p0, Lcom/tencent/midas/api/APMidasPayAPI;->dataPath:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public static setScreenType(Landroid/app/Activity;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # I

    .prologue
    .line 344
    sput p1, Lcom/tencent/midas/api/APMidasPayAPI;->screenType:I

    .line 345
    return-void
.end method
