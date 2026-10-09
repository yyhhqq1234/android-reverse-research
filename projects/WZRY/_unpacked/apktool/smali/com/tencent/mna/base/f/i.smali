.class public final Lcom/tencent/mna/base/f/i;
.super Ljava/lang/Object;
.source "MobileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/f/i$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/mna/base/f/i$a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static b:I

.field private static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, -0x1

    sput v0, Lcom/tencent/mna/base/f/i;->b:I

    .line 37
    const/4 v0, 0x1

    sput v0, Lcom/tencent/mna/base/f/i;->c:I

    .line 38
    const v0, 0xffff

    sput v0, Lcom/tencent/mna/base/f/i;->d:I

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/tencent/mna/base/f/i;->b:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 32
    sput p0, Lcom/tencent/mna/base/f/i;->b:I

    return p0
.end method

.method public static a(Landroid/telephony/CellInfo;)I
    .locals 3

    .prologue
    .line 291
    const/4 v0, -0x1

    .line 292
    if-eqz p0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 293
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_1

    .line 294
    check-cast p0, Landroid/telephony/CellInfoLte;

    .line 295
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v0

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 42
    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_2

    .line 46
    const-string v0, "registerMobileSignalListener failed, looper is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    :try_start_0
    sget-object v0, Lcom/tencent/mna/base/f/i;->a:Lcom/tencent/mna/base/f/i$a;

    if-nez v0, :cond_3

    .line 51
    new-instance v0, Lcom/tencent/mna/base/f/i$a;

    invoke-direct {v0, p0}, Lcom/tencent/mna/base/f/i$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/mna/base/f/i;->a:Lcom/tencent/mna/base/f/i$a;

    .line 53
    :cond_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 54
    if-eqz v0, :cond_0

    .line 55
    sget-object v1, Lcom/tencent/mna/base/f/i;->a:Lcom/tencent/mna/base/f/i$a;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMobileSignalListener exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/tencent/mna/base/f/i;->c:I

    return v0
.end method

.method static synthetic b(I)I
    .locals 0

    .prologue
    .line 32
    sput p0, Lcom/tencent/mna/base/f/i;->c:I

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 176
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 177
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v2, v0

    .line 178
    :goto_0
    if-eqz v2, :cond_4

    .line 179
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 180
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_3

    .line 181
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 192
    :cond_0
    :goto_2
    return v0

    .line 177
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {v4}, Lcom/tencent/mna/base/f/l;->a(Landroid/net/NetworkInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 185
    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_2

    .line 179
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileSubType exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 192
    goto :goto_2
.end method

.method public static b(Landroid/telephony/CellInfo;)I
    .locals 3

    .prologue
    .line 308
    const/4 v0, -0x1

    .line 309
    if-eqz p0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 310
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_1

    .line 311
    check-cast p0, Landroid/telephony/CellInfoLte;

    .line 312
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v0

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/tencent/mna/base/f/i;->d:I

    return v0
.end method

.method static synthetic c(I)I
    .locals 0

    .prologue
    .line 32
    sput p0, Lcom/tencent/mna/base/f/i;->d:I

    return p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 199
    const-string v3, "0_0_0_0"

    .line 203
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 204
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 205
    :goto_0
    if-nez v2, :cond_1

    .line 258
    :goto_1
    return-object v3

    .line 204
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 209
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 210
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 211
    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    .line 212
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cellinfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_2
    move-object v3, v0

    .line 258
    goto :goto_1

    .line 215
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-ge v2, v6, :cond_5

    .line 217
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 218
    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_4

    .line 219
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 220
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 221
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    move v2, v1

    .line 252
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 222
    :cond_4
    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_9

    .line 223
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 224
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    .line 225
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    move v2, v1

    goto :goto_3

    .line 229
    :cond_5
    invoke-static {p0}, Lcom/tencent/mna/base/f/i;->d(Landroid/content/Context;)Landroid/telephony/CellInfo;

    move-result-object v0

    .line 230
    instance-of v2, v0, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_6

    .line 231
    check-cast v0, Landroid/telephony/CellInfoLte;

    .line 232
    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v2

    .line 234
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v0

    goto :goto_3

    .line 235
    :cond_6
    instance-of v2, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_7

    .line 236
    check-cast v0, Landroid/telephony/CellInfoWcdma;

    .line 237
    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    .line 239
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v0

    goto :goto_3

    .line 240
    :cond_7
    instance-of v2, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v2, :cond_8

    .line 241
    check-cast v0, Landroid/telephony/CellInfoGsm;

    .line 242
    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v2

    .line 244
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v0

    goto :goto_3

    .line 245
    :cond_8
    instance-of v2, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v2, :cond_9

    .line 246
    check-cast v0, Landroid/telephony/CellInfoCdma;

    .line 247
    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v2

    .line 249
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto/16 :goto_3

    .line 255
    :catch_1
    move-exception v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneCellInfo exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_2

    :cond_9
    move v0, v1

    move v2, v1

    goto/16 :goto_3
.end method

.method public static d(Landroid/content/Context;)Landroid/telephony/CellInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 265
    if-eqz p0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 267
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 268
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 269
    if-nez v0, :cond_0

    move-object v0, v1

    .line 283
    :goto_0
    return-object v0

    .line 272
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 273
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegisteredCellInfo exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object v0, v1

    .line 283
    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    goto :goto_1
.end method
