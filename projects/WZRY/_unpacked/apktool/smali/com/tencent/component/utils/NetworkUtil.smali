.class public Lcom/tencent/component/utils/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/utils/NetworkUtil$DNS;,
        Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;
    }
.end annotation


# static fields
.field public static final APN_NAME_WIFI:Ljava/lang/String; = "wifi"

.field private static final PREFERRED_APN_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "NetworkUtil"

.field private static final sAPNProxies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x50

    .line 98
    const-string v0, "content://telephony/carriers/preferapn"

    .line 99
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/component/utils/NetworkUtil;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/component/utils/NetworkUtil;->sAPNProxies:Ljava/util/HashMap;

    .line 105
    sget-object v0, Lcom/tencent/component/utils/NetworkUtil;->sAPNProxies:Ljava/util/HashMap;

    const-string v1, "cmwap"

    new-instance v2, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;

    const-string v3, "10.0.0.172"

    invoke-direct {v2, v3, v4}, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/tencent/component/utils/NetworkUtil;->sAPNProxies:Ljava/util/HashMap;

    const-string v1, "3gwap"

    new-instance v2, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;

    const-string v3, "10.0.0.172"

    invoke-direct {v2, v3, v4}, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/tencent/component/utils/NetworkUtil;->sAPNProxies:Ljava/util/HashMap;

    const-string/jumbo v1, "uniwap"

    new-instance v2, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;

    const-string v3, "10.0.0.172"

    invoke-direct {v2, v3, v4}, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/tencent/component/utils/NetworkUtil;->sAPNProxies:Ljava/util/HashMap;

    const-string v1, "ctwap"

    new-instance v2, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;

    const-string v3, "10.0.0.200"

    invoke-direct {v2, v3, v4}, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    return-void
.end method

.method public static getAPN(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 170
    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 171
    .local v6, "activeNetInfo":Landroid/net/NetworkInfo;
    if-nez v6, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-object v7

    .line 176
    :cond_1
    const/4 v7, 0x0

    .line 177
    .local v7, "apn":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 178
    const-string/jumbo v7, "wifi"

    .line 200
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 202
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 181
    invoke-static {}, Lcom/tencent/component/utils/PlatformUtil;->version()I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_5

    .line 182
    const/4 v8, 0x0

    .line 184
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/component/utils/NetworkUtil;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 185
    :goto_2
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    const-string v0, "apn"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    goto :goto_2

    .line 191
    :cond_4
    if-eqz v8, :cond_5

    .line 192
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 196
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_5
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 188
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 189
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    if-eqz v8, :cond_5

    .line 192
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 191
    .end local v9    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 192
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    :try_start_0
    const-string v2, "connectivity"

    .line 48
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 49
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 52
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :goto_0
    return-object v2

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "NetworkUtil"

    const-string v3, "fail to get active network info"

    invoke-static {v2, v3, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDNS(Landroid/content/Context;)Lcom/tencent/component/utils/NetworkUtil$DNS;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 223
    new-instance v1, Lcom/tencent/component/utils/NetworkUtil$DNS;

    invoke-direct {v1}, Lcom/tencent/component/utils/NetworkUtil$DNS;-><init>()V

    .line 224
    .local v1, "dns":Lcom/tencent/component/utils/NetworkUtil$DNS;
    if-eqz p0, :cond_0

    .line 225
    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 227
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 228
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v0, :cond_0

    .line 229
    iget v3, v0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v3}, Lcom/tencent/component/utils/NetworkUtil;->int32ToIPStr(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/component/utils/NetworkUtil$DNS;->primary:Ljava/lang/String;

    .line 230
    iget v3, v0, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v3}, Lcom/tencent/component/utils/NetworkUtil;->int32ToIPStr(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/component/utils/NetworkUtil$DNS;->secondary:Ljava/lang/String;

    .line 234
    .end local v0    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    iget-object v3, v1, Lcom/tencent/component/utils/NetworkUtil$DNS;->primary:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/tencent/component/utils/NetworkUtil$DNS;->secondary:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 236
    const-string v3, "net.dns1"

    invoke-static {v3, v4}, Lcom/tencent/component/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/component/utils/NetworkUtil$DNS;->primary:Ljava/lang/String;

    .line 237
    const-string v3, "net.dns2"

    invoke-static {v3, v4}, Lcom/tencent/component/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/component/utils/NetworkUtil$DNS;->secondary:Ljava/lang/String;

    .line 239
    :cond_1
    return-object v1
.end method

.method public static getProxy(Landroid/content/Context;)Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->isViaMobile(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v2

    .line 119
    :cond_1
    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->getProxyHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "proxyHost":Ljava/lang/String;
    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->getProxyPort(Landroid/content/Context;)I

    move-result v1

    .line 121
    .local v1, "proxyPort":I
    invoke-static {v0}, Lcom/tencent/component/utils/NetworkUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-ltz v1, :cond_0

    .line 122
    new-instance v2, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;

    invoke-direct {v2, v0, v1}, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static getProxy(Landroid/content/Context;Z)Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apnProxy"    # Z

    .prologue
    .line 112
    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->getProxy(Landroid/content/Context;)Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->getProxyByAPN(Landroid/content/Context;)Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;

    move-result-object v0

    goto :goto_0
.end method

.method public static getProxyByAPN(Landroid/content/Context;)Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->isViaMobile(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-object v2

    .line 164
    :cond_1
    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->getAPN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "apn":Ljava/lang/String;
    sget-object v3, Lcom/tencent/component/utils/NetworkUtil;->sAPNProxies:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;

    .line 166
    .local v1, "proxy":Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->copy()Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;

    move-result-object v2

    goto :goto_0
.end method

.method private static getProxyHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "host":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/component/utils/PlatformUtil;->version()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 131
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 133
    :cond_0
    const-string v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getProxyPort(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v1, -0x1

    .line 141
    .local v1, "port":I
    invoke-static {}, Lcom/tencent/component/utils/PlatformUtil;->version()I

    move-result v3

    const/16 v4, 0xb

    if-ge v3, v4, :cond_3

    .line 142
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    .line 153
    :cond_0
    :goto_0
    if-ltz v1, :cond_1

    const v3, 0xffff

    if-le v1, v3, :cond_2

    .line 155
    :cond_1
    const/4 v1, -0x1

    .line 157
    :cond_2
    return v1

    .line 144
    :cond_3
    const-string v3, "http.proxyPort"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "portStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/component/utils/NetworkUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private static int32ToIPStr(I)Ljava/lang/String;
    .locals 3
    .param p0, "ip"    # I

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v0, "buffer":Ljava/lang/StringBuffer;
    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 255
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 26
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isViaMobile(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    if-nez p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 42
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 34
    :goto_0
    return v2

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 34
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
