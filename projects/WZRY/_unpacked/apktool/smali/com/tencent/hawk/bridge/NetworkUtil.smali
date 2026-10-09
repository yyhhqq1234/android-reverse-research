.class public Lcom/tencent/hawk/bridge/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field public static final NETWORN_2G:I = 0x2

.field public static final NETWORN_3G:I = 0x3

.field public static final NETWORN_4G:I = 0x4

.field public static final NETWORN_MOBILE:I = 0x5

.field public static final NETWORN_NONE:I = 0x0

.field public static final NETWORN_WIFI:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 14
    .param p0, "useIPv4"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 174
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    .line 175
    .local v7, "netEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v7, :cond_0

    move-object v8, v9

    .line 209
    .end local v7    # "netEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    return-object v8

    .line 176
    .restart local v7    # "netEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    .line 177
    .local v4, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    if-nez v4, :cond_1

    move-object v8, v9

    .line 178
    goto :goto_0

    .line 179
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    move-object v8, v9

    .line 209
    goto :goto_0

    .line 179
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 180
    .local v5, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 181
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-nez v1, :cond_4

    move-object v8, v9

    .line 182
    goto :goto_0

    .line 183
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 184
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v13

    if-nez v13, :cond_5

    .line 185
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "sAddr":Ljava/lang/String;
    if-nez v8, :cond_6

    move-object v8, v9

    .line 187
    goto :goto_0

    .line 190
    :cond_6
    const/16 v13, 0x3a

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-gez v13, :cond_7

    const/4 v6, 0x1

    .line 192
    .local v6, "isIPv4":Z
    :goto_1
    if-eqz p0, :cond_8

    .line 193
    if-eqz v6, :cond_5

    goto :goto_0

    .end local v6    # "isIPv4":Z
    :cond_7
    move v6, v10

    .line 190
    goto :goto_1

    .line 196
    .restart local v6    # "isIPv4":Z
    :cond_8
    if-nez v6, :cond_5

    .line 197
    const/16 v10, 0x25

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 199
    .local v2, "delim":I
    if-gez v2, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    :goto_2
    move-object v8, v9

    goto :goto_0

    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_2

    .line 205
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "delim":I
    .end local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v5    # "intf":Ljava/net/NetworkInterface;
    .end local v6    # "isIPv4":Z
    .end local v7    # "netEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v8    # "sAddr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 206
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v9

    .line 207
    goto :goto_0
.end method

