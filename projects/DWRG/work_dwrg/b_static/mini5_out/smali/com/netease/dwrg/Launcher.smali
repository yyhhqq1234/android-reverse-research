.class public Lcom/netease/dwrg/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/dwrg/Launcher$CopyFile;,
        Lcom/netease/dwrg/Launcher$StorageStatus;,
        Lcom/netease/dwrg/Launcher$AssetInfo;,
        Lcom/netease/dwrg/Launcher$PatchFile;,
        Lcom/netease/dwrg/Launcher$PatchHandler;,
        Lcom/netease/dwrg/Launcher$UpdateHandler;
    }
.end annotation


# static fields
.field private static final KITKAT_UI_OPTION:I = 0xf06

.field private static final OTHER_UI_OPTION:I = 0x505

.field public static final STORAGE_DATA:I = 0x2

.field public static final STORAGE_EXTERNAL:I = 0x1

.field public static final STORAGE_INTERNAL:I


# instance fields
.field m_asset_filelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_asset_to_copy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/dwrg/Launcher$AssetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_copy_file:Lcom/netease/dwrg/Launcher$CopyFile;

.field private m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

.field private m_glclear_color:[F

.field private m_hook_class_loader_helper:Lcom/netease/dwrg/HookClassLoaderHelper;

.field private m_if_enable_patch_client_so:Ljava/lang/Boolean;

.field private m_is_from_game_center:Ljava/lang/Boolean;

.field private m_is_gl_loaded:Z

.field private m_lang_code:Ljava/lang/String;

.field private m_launcher:Lcom/netease/dwrg/Launcher;

.field private m_need_remove_shader_cache:Ljava/lang/Boolean;

.field private m_neox_root:Ljava/lang/String;

.field private m_patch_file:Lcom/netease/dwrg/Launcher$PatchFile;

.field private m_patch_progress_dlg:Landroid/app/ProgressDialog;

.field private m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

.field private m_progress_dlg:Landroid/app/ProgressDialog;

.field private m_real_height:I

.field private m_real_width:I

.field private m_size_to_copy:J

.field private m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

.field private m_timer:Ljava/util/Timer;

.field private m_view:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 120
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/dwrg/Launcher;->m_is_from_game_center:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 125
    iput-object v2, p0, Lcom/netease/dwrg/Launcher;->m_lang_code:Ljava/lang/String;

    const/4 v3, 0x4

    .line 127
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/netease/dwrg/Launcher;->m_glclear_color:[F

    .line 147
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/netease/dwrg/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    const/4 v3, 0x3

    .line 218
    new-array v3, v3, [Lcom/netease/dwrg/Launcher$StorageStatus;

    iput-object v3, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    .line 219
    iput-object v2, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    .line 220
    iput-object v2, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 221
    iput-wide v3, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    .line 222
    iput v0, p0, Lcom/netease/dwrg/Launcher;->m_real_width:I

    .line 223
    iput v0, p0, Lcom/netease/dwrg/Launcher;->m_real_height:I

    .line 224
    iput-object v1, p0, Lcom/netease/dwrg/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    .line 225
    iput-object v1, p0, Lcom/netease/dwrg/Launcher;->m_if_enable_patch_client_so:Ljava/lang/Boolean;

    .line 227
    iput-object v2, p0, Lcom/netease/dwrg/Launcher;->m_hook_class_loader_helper:Lcom/netease/dwrg/HookClassLoaderHelper;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/dwrg/Launcher;)Ljava/util/HashMap;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/dwrg/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher$CopyFile;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/dwrg/Launcher;->m_copy_file:Lcom/netease/dwrg/Launcher$CopyFile;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/dwrg/Launcher;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/netease/dwrg/Launcher;)Ljava/util/Timer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/dwrg/Launcher;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/netease/dwrg/Launcher;->m_is_gl_loaded:Z

    return p0
.end method

.method static synthetic access$202(Lcom/netease/dwrg/Launcher;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/netease/dwrg/Launcher;->m_is_gl_loaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/PlatformConfigParser;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/netease/dwrg/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/netease/dwrg/Launcher;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/netease/dwrg/Launcher;->m_real_width:I

    return p1
.end method

.method static synthetic access$602(Lcom/netease/dwrg/Launcher;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/netease/dwrg/Launcher;->m_real_height:I

    return p1
.end method

.method static synthetic access$700(Lcom/netease/dwrg/Launcher;)[F
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/dwrg/Launcher;->m_glclear_color:[F

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/dwrg/Launcher;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/netease/dwrg/Launcher;->runGame()V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/dwrg/Launcher;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    return-object p0
.end method

.method private static collectFileList(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 87
    const-string v2, "\t"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 88
    aget-object v2, p0, v2

    const-string v3, "\\\\"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-object p0, p0, v3

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getCoreNumber()I
    .locals 2

    .line 56
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/netease/dwrg/Launcher$1CpuFilter;

    invoke-direct {v1}, Lcom/netease/dwrg/Launcher$1CpuFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 60
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getNetworkType()I
    .locals 1

    .line 1336
    const-string v0, "connectivity"

    .line 1337
    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1338
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1341
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static getStat(Ljava/lang/String;)J
    .locals 5

    .line 73
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    .line 75
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v3, p0

    mul-long v3, v3, v1

    return-wide v3
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 5

    const-string v0, "country_code is: "

    .line 152
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_lang_code:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_2

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 155
    const-string v3, "getStringId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "jp"

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_lang_code:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_0
    const-string v0, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    :cond_1
    const-string v0, "cht"

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_lang_code:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    iput-object v2, p0, Lcom/netease/dwrg/Launcher;->m_lang_code:Ljava/lang/String;

    .line 165
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_lang_code:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "string"

    if-nez v0, :cond_3

    .line 167
    :try_start_1
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/dwrg/Launcher;->m_lang_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_3

    return v0

    .line 177
    :catch_1
    :cond_3
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static removeDirectory(Ljava/lang/String;)Z
    .locals 4

    .line 1434
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1437
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 1439
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1440
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    .line 1441
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 1442
    aget-object v2, p0, v1

    .line 1443
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1444
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1445
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1446
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->removeDirectory(Ljava/lang/String;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1449
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1452
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private removeOldApp()V
    .locals 7

    .line 1368
    const-string v0, "user_data.xml"

    const-string v1, "NeoXDevice"

    .line 1369
    new-instance v2, Lcom/netease/dwrg/UserDataParser;

    invoke-direct {v2}, Lcom/netease/dwrg/UserDataParser;-><init>()V

    const/4 v3, 0x0

    .line 1372
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 1377
    const-string v5, "Counld not find user_data.xml in assets"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v3

    :goto_0
    if-nez v4, :cond_0

    return-void

    .line 1385
    :cond_0
    invoke-virtual {v2, v4}, Lcom/netease/dwrg/UserDataParser;->parse(Ljava/io/InputStream;)V

    .line 1386
    invoke-virtual {v2}, Lcom/netease/dwrg/UserDataParser;->hasTimestamp()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1389
    const-string v0, "could not find timestamp in asset user_data.xml"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1393
    :cond_1
    invoke-virtual {v2}, Lcom/netease/dwrg/UserDataParser;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    .line 1396
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "asset timestamp:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1405
    const-string v4, "Counld not find user_data.xml in filesystem"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz v3, :cond_2

    .line 1412
    new-instance v0, Lcom/netease/dwrg/UserDataParser;

    invoke-direct {v0}, Lcom/netease/dwrg/UserDataParser;-><init>()V

    .line 1413
    invoke-virtual {v0, v3}, Lcom/netease/dwrg/UserDataParser;->parse(Ljava/io/InputStream;)V

    .line 1414
    invoke-virtual {v0}, Lcom/netease/dwrg/UserDataParser;->hasTimestamp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1416
    invoke-virtual {v0}, Lcom/netease/dwrg/UserDataParser;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1420
    :cond_2
    const-string v0, ""

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file timestamp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1423
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_if_enable_patch_client_so:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_hook_class_loader_helper:Lcom/netease/dwrg/HookClassLoaderHelper;

    if-eqz v0, :cond_3

    .line 1424
    invoke-virtual {v0}, Lcom/netease/dwrg/HookClassLoaderHelper;->getNeoxPatchLibPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->removeDirectory(Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method private runGame()V
    .locals 3

    .line 1352
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_if_enable_patch_client_so:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    new-instance v0, Lcom/netease/dwrg/HookClassLoaderHelper;

    invoke-direct {v0}, Lcom/netease/dwrg/HookClassLoaderHelper;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_hook_class_loader_helper:Lcom/netease/dwrg/HookClassLoaderHelper;

    .line 1355
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/netease/dwrg/HookClassLoaderHelper;->installDownloadedSo(Landroid/content/Context;Ljava/lang/String;)V

    .line 1358
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    const-string v2, "patch_config.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1360
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    invoke-virtual {v0}, Lcom/netease/dwrg/Launcher;->preparePatch()V

    goto :goto_0

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    invoke-virtual {v0}, Lcom/netease/dwrg/Launcher;->startGame()V

    :goto_0
    return-void
.end method


# virtual methods
.method calcAssetToCopy(Ljava/lang/String;)J
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 701
    iget-object v0, v7, Lcom/netease/dwrg/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    .line 708
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "filelist.txt"

    invoke-direct {v2, v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 709
    invoke-static {v1}, Lcom/netease/dwrg/Launcher;->collectFileList(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 718
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    move-object v9, v0

    .line 722
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 723
    iget-object v0, v7, Lcom/netease/dwrg/Launcher;->m_asset_filelist:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-wide/16 v12, 0x0

    move-wide v14, v12

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 725
    iget-object v0, v7, Lcom/netease/dwrg/Launcher;->m_asset_filelist:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 726
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 727
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 732
    :cond_2
    :try_start_1
    invoke-virtual {v10, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    .line 734
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 738
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide v1, v12

    :goto_2
    cmp-long v0, v1, v12

    if-eqz v0, :cond_4

    const-wide/16 v16, -0x1

    cmp-long v0, v1, v16

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-wide/from16 v16, v1

    goto :goto_5

    .line 746
    :cond_4
    :goto_4
    :try_start_2
    invoke-virtual {v10, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    .line 748
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 752
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide/from16 v16, v12

    .line 756
    :goto_5
    iget-object v0, v7, Lcom/netease/dwrg/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    new-instance v6, Lcom/netease/dwrg/Launcher$AssetInfo;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v5

    move-object v12, v5

    move-object v13, v6

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/netease/dwrg/Launcher$AssetInfo;-><init>(Lcom/netease/dwrg/Launcher;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-long v14, v14, v16

    :cond_5
    const-wide/16 v12, 0x0

    goto :goto_1

    :cond_6
    return-wide v14
.end method

.method determineStorage()Z
    .locals 13

    .line 766
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->initStorageStatus()V

    .line 770
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 771
    const-string v1, "filelist.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 772
    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->collectFileList(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_asset_filelist:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_asset_filelist:Ljava/util/HashMap;

    .line 778
    :goto_0
    const-string v0, "neox_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netease/dwrg/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 779
    const-string v2, "NeoXRoot"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    const-wide/32 v4, 0x100000

    const/4 v6, 0x1

    if-nez v2, :cond_5

    .line 782
    invoke-virtual {p0, v3}, Lcom/netease/dwrg/Launcher;->calcAssetToCopy(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    .line 783
    iput-object v3, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    .line 784
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v7, v0, v3

    .line 786
    iget-wide v8, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    add-long/2addr v8, v4

    iget-wide v10, v7, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v12, v8, v10

    if-gez v12, :cond_0

    .line 788
    iput-object v7, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 792
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    if-nez v0, :cond_2

    return v1

    .line 798
    :cond_2
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "neox_root"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    .line 799
    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 801
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    .line 803
    :cond_3
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    iget-object v1, v1, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    goto :goto_3

    .line 806
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    iget-object v2, v2, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    .line 807
    :goto_3
    invoke-direct {p0}, Lcom/netease/dwrg/Launcher;->removeOldApp()V

    return v6

    .line 814
    :cond_5
    invoke-direct {p0}, Lcom/netease/dwrg/Launcher;->removeOldApp()V

    .line 815
    iget-object v2, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const-string v3, "Storage"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    .line 816
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Launcher;->calcAssetToCopy(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    add-long/2addr v2, v4

    .line 817
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    iget-wide v4, v0, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    return v1

    :cond_6
    return v6
.end method

.method initStorageStatus()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 490
    :goto_0
    iget-object v2, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 492
    new-instance v3, Lcom/netease/dwrg/Launcher$StorageStatus;

    invoke-direct {v3, p0, p0, v1}, Lcom/netease/dwrg/Launcher$StorageStatus;-><init>(Lcom/netease/dwrg/Launcher;Lcom/netease/dwrg/Launcher;I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :cond_0
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 500
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getVolumePaths"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 501
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getVolumeState"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_1

    :catch_1
    nop

    move-object v4, v2

    :goto_1
    move-object v5, v2

    .line 506
    :goto_2
    const-string v6, "mounted"

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 510
    :try_start_2
    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 511
    :goto_3
    array-length v10, v4

    if-ge v9, v10, :cond_3

    .line 513
    aget-object v10, v4, v9

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v10, v11, v0

    invoke-virtual {v5, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 514
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 516
    aget-object v10, v4, v9

    invoke-static {v10}, Lcom/netease/dwrg/Launcher;->getStat(Ljava/lang/String;)J

    move-result-wide v10

    if-nez v9, :cond_1

    .line 519
    iget-object v12, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v12, v12, v0

    aget-object v13, v4, v9

    iput-object v13, v12, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 520
    iget-object v12, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v12, v12, v0

    iput-wide v10, v12, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    goto :goto_4

    .line 524
    :cond_1
    iget-object v12, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v12, v12, v3

    iget-wide v12, v12, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v14, v12, v7

    if-nez v14, :cond_2

    .line 526
    iget-object v12, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v12, v12, v3

    aget-object v13, v4, v9

    iput-object v13, v12, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 527
    iget-object v12, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v12, v12, v3

    iput-wide v10, v12, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :catch_2
    move-exception v1

    .line 543
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v1

    .line 539
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v1

    .line 535
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 547
    :cond_3
    :goto_5
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v1, v4, v7

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v1, v1, v3

    iget-wide v3, v1, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v1, v3, v7

    if-nez v1, :cond_4

    .line 549
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 551
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v1, v1, v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 552
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v1, v1, v0

    iget-object v3, v1, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-static {v3}, Lcom/netease/dwrg/Launcher;->getStat(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    .line 555
    :cond_4
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v1, v1, v0

    iget-wide v3, v1, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v1, v3, v7

    if-lez v1, :cond_5

    .line 557
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 558
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 561
    :cond_5
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 562
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v1, v1, v2

    iget-object v2, v1, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->getStat(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    .line 564
    const-string v1, "neox_config"

    invoke-virtual {p0, v1, v0}, Lcom/netease/dwrg/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 565
    const-string v2, "Storage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 566
    iget-object v2, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v4, v2, v7

    if-lez v4, :cond_6

    .line 568
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    goto :goto_7

    :cond_6
    :goto_6
    const/4 v1, 0x3

    if-ge v0, v1, :cond_8

    .line 574
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v1, v1, v0

    iget-wide v1, v1, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v3, v1, v7

    if-lez v3, :cond_7

    .line 576
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    goto :goto_7

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    return-void
.end method

.method launch()V
    .locals 7

    .line 831
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->determineStorage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 833
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 836
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 840
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be a directory!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeoXDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->finish()V

    return-void

    .line 847
    :cond_1
    new-instance v1, Lcom/netease/dwrg/Launcher$2;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Launcher$2;-><init>(Lcom/netease/dwrg/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 855
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 857
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 863
    :cond_2
    :goto_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Documents/PlatformConfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 864
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 867
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    .line 871
    :cond_3
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "PlatformConfig.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 876
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    invoke-virtual {v1, v0}, Lcom/netease/dwrg/PlatformConfigParser;->parse(Ljava/io/InputStream;)V

    .line 879
    :cond_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 883
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 886
    :goto_3
    iget-wide v0, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_6

    .line 888
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 889
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 891
    new-instance v0, Lcom/netease/dwrg/Launcher$CopyFile;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/Launcher$CopyFile;-><init>(Lcom/netease/dwrg/Launcher;)V

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_copy_file:Lcom/netease/dwrg/Launcher$CopyFile;

    .line 892
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_copy_file:Lcom/netease/dwrg/Launcher$CopyFile;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 893
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 894
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 896
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 898
    :cond_5
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    .line 899
    new-instance v2, Lcom/netease/dwrg/Launcher$3;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Launcher$3;-><init>(Lcom/netease/dwrg/Launcher;)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x3c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_5

    .line 911
    :cond_6
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    new-instance v1, Lcom/netease/dwrg/Launcher$4;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Launcher$4;-><init>(Lcom/netease/dwrg/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 923
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "neox_launcher_asset_size_to_copy"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    .line 925
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 927
    iget-object v2, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    if-nez v2, :cond_8

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "neox_launcher_no_enough_space"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 933
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    iget-object v0, v0, Lcom/netease/dwrg/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    iget-wide v0, v0, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    .line 935
    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 938
    :goto_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ic_launcher"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 939
    const-string v1, "neox_cancel"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/dwrg/Launcher$5;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Launcher$5;-><init>(Lcom/netease/dwrg/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 948
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_5
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->finish()V

    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 247
    const-string v0, "Launcher"

    const-string v1, "launcher intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    const-string v0, "fromPackage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isFromGameCenter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NeoX"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string v1, "com.vivo.game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const-string v0, "vivo start game by game center"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_is_from_game_center:Ljava/lang/Boolean;

    .line 258
    :cond_2
    const-string v0, "key_launch_from_ogc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    const-string v0, "oppo start game by game center"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_is_from_game_center:Ljava/lang/Boolean;

    .line 265
    :cond_3
    const-string v0, "start_from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "mobilesafe_gameacc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 268
    const-string p1, "360 start game by gameacc"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/Launcher;->m_is_from_game_center:Ljava/lang/Boolean;

    .line 274
    :cond_4
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    .line 275
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 276
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 277
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 278
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 279
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 280
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const-string v0, "neox_launcher_copy_data"

    invoke-direct {p0, v0}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 281
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const-string v0, "ic_launcher"

    invoke-direct {p0, v0}, Lcom/netease/dwrg/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 282
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 283
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x20080

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 285
    invoke-static {}, Lcom/netease/dwrg/Launcher;->getCoreNumber()I

    move-result p1

    .line 287
    new-instance v0, Lcom/netease/dwrg/PlatformConfigParser;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/PlatformConfigParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    .line 288
    const-string v3, "SDK_INT"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3, v4}, Lcom/netease/dwrg/PlatformConfigParser;->addVariable(Ljava/lang/String;I)V

    .line 290
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    const-string v3, "CORE_NUM"

    invoke-virtual {v0, v3, p1}, Lcom/netease/dwrg/PlatformConfigParser;->addVariable(Ljava/lang/String;I)V

    .line 291
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FULL_MODEL"

    invoke-virtual {v0, v4, v3}, Lcom/netease/dwrg/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    const-string v3, "MODEL"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/netease/dwrg/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    const-string v3, "MANUFACTURER"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/netease/dwrg/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    const-string v3, "HARDWARE"

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/netease/dwrg/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "SDK_INT is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "RELEASE is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "CORE_NUM is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MODEL is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MANUFACTURER is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "HARDWARE is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iput-boolean v1, p0, Lcom/netease/dwrg/Launcher;->m_is_gl_loaded:Z

    .line 303
    new-instance p1, Landroid/opengl/GLSurfaceView;

    invoke-direct {p1, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    .line 308
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v0, 0xf06

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    .line 315
    iput-object p0, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    .line 316
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 317
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    new-instance v0, Lcom/netease/dwrg/Launcher$1;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/Launcher$1;-><init>(Lcom/netease/dwrg/Launcher;)V

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 477
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Launcher;->setContentView(Landroid/view/View;)V

    .line 480
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 681
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 688
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v0, 0xf06

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method patching()V
    .locals 8

    .line 1223
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1224
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v1, "neox_launcher_updating"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1225
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetTotalSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1226
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1227
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v1, "%2d/%2dKB"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1229
    new-instance v0, Lcom/netease/dwrg/Launcher$PatchFile;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/Launcher$PatchFile;-><init>(Lcom/netease/dwrg/Launcher;)V

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_file:Lcom/netease/dwrg/Launcher$PatchFile;

    .line 1230
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_file:Lcom/netease/dwrg/Launcher$PatchFile;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1231
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1233
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    .line 1234
    new-instance v3, Lcom/netease/dwrg/Launcher$9;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/Launcher$9;-><init>(Lcom/netease/dwrg/Launcher;)V

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method preparePatch()V
    .locals 3

    .line 1109
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1116
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1119
    :cond_1
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->savePreference()V

    .line 1121
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 1122
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1123
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1124
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1125
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1126
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "ic_launcher"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1127
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1128
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x20080

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1129
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "neox_launcher_check_update"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1130
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1131
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1132
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1135
    const-string v0, "c++_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1137
    const-string v0, "client"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1139
    new-instance v0, Lcom/netease/dwrg/Launcher$6;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/Launcher$6;-><init>(Lcom/netease/dwrg/Launcher;)V

    const/4 v1, 0x0

    .line 1181
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method savePreference()V
    .locals 8

    .line 585
    const-string v0, "neox_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netease/dwrg/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 586
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 587
    iget-object v3, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    iget v3, v3, Lcom/netease/dwrg/Launcher$StorageStatus;->Type:I

    const-string v4, "Storage"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "NeoXRoot"

    iget-object v4, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 591
    const-string v3, "DEVICE_RELEASE"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "current            device_release_version_value is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NeoX"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "save in preference device_release_version_value is "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 597
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 602
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    .line 606
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 608
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 609
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "need_remove_shader_cache"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 610
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_is_from_game_center:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "is_from_game_center"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 614
    const-string v0, "RealWidth"

    iget v1, p0, Lcom/netease/dwrg/Launcher;->m_real_width:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RealHeight"

    iget v2, p0, Lcom/netease/dwrg/Launcher;->m_real_height:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    invoke-virtual {v1}, Lcom/netease/dwrg/PlatformConfigParser;->getOptions()Ljava/util/HashMap;

    move-result-object v1

    .line 617
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 619
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 621
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_1

    .line 623
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 625
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_1

    .line 627
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 629
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_1

    .line 632
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method startGame()V
    .locals 4

    .line 637
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 644
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 646
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 647
    const-string v0, "NeoXDevice"

    const-string v1, "Failed to dismiss progress_dlg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->savePreference()V

    .line 651
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    const-class v2, Lcom/netease/dwrg/Client;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 653
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_if_enable_patch_client_so:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 655
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 656
    const-string v2, "new_so"

    sget-boolean v3, Lcom/netease/dwrg/HookClassLoaderHelper;->m_need_use_new_so:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 657
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const/high16 v1, 0x34000000

    .line 661
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 662
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    invoke-virtual {v1, v0}, Lcom/netease/dwrg/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 663
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->finish()V

    return-void
.end method

.method startPatch()V
    .locals 3

    .line 1188
    invoke-direct {p0}, Lcom/netease/dwrg/Launcher;->getNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1190
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetTotalSize()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1194
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "neox_launcher_warn"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1195
    const-string v1, "neox_launcher_not_wifi"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "ic_launcher"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1196
    const-string v1, "neox_launcher_continue"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/dwrg/Launcher$7;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Launcher$7;-><init>(Lcom/netease/dwrg/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1206
    const-string v1, "neox_launcher_stop"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/dwrg/Launcher$8;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Launcher$8;-><init>(Lcom/netease/dwrg/Launcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 1191
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    invoke-virtual {v0}, Lcom/netease/dwrg/Launcher;->patching()V

    :goto_1
    return-void
.end method

.method updateCopiedSize(J)V
    .locals 2

    const-wide/16 v0, 0x64

    mul-long p1, p1, v0

    .line 674
    iget-wide v0, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    div-long/2addr p1, v0

    long-to-int p2, p1

    .line 675
    iget-object p1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method updateCopyingFile(Ljava/lang/String;)V
    .locals 1

    .line 668
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "neox_launcher_copying"

    invoke-direct {p0, v0}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 669
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
