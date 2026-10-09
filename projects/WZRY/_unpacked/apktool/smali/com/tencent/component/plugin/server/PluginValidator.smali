.class public Lcom/tencent/component/plugin/server/PluginValidator;
.super Ljava/lang/Object;
.source "PluginValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/server/PluginValidator$ValidateSignatureException;,
        Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;
    }
.end annotation


# static fields
.field private static final SIGNATURE_FIRST_NOT_SIGNED:I = -0x1

.field private static final SIGNATURE_MATCH:I = 0x0

.field private static final SIGNATURE_NEITHER_SIGNED:I = -0x3

.field private static final SIGNATURE_NOT_MATCH:I = 0x1

.field private static final SIGNATURE_SECOND_NOT_SIGNED:I = -0x2

.field private static final TAG:Ljava/lang/String; = "PluginValidator"

.field private static volatile sInstance:Lcom/tencent/component/plugin/server/PluginValidator;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mPlatformArchiveSignatureHash:[I

.field private volatile mPlatformPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private static compareSignatureHash([I[I)I
    .locals 7
    .param p0, "s1"    # [I
    .param p1, "s2"    # [I

    .prologue
    const/4 v3, 0x0

    .line 211
    if-nez p0, :cond_2

    .line 212
    if-nez p1, :cond_1

    const/4 v3, -0x3

    .line 225
    :cond_0
    :goto_0
    return v3

    .line 212
    :cond_1
    const/4 v3, -0x1

    goto :goto_0

    .line 214
    :cond_2
    if-nez p1, :cond_3

    .line 215
    const/4 v3, -0x2

    goto :goto_0

    .line 217
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 218
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    array-length v5, p0

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_4

    aget v2, p0, v4

    .line 219
    .local v2, "sig":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 221
    .end local v2    # "sig":I
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 222
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    array-length v5, p1

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_5

    aget v2, p1, v4

    .line 223
    .restart local v2    # "sig":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 225
    .end local v2    # "sig":I
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static dumpSignature([I)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # [I

    .prologue
    .line 230
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 231
    :cond_0
    const/4 v2, 0x0

    .line 237
    :goto_0
    return-object v2

    .line 233
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget v1, p0, v2

    .line 235
    .local v1, "ss":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 237
    .end local v1    # "ss":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/component/plugin/server/PluginValidator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    sget-object v0, Lcom/tencent/component/plugin/server/PluginValidator;->sInstance:Lcom/tencent/component/plugin/server/PluginValidator;

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/tencent/component/plugin/server/PluginValidator;->sInstance:Lcom/tencent/component/plugin/server/PluginValidator;

    .line 262
    :goto_0
    return-object v0

    .line 258
    :cond_0
    const-class v1, Lcom/tencent/component/plugin/server/PluginValidator;

    monitor-enter v1

    .line 259
    :try_start_0
    sget-object v0, Lcom/tencent/component/plugin/server/PluginValidator;->sInstance:Lcom/tencent/component/plugin/server/PluginValidator;

    if-eqz v0, :cond_1

    .line 260
    sget-object v0, Lcom/tencent/component/plugin/server/PluginValidator;->sInstance:Lcom/tencent/component/plugin/server/PluginValidator;

    monitor-exit v1

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 262
    :cond_1
    :try_start_1
    new-instance v0, Lcom/tencent/component/plugin/server/PluginValidator;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/server/PluginValidator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/component/plugin/server/PluginValidator;->sInstance:Lcom/tencent/component/plugin/server/PluginValidator;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getPlatformArchiveSignature(Lcom/tencent/component/plugin/server/PlatformServerContext;)[I
    .locals 5
    .param p1, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v3, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformArchiveSignatureHash:[I

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformArchiveSignatureHash:[I

    .line 177
    :goto_0
    return-object v3

    .line 152
    :cond_0
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformArchiveSignatureHash:[I

    if-eqz v3, :cond_1

    .line 154
    iget-object v3, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformArchiveSignatureHash:[I

    monitor-exit p0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 156
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPlatformConfig()Lcom/tencent/component/plugin/PluginPlatformConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformSignatureHash:[I

    iput-object v3, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformArchiveSignatureHash:[I

    .line 157
    iget-object v3, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformArchiveSignatureHash:[I

    if-nez v3, :cond_2

    .line 159
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_3

    .line 160
    iget-object v3, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "path":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    .line 168
    sget-object v3, Lcom/tencent/component/utils/ApkUtil$Certificates;->MANIFEST_ENTRY:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/tencent/component/utils/ApkUtil$Certificates;->collectCertificates(Ljava/lang/String;[Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 171
    .local v2, "signatures":[Landroid/content/pm/Signature;
    invoke-static {v2}, Lcom/tencent/component/plugin/server/PluginValidator;->getSignatureHash([Landroid/content/pm/Signature;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformArchiveSignatureHash:[I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "signatures":[Landroid/content/pm/Signature;
    :cond_2
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformArchiveSignatureHash:[I

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 162
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/tencent/component/plugin/server/PluginValidator;->getPlatformPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 163
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_4

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_4

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v0    # "path":Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v0    # "path":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 174
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private getPlatformPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformPackageInfo:Landroid/content/pm/PackageInfo;

    .line 206
    :goto_0
    return-object v1

    .line 197
    :cond_0
    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformPackageInfo:Landroid/content/pm/PackageInfo;

    monitor-exit p0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 201
    :cond_1
    const/4 v0, 0x0

    .line 202
    .local v0, "flags":I
    :try_start_1
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginValidator;->mPlatformPackageInfo:Landroid/content/pm/PackageInfo;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getPlatformVersion(Lcom/tencent/component/plugin/server/PlatformServerContext;)I
    .locals 1
    .param p1, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPlatformConfig()Lcom/tencent/component/plugin/PluginPlatformConfig;

    move-result-object v0

    iget v0, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformVersion:I

    return v0
.end method

.method private static getSignatureHash([Landroid/content/pm/Signature;)[I
    .locals 3
    .param p0, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 182
    if-eqz p0, :cond_1

    .line 183
    array-length v2, p0

    new-array v1, v2, [I

    .line 184
    .local v1, "signHashes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 185
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 186
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->hashCode()I

    move-result v2

    aput v2, v1, v0

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    .end local v1    # "signHashes":[I
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public validate(Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/server/PlatformServerContext;)V
    .locals 19
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p2, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;
        }
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v15, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;

    const-string v16, "invalid parameter: null"

    invoke-direct/range {v15 .. v16}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 51
    :cond_0
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginClass:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 52
    new-instance v15, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "plugin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " has invalid target plugin: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginClass:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 55
    :cond_1
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 56
    new-instance v15, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "plugin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " has invalid id: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 58
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/component/plugin/PluginInfo;->isInternal()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-static {}, Lcom/tencent/component/utils/DebugUtil;->isDebuggable()Z

    move-result v15

    if-nez v15, :cond_5

    .line 60
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/tencent/component/plugin/PluginInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v15, :cond_3

    .line 61
    new-instance v15, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "plugin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " has inconsistent signatures"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 63
    :cond_3
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/tencent/component/plugin/PluginInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v15}, Lcom/tencent/component/plugin/server/PluginValidator;->getSignatureHash([Landroid/content/pm/Signature;)[I

    move-result-object v15

    .line 64
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/tencent/component/plugin/server/PluginValidator;->getPlatformArchiveSignature(Lcom/tencent/component/plugin/server/PlatformServerContext;)[I

    move-result-object v16

    .line 63
    invoke-static/range {v15 .. v16}, Lcom/tencent/component/plugin/server/PluginValidator;->compareSignatureHash([I[I)I

    move-result v15

    if-eqz v15, :cond_5

    .line 65
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/component/plugin/server/PluginValidator;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/tencent/component/plugin/server/PluginConstant;->shouldCheckPlatformSignature(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 66
    new-instance v15, Lcom/tencent/component/plugin/server/PluginValidator$ValidateSignatureException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "plugin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " has mismatched signatures against platform"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", plugin("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    .line 67
    invoke-static/range {v17 .. v17}, Lcom/tencent/component/plugin/server/PluginValidator;->getSignatureHash([Landroid/content/pm/Signature;)[I

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/component/plugin/server/PluginValidator;->dumpSignature([I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " platformArchive("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/tencent/component/plugin/server/PluginValidator;->getPlatformArchiveSignature(Lcom/tencent/component/plugin/server/PlatformServerContext;)[I

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/component/plugin/server/PluginValidator;->dumpSignature([I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateSignatureException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 71
    :cond_4
    const-string v15, "PluginValidator"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "plugin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " has mismatched signatures against platform"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_5
    move-object/from16 v0, p1

    iget v11, v0, Lcom/tencent/component/plugin/PluginInfo;->minBasePlatformVersion:I

    .line 77
    .local v11, "minRequireVersion":I
    move-object/from16 v0, p1

    iget v8, v0, Lcom/tencent/component/plugin/PluginInfo;->maxBasePlatformVersion:I

    .line 79
    .local v8, "maxRequireVersion":I
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-eqz v15, :cond_8

    const/16 v5, 0x258

    .line 81
    .local v5, "currentVersion":I
    :goto_0
    if-lez v11, :cond_6

    if-gt v11, v5, :cond_7

    :cond_6
    if-lez v8, :cond_9

    if-ge v8, v5, :cond_9

    .line 83
    :cond_7
    new-instance v15, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "plugin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " require pluginPlatform version: (min:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", max:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", current is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 79
    .end local v5    # "currentVersion":I
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/tencent/component/plugin/server/PluginValidator;->getPlatformVersion(Lcom/tencent/component/plugin/server/PlatformServerContext;)I

    move-result v5

    goto :goto_0

    .line 88
    .restart local v5    # "currentVersion":I
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPlatformConfig()Lcom/tencent/component/plugin/PluginPlatformConfig;

    move-result-object v15

    iget-boolean v15, v15, Lcom/tencent/component/plugin/PluginPlatformConfig;->enbaleCorePlugin:Z

    if-eqz v15, :cond_14

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-nez v15, :cond_14

    .line 89
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    .line 90
    .local v12, "pluginRequirement":Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;
    iget v10, v12, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->minCorePluginVersion:I

    .line 91
    .local v10, "minRequireCorePluginVersion":I
    iget v7, v12, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->maxCorePluginVersion:I

    .line 92
    .local v7, "maxRequireCorePluginVersion":I
    iget-object v15, v12, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->requirementInfos:Ljava/util/ArrayList;

    if-eqz v15, :cond_10

    iget-object v15, v12, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->requirementInfos:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    .line 93
    iget-object v15, v12, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->requirementInfos:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;

    .line 94
    .local v14, "requirementInfo":Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;
    if-eqz v14, :cond_a

    .line 97
    const-string v16, "PluginValidator"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " requires "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v14, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginManagerServer()Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v16

    iget-object v0, v14, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getPluginInfo(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v13

    .line 100
    .local v13, "requireCorePluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    iget v11, v14, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;->minVersion:I

    .line 101
    if-nez v11, :cond_b

    if-eqz v10, :cond_b

    .line 102
    move v11, v10

    .line 104
    :cond_b
    iget v8, v14, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;->maxVersion:I

    .line 105
    if-nez v8, :cond_c

    if-eqz v7, :cond_c

    .line 106
    move v8, v7

    .line 108
    :cond_c
    if-nez v13, :cond_d

    .line 109
    new-instance v15, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "plugin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " require corePlugin["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] not exist. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 110
    :cond_d
    if-lez v11, :cond_e

    iget v0, v13, Lcom/tencent/component/plugin/PluginInfo;->version:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v11, v0, :cond_f

    :cond_e
    if-lez v8, :cond_a

    iget v0, v13, Lcom/tencent/component/plugin/PluginInfo;->maxAndroidVersion:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_a

    .line 112
    :cond_f
    new-instance v15, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "plugin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " require corePlugin["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] version: (min:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", max:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", current is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Lcom/tencent/component/plugin/PluginInfo;->version:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 117
    .end local v13    # "requireCorePluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .end local v14    # "requirementInfo":Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginManagerServer()Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getAllCorePluginInfos()Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, "corePluginList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    if-eqz v3, :cond_14

    .line 119
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_11
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/plugin/PluginInfo;

    .line 120
    .local v2, "corePluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v2, :cond_11

    .line 121
    if-lez v10, :cond_12

    iget v0, v2, Lcom/tencent/component/plugin/PluginInfo;->version:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v10, v0, :cond_13

    :cond_12
    if-lez v7, :cond_11

    iget v0, v2, Lcom/tencent/component/plugin/PluginInfo;->version:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_11

    .line 123
    :cond_13
    new-instance v15, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "plugin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " require corePlugin["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] version: (min:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", max:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", current is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v2, Lcom/tencent/component/plugin/PluginInfo;->version:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 134
    .end local v2    # "corePluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .end local v3    # "corePluginList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    .end local v7    # "maxRequireCorePluginVersion":I
    .end local v10    # "minRequireCorePluginVersion":I
    .end local v12    # "pluginRequirement":Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;
    :cond_14
    move-object/from16 v0, p1

    iget v9, v0, Lcom/tencent/component/plugin/PluginInfo;->minAndroidVersion:I

    .line 135
    .local v9, "minRequireAndroidVersion":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/tencent/component/plugin/PluginInfo;->maxAndroidVersion:I

    .line 136
    .local v6, "maxRequireAndroidVersion":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 137
    .local v4, "currentAndroidVersion":I
    if-lez v9, :cond_15

    if-gt v9, v4, :cond_16

    :cond_15
    if-lez v6, :cond_17

    if-ge v6, v4, :cond_17

    .line 139
    :cond_16
    new-instance v15, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "plugin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " require android version: (min:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", max:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", current is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 142
    :cond_17
    return-void
.end method
