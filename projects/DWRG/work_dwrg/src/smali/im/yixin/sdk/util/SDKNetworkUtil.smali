.class public Lim/yixin/sdk/util/SDKNetworkUtil;
.super Ljava/lang/Object;
.source "SDKNetworkUtil.java"


# static fields
.field public static final NETWORK_TYPE_2G:Ljava/lang/String; = "2G"

.field public static final NETWORK_TYPE_3G:Ljava/lang/String; = "3G"

.field public static final NETWORK_TYPE_4G:Ljava/lang/String; = "4G"

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field private static NETWORK_TYPE_NO:Ljava/lang/String; = null

.field private static NETWORK_TYPE_NOPERMIT:Ljava/lang/String; = null

.field public static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field private static final TAG:Ljava/lang/String; = "SDKNetworkUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "No Network"

    sput-object v0, Lim/yixin/sdk/util/SDKNetworkUtil;->NETWORK_TYPE_NO:Ljava/lang/String;

    .line 41
    const-string v0, "No Permit Reading Network State"

    sput-object v0, Lim/yixin/sdk/util/SDKNetworkUtil;->NETWORK_TYPE_NOPERMIT:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCookies(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 155
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 156
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 157
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 158
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 159
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 160
    return-void
.end method

.method private static getMobileSubtypeName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "subType"    # I

    .prologue
    .line 126
    if-nez p0, :cond_0

    .line 127
    const-string v0, ""

    .line 145
    :goto_0
    return-object v0

    .line 129
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 145
    :pswitch_0
    const-string v0, "\u975ewifi\u7f51\u7edc"

    goto :goto_0

    .line 133
    :pswitch_1
    const-string v0, "2G"

    goto :goto_0

    .line 141
    :pswitch_2
    const-string v0, "3G"

    goto :goto_0

    .line 143
    :pswitch_3
    const-string v0, "4G"

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    if-nez p0, :cond_1

    .line 83
    const-string v3, ""

    .line 114
    :cond_0
    :goto_0
    return-object v3

    .line 85
    :cond_1
    invoke-static {p0}, Lim/yixin/sdk/util/DevicesUtils;->getPermissions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 86
    const-string v6, "SDKNetworkUtil"

    const-string v7, "no NetworkName because no android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v3, Lim/yixin/sdk/util/SDKNetworkUtil;->NETWORK_TYPE_NOPERMIT:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_2
    sget-object v3, Lim/yixin/sdk/util/SDKNetworkUtil;->NETWORK_TYPE_NO:Ljava/lang/String;

    .line 92
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 93
    .local v0, "conn":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 97
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIFI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 103
    const-string v3, "WIFI"

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-static {p0, v6}, Lim/yixin/sdk/util/SDKNetworkUtil;->getMobileSubtypeName(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 108
    .end local v0    # "conn":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 110
    .local v4, "se":Ljava/lang/SecurityException;
    sget-object v3, Lim/yixin/sdk/util/SDKNetworkUtil;->NETWORK_TYPE_NOPERMIT:Ljava/lang/String;

    goto :goto_0

    .line 111
    .end local v4    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v6

    const-class v7, Lim/yixin/sdk/util/SDKNetworkUtil;

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "an error occured when getNetworkName "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-virtual {v6, v7, v8, v1}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    if-nez p0, :cond_1

    .line 45
    const-string v2, ""

    .line 72
    :cond_0
    :goto_0
    return-object v2

    .line 47
    :cond_1
    const-string v2, ""

    .line 48
    .local v2, "networkType":Ljava/lang/String;
    invoke-static {p0}, Lim/yixin/sdk/util/DevicesUtils;->getPermissions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 49
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v5

    const-class v6, Lim/yixin/sdk/util/SDKNetworkUtil;

    .line 50
    const-string v7, "no NetworkType because no android.permission.ACCESS_NETWORK_STATE"

    const/4 v8, 0x0

    .line 49
    invoke-virtual {v5, v6, v7, v8}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    :cond_2
    :try_start_0
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 56
    .local v0, "conn":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 61
    .local v3, "networkinfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 64
    .end local v0    # "conn":Landroid/net/ConnectivityManager;
    .end local v3    # "networkinfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v4

    .line 66
    .local v4, "se":Ljava/lang/SecurityException;
    goto :goto_0

    .line 67
    .end local v4    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v5

    const-class v6, Lim/yixin/sdk/util/SDKNetworkUtil;

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "an error occured when getNetworkName "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-virtual {v5, v6, v7, v1}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const-string v0, "WIFI"

    invoke-static {p0}, Lim/yixin/sdk/util/SDKNetworkUtil;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
