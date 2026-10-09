.class public Lcom/tencent/msdk/tools/APNUtil;
.super Ljava/lang/Object;
.source "APNUtil.java"


# static fields
.field public static final ANP_NAME_CMNET:Ljava/lang/String; = "cmnet"

.field public static final ANP_NAME_CMWAP:Ljava/lang/String; = "cmwap"

.field public static final ANP_NAME_CTNET:Ljava/lang/String; = "ctnet"

.field public static final ANP_NAME_CTWAP:Ljava/lang/String; = "ctwap"

.field public static final ANP_NAME_NET:Ljava/lang/String; = "net"

.field public static final ANP_NAME_NONE:Ljava/lang/String; = "none"

.field public static final ANP_NAME_UNINET:Ljava/lang/String; = "uninet"

.field public static final ANP_NAME_UNIWAP:Ljava/lang/String; = "uniwap"

.field public static final ANP_NAME_WAP:Ljava/lang/String; = "wap"

.field public static final ANP_NAME_WIFI:Ljava/lang/String; = "wifi"

.field public static final APNTYPE_3GNET:B = 0xbt

.field public static final APNTYPE_3GWAP:B = 0xat

.field public static final APNTYPE_CMNET:B = 0x1t

.field public static final APNTYPE_CMWAP:B = 0x2t

.field public static final APNTYPE_CTNET:B = 0x8t

.field public static final APNTYPE_CTWAP:B = 0x9t

.field public static final APNTYPE_NET:B = 0x6t

.field public static final APNTYPE_NONE:B = 0x0t

.field public static final APNTYPE_UNINET:B = 0x4t

.field public static final APNTYPE_UNIWAP:B = 0x5t

.field public static final APNTYPE_WAP:B = 0x7t

.field public static final APNTYPE_WIFI:B = 0x3t

.field public static final APN_PROP_APN:Ljava/lang/String; = "apn"

.field public static final APN_PROP_PORT:Ljava/lang/String; = "port"

.field public static final APN_PROP_PROXY:Ljava/lang/String; = "proxy"

.field public static final JCE_APNTYPE_CMNET:I = 0x2

.field public static final JCE_APNTYPE_CMWAP:I = 0x4

.field public static final JCE_APNTYPE_CTNET:I = 0x100

.field public static final JCE_APNTYPE_CTWAP:I = 0x200

.field public static final JCE_APNTYPE_DEFAULT:I = 0x1

.field public static final JCE_APNTYPE_NET:I = 0x40

.field public static final JCE_APNTYPE_UNINET:I = 0x10

.field public static final JCE_APNTYPE_UNIWAP:I = 0x20

.field public static final JCE_APNTYPE_UNKNOWN:I = 0x0

.field public static final JCE_APNTYPE_WAP:I = 0x80

.field public static final JCE_APNTYPE_WIFI:I = 0x8

.field public static final MPROXYTYPE_3GNET:I = 0x800

.field public static final MPROXYTYPE_3GWAP:I = 0x400

.field public static final MPROXYTYPE_CMNET:I = 0x4

.field public static final MPROXYTYPE_CMWAP:I = 0x1

.field public static final MPROXYTYPE_CTNET:I = 0x100

.field public static final MPROXYTYPE_CTWAP:I = 0x200

.field public static final MPROXYTYPE_DEFAULT:I = 0x80

.field public static final MPROXYTYPE_NET:I = 0x20

.field public static final MPROXYTYPE_UNINET:I = 0x8

.field public static final MPROXYTYPE_UNIWAP:I = 0x10

.field public static final MPROXYTYPE_WAP:I = 0x40

.field public static final MPROXYTYPE_WIFI:I = 0x2

