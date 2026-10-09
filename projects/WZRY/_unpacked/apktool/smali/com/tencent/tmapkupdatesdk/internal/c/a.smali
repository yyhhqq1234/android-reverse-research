.class public Lcom/tencent/tmapkupdatesdk/internal/c/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/tmapkupdatesdk/internal/c/a;

.field private static c:Ljava/lang/String;

.field private static d:I

.field private static e:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sput-object v1, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a:Lcom/tencent/tmapkupdatesdk/internal/c/a;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->c:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->d:I

    .line 264
    sput-object v1, Lcom/tencent/tmapkupdatesdk/internal/c/a;->e:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 209
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 213
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 214
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 217
    const-string v2, "ApkUpdateGlobalUtil"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/tencent/tmapkupdatesdk/internal/c/a;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/tencent/tmapkupdatesdk/internal/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a:Lcom/tencent/tmapkupdatesdk/internal/c/a;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/internal/c/a;-><init>()V

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a:Lcom/tencent/tmapkupdatesdk/internal/c/a;

    .line 62
    :cond_0
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->a:Lcom/tencent/tmapkupdatesdk/internal/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static c()B
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 187
    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 191
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 192
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 195
    const-string v2, "ApkUpdateGlobalUtil"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized n()I
    .locals 3

    .prologue
    .line 370
    const-class v1, Lcom/tencent/tmapkupdatesdk/internal/c/a;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->d:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/tencent/tmapkupdatesdk/internal/c/a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 235
    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 237
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.tencent.android.qqdownloader.GRAY_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    const-string v2, "ApkUpdateGlobalUtil"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 70
    const-string v0, "ApkUpdateGlobalUtil"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/tencent/tmassistantbase/util/QUASetting;

    invoke-direct {v0, p1}, Lcom/tencent/tmassistantbase/util/QUASetting;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/QUASetting;->buildQUA()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->c:Ljava/lang/String;

    .line 73
    const-string v0, "ApkUpdateGlobalUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QUA:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/c/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "ApkUpdateGlobalUtil"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b:Landroid/content/Context;

    const-string v1, "TMAssistantSDKSharedPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TMAssistantSDKPhoneGUID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 103
    const-string v0, ""

    .line 106
    :goto_0
    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 106
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 111
    const-string v0, ""

    .line 131
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 115
    const-string v0, ""

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 118
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 119
    if-nez v0, :cond_2

    .line 120
    const-string v0, ""

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 123
    const-string v0, "WIFI"

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_4

    .line 127
    const-string v0, ""

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 143
    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    .line 146
    :cond_0
    const-string v1, "UN_DETECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_1
    const-string v1, "CMWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    const/4 v0, 0x2

    goto :goto_0

    .line 150
    :cond_2
    const-string v1, "CMNET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    const/4 v0, 0x3

    goto :goto_0

    .line 152
    :cond_3
    const-string v1, "UNIWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    const/4 v0, 0x4

    goto :goto_0

    .line 154
    :cond_4
    const-string v1, "UNINET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    const/4 v0, 0x5

    goto :goto_0

    .line 156
    :cond_5
    const-string v1, "WAP3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 157
    const/4 v0, 0x6

    goto :goto_0

    .line 158
    :cond_6
    const-string v1, "NET3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 159
    const/4 v0, 0x7

    goto :goto_0

    .line 160
    :cond_7
    const-string v1, "CTWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 161
    const/16 v0, 0x8

    goto :goto_0

    .line 162
    :cond_8
    const-string v1, "CTNET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 163
    const/16 v0, 0x9

    goto :goto_0

    .line 166
    :cond_9
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized h()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;
    .locals 4

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->e:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->j()Ljava/lang/String;

    move-result-object v1

    .line 270
    const-class v2, Lcom/tencent/tmapkupdatesdk/internal/c/a;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    :try_start_1
    new-instance v3, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    invoke-direct {v3}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;-><init>()V

    sput-object v3, Lcom/tencent/tmapkupdatesdk/internal/c/a;->e:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    .line 272
    sget-object v3, Lcom/tencent/tmapkupdatesdk/internal/c/a;->e:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    iput-object v0, v3, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;->androidId:Ljava/lang/String;

    .line 273
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->e:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    iput-object v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;->androidIdSdCard:Ljava/lang/String;

    .line 274
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->e:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;->imei:Ljava/lang/String;

    .line 275
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->e:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;->imsi:Ljava/lang/String;

    .line 276
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->e:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;

    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;->macAdress:Ljava/lang/String;

    .line 277
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :cond_0
    :try_start_2
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->e:Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Terminal;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 277
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 267
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/c/a;->b:Landroid/content/Context;

    const-string v1, "TMAssistantSDKSharedPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 299
    const-string v1, "TMAssistantSDKPhoneGUID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
