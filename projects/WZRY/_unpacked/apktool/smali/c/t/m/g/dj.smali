.class public final Lc/t/m/g/dj;
.super Lc/t/m/g/dm;
.source "TL"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field private final i:J

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lc/t/m/g/dm;-><init>()V

    .line 39
    iput v1, p0, Lc/t/m/g/dj;->a:I

    .line 40
    const/16 v0, 0x1cc

    iput v0, p0, Lc/t/m/g/dj;->b:I

    iput v1, p0, Lc/t/m/g/dj;->c:I

    iput v1, p0, Lc/t/m/g/dj;->d:I

    iput v1, p0, Lc/t/m/g/dj;->e:I

    iput v1, p0, Lc/t/m/g/dj;->f:I

    .line 41
    iput v2, p0, Lc/t/m/g/dj;->g:I

    iput v2, p0, Lc/t/m/g/dj;->h:I

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/dj;->i:J

    .line 48
    return-void
.end method

.method public static a(Lc/t/m/g/cj;Landroid/telephony/CellInfo;)Lc/t/m/g/dj;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lorg/eclipse/jdt/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v6, -0x28

    const/16 v2, -0x58

    const/16 v5, -0x6e

    .line 122
    if-nez p1, :cond_1

    .line 123
    const/4 v0, 0x0

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :cond_1
    invoke-virtual {p0}, Lc/t/m/g/cj;->c()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 126
    new-instance v0, Lc/t/m/g/dj;

    invoke-direct {v0}, Lc/t/m/g/dj;-><init>()V

    .line 128
    :try_start_0
    instance-of v3, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v3, :cond_3

    .line 129
    check-cast p1, Landroid/telephony/CellInfoCdma;

    .line 130
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 131
    const/4 v4, 0x2

    iput v4, v0, Lc/t/m/g/dj;->a:I

    .line 132
    invoke-direct {v0, v1}, Lc/t/m/g/dj;->a(Landroid/telephony/TelephonyManager;)V

    .line 133
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->c:I

    .line 134
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->d:I

    .line 135
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->e:I

    .line 136
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->g:I

    .line 137
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->h:I

    .line 138
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v1

    .line 139
    if-le v1, v5, :cond_2

    if-ge v1, v6, :cond_2

    move v2, v1

    :cond_2
    iput v2, v0, Lc/t/m/g/dj;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    const-string v2, "TxCellInfo"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :cond_3
    :try_start_1
    instance-of v1, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v1, :cond_5

    .line 141
    check-cast p1, Landroid/telephony/CellInfoGsm;

    .line 142
    const/4 v1, 0x1

    iput v1, v0, Lc/t/m/g/dj;->a:I

    .line 143
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v3

    iput v3, v0, Lc/t/m/g/dj;->d:I

    .line 145
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v3

    iput v3, v0, Lc/t/m/g/dj;->e:I

    .line 146
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    iput v3, v0, Lc/t/m/g/dj;->b:I

    .line 147
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->c:I

    .line 148
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v1

    .line 149
    if-le v1, v5, :cond_4

    if-ge v1, v6, :cond_4

    move v2, v1

    :cond_4
    iput v2, v0, Lc/t/m/g/dj;->f:I

    goto/16 :goto_0

    .line 150
    :cond_5
    instance-of v1, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v1, :cond_7

    .line 151
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    .line 152
    const/4 v1, 0x1

    iput v1, v0, Lc/t/m/g/dj;->a:I

    .line 153
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v3

    iput v3, v0, Lc/t/m/g/dj;->d:I

    .line 155
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v3

    iput v3, v0, Lc/t/m/g/dj;->e:I

    .line 156
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v3

    iput v3, v0, Lc/t/m/g/dj;->b:I

    .line 157
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->c:I

    .line 158
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v1

    .line 159
    if-le v1, v5, :cond_6

    if-ge v1, v6, :cond_6

    move v2, v1

    :cond_6
    iput v2, v0, Lc/t/m/g/dj;->f:I

    goto/16 :goto_0

    .line 160
    :cond_7
    instance-of v1, p1, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_0

    .line 161
    check-cast p1, Landroid/telephony/CellInfoLte;

    .line 162
    const/4 v1, 0x1

    iput v1, v0, Lc/t/m/g/dj;->a:I

    .line 163
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v3

    iput v3, v0, Lc/t/m/g/dj;->d:I

    .line 165
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v3

    iput v3, v0, Lc/t/m/g/dj;->e:I

    .line 166
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    iput v3, v0, Lc/t/m/g/dj;->b:I

    .line 167
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->c:I

    .line 168
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v1

    .line 169
    if-le v1, v5, :cond_8

    if-ge v1, v6, :cond_8

    :goto_1
    iput v1, v0, Lc/t/m/g/dj;->f:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method public static a(Lc/t/m/g/cj;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lc/t/m/g/dj;
    .locals 3
    .annotation build Lorg/eclipse/jdt/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lc/t/m/g/cj;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lc/t/m/g/cj;->c()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 77
    new-instance v0, Lc/t/m/g/dj;

    invoke-direct {v0}, Lc/t/m/g/dj;-><init>()V

    .line 79
    :try_start_0
    instance-of v2, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_3

    .line 80
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 81
    const/4 v2, 0x2

    iput v2, v0, Lc/t/m/g/dj;->a:I

    .line 82
    invoke-direct {v0, v1}, Lc/t/m/g/dj;->a(Landroid/telephony/TelephonyManager;)V

    .line 83
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->c:I

    .line 84
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->d:I

    .line 85
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->e:I

    .line 86
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->g:I

    .line 87
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->h:I

    .line 88
    if-nez p2, :cond_2

    .line 89
    const/4 v1, -0x1

    iput v1, v0, Lc/t/m/g/dj;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    const-string v2, "TxCellInfo"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 92
    iput v1, v0, Lc/t/m/g/dj;->f:I

    goto :goto_0

    .line 95
    :cond_3
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 96
    const/4 v2, 0x1

    iput v2, v0, Lc/t/m/g/dj;->a:I

    .line 97
    invoke-direct {v0, v1}, Lc/t/m/g/dj;->a(Landroid/telephony/TelephonyManager;)V

    .line 98
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->d:I

    .line 99
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v0, Lc/t/m/g/dj;->e:I

    .line 106
    if-nez p2, :cond_4

    .line 107
    const/4 v1, -0x1

    iput v1, v0, Lc/t/m/g/dj;->f:I

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 110
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    iput v1, v0, Lc/t/m/g/dj;->f:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Landroid/telephony/TelephonyManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 188
    invoke-static {p1, v0}, Lc/t/m/g/dw;->a(Landroid/telephony/TelephonyManager;[I)V

    .line 189
    aget v1, v0, v2

    if-lez v1, :cond_0

    aget v1, v0, v3

    if-ltz v1, :cond_0

    .line 190
    aget v1, v0, v2

    iput v1, p0, Lc/t/m/g/dj;->b:I

    .line 191
    aget v0, v0, v3

    iput v0, p0, Lc/t/m/g/dj;->c:I

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/eclipse/jdt/annotation/NonNull;
    .end annotation

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/t/m/g/dj;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/dj;->j:Ljava/util/List;

    .line 204
    :cond_0
    iget-object v0, p0, Lc/t/m/g/dj;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/eclipse/jdt/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 215
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/dj;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_0
    monitor-exit p0

    return-void

    .line 217
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/dj;->j:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lc/t/m/g/dj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/t/m/g/dj;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/t/m/g/dj;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/t/m/g/dj;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TxCellInfo [PhoneType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lc/t/m/g/dj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MCC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/t/m/g/dj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MNC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/t/m/g/dj;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LAC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/t/m/g/dj;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/t/m/g/dj;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RSSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/t/m/g/dj;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/t/m/g/dj;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LNG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/t/m/g/dj;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc/t/m/g/dj;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