.field private static PREFERRED_APN_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-string v0, "content://telephony/carriers/preferapn"

    .line 79
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/tools/APNUtil;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApnPort(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/tools/APNUtil;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 197
    const-string v7, "80"

    .line 207
    :goto_0
    return-object v7

    .line 200
    :cond_0
    const/4 v7, 0x0

    .line 201
    .local v7, "port":Ljava/lang/String;
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 202
    if-nez v7, :cond_1

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 204
    const-string v7, "80"

    goto :goto_0

    .line 206
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getApnPortInt(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/tools/APNUtil;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 219
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    const/4 v7, -0x1

    .line 226
    :goto_0
    return v7

    .line 224
    :cond_0
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 225
    .local v7, "result":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getApnProxy(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/tools/APNUtil;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 182
    :goto_0
    return-object v2

    .line 180
    :cond_0
    const-string v0, "proxy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "strResult":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    .line 182
    goto :goto_0
.end method

.method public static getApnProxyIp(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/tencent/msdk/tools/APNUtil;->getApnType(Landroid/content/Context;)B

    move-result v0

    .line 158
    .local v0, "apnType":B
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 159
    :cond_0
    const-string v1, "10.0.0.172"

    .line 164
    :goto_0
    return-object v1

    .line 161
    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 162
    const-string v1, "10.0.0.200"

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {p0}, Lcom/tencent/msdk/tools/APNUtil;->getApnProxy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getApnType(Landroid/content/Context;)B
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 122
    invoke-static {p0}, Lcom/tencent/msdk/tools/APNUtil;->getMProxyType(Landroid/content/Context;)I

    move-result v0

    .line 124
    .local v0, "netType":I
    if-ne v0, v1, :cond_1

    .line 125
    const/4 v1, 0x3

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    if-eq v0, v2, :cond_0

    .line 128
    if-ne v0, v3, :cond_2

    move v1, v2

    .line 129
    goto :goto_0

    .line 130
    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 131
    const/4 v1, 0x5

    goto :goto_0

    .line 132
    :cond_3
    if-ne v0, v4, :cond_4

    move v1, v3

    .line 133
    goto :goto_0

    .line 134
    :cond_4
    const/16 v1, 0x40

    if-ne v0, v1, :cond_5

    .line 135
    const/4 v1, 0x7

    goto :goto_0

    .line 136
    :cond_5
    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 137
    const/4 v1, 0x6

    goto :goto_0

    .line 138
    :cond_6
    const/16 v1, 0x200

    if-ne v0, v1, :cond_7

    .line 139
    const/16 v1, 0x9

    goto :goto_0

    .line 140
    :cond_7
    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    move v1, v4

    .line 141
    goto :goto_0

    .line 142
    :cond_8
    const/16 v1, 0x400

    if-ne v0, v1, :cond_9

    .line 143
    const/16 v1, 0xa

    goto :goto_0

    .line 144
    :cond_9
    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    .line 145
    const/16 v1, 0xb

    goto :goto_0

    .line 147
    :cond_a
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMProxyType(Landroid/content/Context;)I
    .locals 11
    .param p0, "act"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x200

    const/16 v8, 0x100

    const/16 v6, 0x80

    .line 257
    :try_start_0
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 258
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 309
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v6

    .line 261
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 262
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 264
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "typeName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "typeName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 268
    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "WIFI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 269
    const/4 v6, 0x2

    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "extraInfo":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extraInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 275
    const-string v9, "cmwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 276
    const/4 v6, 0x1

    goto :goto_0

    .line 277
    :cond_3
    const-string v9, "cmnet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "epc.tmobile.com"

    .line 278
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 279
    :cond_4
    const/4 v6, 0x4

    goto :goto_0

    .line 280
    :cond_5
    const-string/jumbo v9, "uniwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 281
    const/16 v6, 0x10

    goto :goto_0

    .line 282
    :cond_6
    const-string/jumbo v9, "uninet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 283
    const/16 v6, 0x8

    goto/16 :goto_0

    .line 284
    :cond_7
    const-string/jumbo v9, "wap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 285
    const/16 v6, 0x40

    goto/16 :goto_0

    .line 286
    :cond_8
    const-string v9, "net"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 287
    const/16 v6, 0x20

    goto/16 :goto_0

    .line 288
    :cond_9
    const-string v9, "ctwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v6, v7

    .line 289
    goto/16 :goto_0

    .line 290
    :cond_a
    const-string v9, "ctnet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v6, v8

    .line 291
    goto/16 :goto_0

    .line 292
    :cond_b
    const-string v9, "3gwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 293
    const/16 v6, 0x400

    goto/16 :goto_0

    .line 294
    :cond_c
    const-string v9, "3gnet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 295
    const/16 v6, 0x800

    goto/16 :goto_0

    .line 297
    :cond_d
    const-string v9, "#777"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 298
    invoke-static {p0}, Lcom/tencent/msdk/tools/APNUtil;->getApnProxy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "proxy":Ljava/lang/String;
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_e

    move v6, v7

    .line 300
    goto/16 :goto_0

    :cond_e
    move v6, v8

    .line 302
    goto/16 :goto_0

    .line 306
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "extraInfo":Ljava/lang/String;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "proxy":Ljava/lang/String;
    .end local v5    # "typeName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static hasProxy(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 236
    invoke-static {p0}, Lcom/tencent/msdk/tools/APNUtil;->getMProxyType(Landroid/content/Context;)I

    move-result v0

    .line 238
    .local v0, "netType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 240
    if-eq v0, v1, :cond_0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    const/16 v2, 0x40

    if-eq v0, v2, :cond_0

    const/16 v2, 0x200

    if-eq v0, v2, :cond_0

    const/16 v2, 0x400

    if-ne v0, v2, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isActiveNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 333
    const-string v2, "connectivity"

    .line 334
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 335
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 336
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 338
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "act"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 318
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 319
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v2

    .line 321
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 322
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    const/4 v2, 0x1

    goto :goto_0
.end method
