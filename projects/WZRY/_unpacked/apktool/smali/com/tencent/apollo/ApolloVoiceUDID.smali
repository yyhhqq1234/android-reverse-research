.class public Lcom/tencent/apollo/ApolloVoiceUDID;
.super Ljava/lang/Object;
.source "ApolloVoiceUDID.java"


# static fields
.field private static final DefaultUUID:Ljava/lang/String; = "UUID"

.field private static LOGTAG:Ljava/lang/String;

.field private static mainContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "ApolloVoice"

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceUDID;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AppVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 193
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceUDID;->mainContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/tencent/apollo/ApolloVoiceUDID;->mainContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    if-nez v0, :cond_0

    .line 202
    const-string v0, "Unknown"

    .line 204
    :cond_0
    return-object v0

    .line 195
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceUDID;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetAppVersion Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static Brand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 174
    .local v0, "brand":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 175
    const-string v0, "Unknown"

    .line 177
    :cond_0
    return-object v0
.end method

.method public static DeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceUDID;->mainContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/apollo/ApolloVoiceUDID;->GetDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 33
    .local v1, "hasPermission":I
    if-eqz v1, :cond_0

    .line 35
    sget-object v4, Lcom/tencent/apollo/ApolloVoiceUDID;->LOGTAG:Ljava/lang/String;

    const-string v5, "getDeviceID, Permission Denied. "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v2, ""

    .line 59
    :goto_0
    return-object v2

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 43
    .local v2, "imeistring":Ljava/lang/String;
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 44
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v3, :cond_1

    .line 46
    const-string v2, ""

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 52
    goto :goto_0

    .line 54
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/tencent/apollo/ApolloVoiceUDID;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get DeviceID failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v2, ""

    goto :goto_0
.end method

.method public static MacAddress()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 125
    const/4 v4, 0x0

    .line 126
    .local v4, "macAddr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v2, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 130
    .local v5, "networkInterface":Ljava/net/NetworkInterface;
    :try_start_0
    const-string v7, "eth1"

    invoke-static {v7}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v5

    .line 131
    if-nez v5, :cond_0

    .line 133
    sget-object v7, Lcom/tencent/apollo/ApolloVoiceUDID;->LOGTAG:Ljava/lang/String;

    const-string v8, "networkInterface eth1 is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string/jumbo v7, "wlan0"

    invoke-static {v7}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v5

    .line 136
    :cond_0
    if-eqz v5, :cond_3

    .line 138
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    .line 140
    .local v0, "addr":[B
    array-length v7, v0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-byte v1, v0, v6

    .line 142
    .local v1, "b":B
    const-string v8, "%02X:"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "b":B
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 148
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 156
    .end local v0    # "addr":[B
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 158
    const-string v4, "Unknown"

    .line 161
    :cond_4
    return-object v4

    .line 151
    :catch_0
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/tencent/apollo/ApolloVoiceUDID;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetMacAdress Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static Model()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 166
    .local v0, "model":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 167
    const-string v0, "Unknown"

    .line 169
    :cond_0
    return-object v0
.end method

.method public static OSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 182
    .local v0, "sysVersion":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 183
    const-string v0, "Unknown"

    .line 185
    :cond_0
    return-object v0
.end method

.method public static SetContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 24
    sput-object p0, Lcom/tencent/apollo/ApolloVoiceUDID;->mainContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static SimOperator()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    const-string v0, "-1"

    .line 215
    .local v0, "carrierCode":Ljava/lang/String;
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceUDID;->mainContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 217
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 224
    goto :goto_0
.end method

.method public static UDID()Ljava/lang/String;
    .locals 14

    .prologue
    .line 68
    sget-object v11, Lcom/tencent/apollo/ApolloVoiceUDID;->mainContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/tencent/apollo/ApolloVoiceUDID;->GetDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "deviceId":Ljava/lang/String;
    sget-object v9, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 70
    .local v9, "serial":Ljava/lang/String;
    sget-object v11, Lcom/tencent/apollo/ApolloVoiceUDID;->mainContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "android_id"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "androidId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v5, "%"

    .line 74
    .local v5, "flag":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    if-eqz v9, :cond_1

    .line 81
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_1
    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 93
    .local v10, "uuid":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 95
    const-string v11, "UUID"

    .line 120
    :goto_0
    return-object v11

    .line 101
    :cond_3
    :try_start_0
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 102
    .local v3, "digest":Ljava/security/MessageDigest;
    if-nez v3, :cond_4

    .line 104
    const-string v11, "UUID"

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 107
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 110
    .local v6, "hash":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v7, "hex":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v11, v6

    if-ge v8, v11, :cond_5

    .line 113
    aget-byte v11, v6, v8

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 117
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v6    # "hash":[B
    .end local v7    # "hex":Ljava/lang/StringBuilder;
    .end local v8    # "i":I
    :catch_0
    move-exception v4

    .line 119
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/tencent/apollo/ApolloVoiceUDID;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GetUUID Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v11, "UUID"

    goto :goto_0
.end method