.method public static getIpAddr()J
    .locals 4

    .prologue
    .line 229
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/NetworkUtil;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "ipaddr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 231
    const-wide/16 v2, -0x1

    .line 232
    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v0}, Lcom/tencent/hawk/bridge/NetworkUtil;->hton(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 44
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 47
    .local v2, "connManager":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_0

    .line 48
    const/4 v9, 0x0

    .line 169
    :goto_0
    return v9

    .line 51
    :cond_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 52
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-nez v9, :cond_2

    .line 53
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 56
    :cond_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-ge v9, v10, :cond_9

    .line 58
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 59
    .local v8, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v8, :cond_4

    .line 60
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 61
    .local v6, "state":Landroid/net/NetworkInfo$State;
    if-eqz v6, :cond_4

    .line 62
    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v9, :cond_3

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v6, v9, :cond_4

    .line 63
    :cond_3
    const/4 v9, 0x1

    goto :goto_0

    .line 68
    .end local v6    # "state":Landroid/net/NetworkInfo$State;
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 70
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_b

    .line 71
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 72
    .restart local v6    # "state":Landroid/net/NetworkInfo$State;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "strSubTypeName":Ljava/lang/String;
    if-nez v7, :cond_5

    .line 74
    const/4 v9, 0x0

    goto :goto_0

    .line 75
    :cond_5
    if-eqz v6, :cond_b

    .line 76
    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v9, :cond_6

    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v6, v9, :cond_b

    .line 77
    :cond_6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 104
    const-string v9, "TD-SCDMA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "WCDMA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 105
    const-string v9, "CDMA2000"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 106
    :cond_7
    const/4 v9, 0x3

    goto :goto_0

    .line 85
    :pswitch_0
    const/4 v9, 0x2

    goto :goto_0

    .line 97
    :pswitch_1
    const/4 v9, 0x3

    goto :goto_0

    .line 101
    :pswitch_2
    const/4 v9, 0x4

    goto :goto_0

    .line 108
    :cond_8
    const/4 v9, 0x5

    goto :goto_0

    .line 114
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v6    # "state":Landroid/net/NetworkInfo$State;
    .end local v7    # "strSubTypeName":Ljava/lang/String;
    .end local v8    # "wifiInfo":Landroid/net/NetworkInfo;
    :cond_9
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 115
    .local v1, "allNetworks":[Landroid/net/Network;
    if-nez v1, :cond_a

    .line 116
    const/4 v9, 0x0

    goto :goto_0

    .line 119
    :cond_a
    array-length v10, v1

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v10, :cond_c

    .line 169
    .end local v1    # "allNetworks":[Landroid/net/Network;
    :cond_b
    const/4 v9, 0x0

    goto :goto_0

    .line 119
    .restart local v1    # "allNetworks":[Landroid/net/Network;
    :cond_c
    aget-object v5, v1, v9

    .line 120
    .local v5, "nw":Landroid/net/Network;
    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 121
    .local v4, "ninfo":Landroid/net/NetworkInfo;
    if-nez v4, :cond_d

    .line 122
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 123
    :cond_d
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 124
    .restart local v6    # "state":Landroid/net/NetworkInfo$State;
    if-eqz v6, :cond_13

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v11, :cond_e

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v6, v11, :cond_13

    .line 125
    :cond_e
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 126
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 127
    :cond_f
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v7

    .line 129
    .restart local v7    # "strSubTypeName":Ljava/lang/String;
    if-nez v7, :cond_10

    .line 130
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 131
    :cond_10
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 158
    const-string v9, "TD-SCDMA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "WCDMA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 159
    const-string v9, "CDMA2000"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 160
    :cond_11
    const/4 v9, 0x3

    goto/16 :goto_0

    .line 139
    :pswitch_3
    const/4 v9, 0x2

    goto/16 :goto_0

    .line 151
    :pswitch_4
    const/4 v9, 0x3

    goto/16 :goto_0

    .line 155
    :pswitch_5
    const/4 v9, 0x4

    goto/16 :goto_0

    .line 162
    :cond_12
    const/4 v9, 0x5

    goto/16 :goto_0

    .line 119
    .end local v7    # "strSubTypeName":Ljava/lang/String;
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 131
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static hton(Ljava/lang/String;)J
    .locals 18
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 213
    const-wide/16 v8, 0x0

    .line 214
    .local v8, "result":J
    const-string v7, "."

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "arr":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v7, v2

    const/4 v12, 0x4

    if-eq v7, v12, :cond_1

    .line 216
    :cond_0
    const-wide/16 v12, -0x1

    move-wide v10, v8

    .line 225
    .end local v8    # "result":J
    .local v10, "result":J
    :goto_0
    return-wide v12

    .line 218
    .end local v10    # "result":J
    .restart local v8    # "result":J
    :cond_1
    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 219
    .local v3, "ip1":I
    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 220
    .local v4, "ip2":I
    const/4 v7, 0x2

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 221
    .local v5, "ip3":I
    const/4 v7, 0x3

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 223
    .local v6, "ip4":I
    int-to-long v12, v3

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v7, 0x18

    shl-long/2addr v12, v7

    int-to-long v14, v4

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v7, 0x10

    shl-long/2addr v14, v7

    or-long/2addr v12, v14

    int-to-long v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v7, 0x8

    shl-long/2addr v14, v7

    or-long/2addr v12, v14

    int-to-long v14, v6

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    or-long v8, v12, v14

    move-wide v10, v8

    .end local v8    # "result":J
    .restart local v10    # "result":J
    move-wide v12, v8

    .line 225
    goto :goto_0
.end method
