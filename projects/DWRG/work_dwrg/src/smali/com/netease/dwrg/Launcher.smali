.class public Lcom/netease/dwrg/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/dwrg/Launcher$PatchHandler;,
        Lcom/netease/dwrg/Launcher$PatchFile;,
        Lcom/netease/dwrg/Launcher$UpdateHandler;,
        Lcom/netease/dwrg/Launcher$CopyFile;,
        Lcom/netease/dwrg/Launcher$StorageStatus;,
        Lcom/netease/dwrg/Launcher$AssetInfo;
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
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_asset_to_copy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/dwrg/Launcher$AssetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_copy_file:Lcom/netease/dwrg/Launcher$CopyFile;

.field private m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

.field private m_glclear_color:[F

.field private m_is_gl_loaded:Z

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
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_glclear_color:[F

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/dwrg/Launcher$StorageStatus;

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    .line 180
    iput-object v1, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    .line 181
    iput-object v1, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    .line 183
    iput v2, p0, Lcom/netease/dwrg/Launcher;->m_real_width:I

    .line 184
    iput v2, p0, Lcom/netease/dwrg/Launcher;->m_real_height:I

    .line 185
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    .line 1190
    return-void

    .line 114
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netease/dwrg/Launcher;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher$CopyFile;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_copy_file:Lcom/netease/dwrg/Launcher$CopyFile;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netease/dwrg/Launcher;)J
    .locals 2
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/netease/dwrg/Launcher;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netease/dwrg/Launcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/netease/dwrg/Launcher;->m_is_gl_loaded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/netease/dwrg/Launcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/netease/dwrg/Launcher;->m_is_gl_loaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/PlatformConfigParser;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netease/dwrg/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/netease/dwrg/Launcher;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/netease/dwrg/Launcher;->m_real_width:I

    return p1
.end method

.method static synthetic access$602(Lcom/netease/dwrg/Launcher;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/netease/dwrg/Launcher;->m_real_height:I

    return p1
.end method

.method static synthetic access$700(Lcom/netease/dwrg/Launcher;)[F
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_glclear_color:[F

    return-object v0
.end method

.method static synthetic access$800(Lcom/netease/dwrg/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netease/dwrg/Launcher;->runGame()V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/dwrg/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    return-object v0
.end method

.method private static collectFileList(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 8
    .param p0, "filelist_txt"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
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

    .prologue
    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v2, "md5map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 79
    .local v4, "reader":Ljava/io/BufferedReader;
    const-string v1, ""

    .line 80
    .local v1, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    const-string v5, "\t"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "parts":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string v6, "\\\\"

    const-string v7, "/"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "fpath":Ljava/lang/String;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    .end local v0    # "fpath":Ljava/lang/String;
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private static getCoreNumber()I
    .locals 4

    .prologue
    .line 52
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/netease/dwrg/Launcher$1CpuFilter;

    invoke-direct {v3}, Lcom/netease/dwrg/Launcher$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 56
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return v3

    .line 58
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, "id":I
    return v0
.end method

.method private getNetworkType()I
    .locals 3

    .prologue
    .line 1223
    const-string v2, "connectivity"

    .line 1224
    invoke-virtual {p0, v2}, Lcom/netease/dwrg/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1225
    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1226
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 1228
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 1232
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static getStat(Ljava/lang/String;)J
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 69
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 70
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 71
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "id":I
    return v0
.end method

.method public static removeDirectory(Ljava/lang/String;)Z
    .locals 6
    .param p0, "delpath"    # Ljava/lang/String;

    .prologue
    .line 1311
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1312
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1314
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1331
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 1316
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1317
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1318
    .local v3, "filelist":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 1319
    aget-object v0, v3, v4

    .line 1320
    .local v0, "delfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1321
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1318
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1322
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1323
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->removeDirectory(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1328
    .end local v0    # "delfile":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filelist":[Ljava/io/File;
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 1329
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1326
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "filelist":[Ljava/io/File;
    .restart local v4    # "i":I
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private removeOldApp()V
    .locals 11

    .prologue
    .line 1248
    const/4 v6, 0x0

    .line 1249
    .local v6, "inputstream":Ljava/io/InputStream;
    new-instance v7, Lcom/netease/dwrg/UserDataParser;

    invoke-direct {v7}, Lcom/netease/dwrg/UserDataParser;-><init>()V

    .line 1252
    .local v7, "parser":Lcom/netease/dwrg/UserDataParser;
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "user_data.xml"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1260
    :goto_0
    if-nez v6, :cond_1

    .line 1306
    :cond_0
    :goto_1
    return-void

    .line 1254
    :catch_0
    move-exception v1

    .line 1257
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "NeoXDevice"

    const-string v9, "Counld not find user_data.xml in assets"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1265
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v7, v6}, Lcom/netease/dwrg/UserDataParser;->parse(Ljava/io/InputStream;)V

    .line 1266
    invoke-virtual {v7}, Lcom/netease/dwrg/UserDataParser;->hasTimestamp()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1269
    const-string v8, "NeoXDevice"

    const-string v9, "could not find timestamp in asset user_data.xml"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1273
    :cond_2
    invoke-virtual {v7}, Lcom/netease/dwrg/UserDataParser;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    .line 1276
    .local v0, "asset_timestamp":Ljava/lang/String;
    const-string v8, "NeoXDevice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "asset timestamp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v2, 0x0

    .line 1281
    .local v2, "file_inputstream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    const-string v10, "user_data.xml"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "file_inputstream":Ljava/io/InputStream;
    .local v3, "file_inputstream":Ljava/io/InputStream;
    move-object v2, v3

    .line 1289
    .end local v3    # "file_inputstream":Ljava/io/InputStream;
    .restart local v2    # "file_inputstream":Ljava/io/InputStream;
    :goto_2
    const-string v5, ""

    .line 1290
    .local v5, "file_timestamp":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1292
    new-instance v4, Lcom/netease/dwrg/UserDataParser;

    invoke-direct {v4}, Lcom/netease/dwrg/UserDataParser;-><init>()V

    .line 1293
    .local v4, "file_parser":Lcom/netease/dwrg/UserDataParser;
    invoke-virtual {v4, v2}, Lcom/netease/dwrg/UserDataParser;->parse(Ljava/io/InputStream;)V

    .line 1294
    invoke-virtual {v4}, Lcom/netease/dwrg/UserDataParser;->hasTimestamp()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1296
    invoke-virtual {v4}, Lcom/netease/dwrg/UserDataParser;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    .line 1300
    .end local v4    # "file_parser":Lcom/netease/dwrg/UserDataParser;
    :cond_3
    const-string v8, "NeoXDevice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file timestamp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1303
    iget-object v8, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-static {v8}, Lcom/netease/dwrg/Launcher;->removeDirectory(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1283
    .end local v5    # "file_timestamp":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1285
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "NeoXDevice"

    const-string v9, "Counld not find user_data.xml in filesystem"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private runGame()V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->startGame()V

    return-void
.end method


# virtual methods
.method calcAssetToCopy(Ljava/lang/String;)J
    .locals 18
    .param p1, "neox_root"    # Ljava/lang/String;

    .prologue
    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 594
    const/4 v9, 0x0

    .line 595
    .local v9, "dest_filelist_txt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 599
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "filelist.txt"

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v13, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 600
    .local v13, "inputStream":Ljava/io/InputStream;
    invoke-static {v13}, Lcom/netease/dwrg/Launcher;->collectFileList(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 607
    .end local v13    # "inputStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-nez v9, :cond_1

    .line 609
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "dest_filelist_txt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 612
    .restart local v9    # "dest_filelist_txt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-wide/16 v14, 0x0

    .line 613
    .local v14, "total_size":J
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    .line 614
    .local v8, "am":Landroid/content/res/AssetManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_asset_filelist:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 616
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_asset_filelist:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 617
    .local v5, "srcmd5":Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 618
    .local v10, "dstmd5":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 620
    :cond_3
    const-wide/16 v6, 0x0

    .line 623
    .local v6, "size":J
    :try_start_1
    invoke-virtual {v8, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    .line 624
    .local v12, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 625
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 633
    .end local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_4

    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_5

    .line 637
    :cond_4
    :try_start_2
    invoke-virtual {v8, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 638
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    invoke-virtual {v13}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v6, v2

    .line 639
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 647
    .end local v13    # "inputStream":Ljava/io/InputStream;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/dwrg/Launcher;->m_asset_to_copy:Ljava/util/HashMap;

    move-object/from16 v17, v0

    new-instance v2, Lcom/netease/dwrg/Launcher$AssetInfo;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/netease/dwrg/Launcher$AssetInfo;-><init>(Lcom/netease/dwrg/Launcher;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    add-long/2addr v14, v6

    goto :goto_1

    .line 602
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "srcmd5":Ljava/lang/String;
    .end local v6    # "size":J
    .end local v8    # "am":Landroid/content/res/AssetManager;
    .end local v10    # "dstmd5":Ljava/lang/String;
    .end local v14    # "total_size":J
    :catch_0
    move-exception v11

    .line 604
    .local v11, "e":Ljava/io/IOException;
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 627
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "srcmd5":Ljava/lang/String;
    .restart local v6    # "size":J
    .restart local v8    # "am":Landroid/content/res/AssetManager;
    .restart local v10    # "dstmd5":Ljava/lang/String;
    .restart local v14    # "total_size":J
    :catch_1
    move-exception v11

    .line 629
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 641
    .end local v11    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 643
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 644
    const-wide/16 v6, 0x0

    goto :goto_3

    .line 651
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "srcmd5":Ljava/lang/String;
    .end local v6    # "size":J
    .end local v10    # "dstmd5":Ljava/lang/String;
    .end local v11    # "e":Ljava/io/IOException;
    :cond_6
    return-wide v14
.end method

.method determineStorage()Z
    .locals 12

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->initStorageStatus()V

    .line 661
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 662
    .local v0, "am":Landroid/content/res/AssetManager;
    const-string v5, "filelist.txt"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 663
    .local v2, "filelist_txt":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->collectFileList(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/dwrg/Launcher;->m_asset_filelist:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "filelist_txt":Ljava/io/InputStream;
    :goto_0
    const-string v5, "neox_config"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/netease/dwrg/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 670
    .local v3, "neox_config":Landroid/content/SharedPreferences;
    const-string v5, "NeoXRoot"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    .line 671
    iget-object v5, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 673
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/netease/dwrg/Launcher;->calcAssetToCopy(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    .line 674
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    .line 675
    iget-object v6, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v4, v6, v5

    .line 677
    .local v4, "ss":Lcom/netease/dwrg/Launcher$StorageStatus;
    iget-wide v8, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    const-wide/32 v10, 0x100000

    add-long/2addr v8, v10

    iget-wide v10, v4, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 679
    iput-object v4, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    .line 683
    .end local v4    # "ss":Lcom/netease/dwrg/Launcher$StorageStatus;
    :cond_0
    iget-object v5, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    if-nez v5, :cond_2

    .line 685
    const/4 v5, 0x0

    .line 709
    :goto_2
    return v5

    .line 665
    .end local v3    # "neox_config":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 667
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/netease/dwrg/Launcher;->m_asset_filelist:Ljava/util/HashMap;

    goto :goto_0

    .line 675
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v3    # "neox_config":Landroid/content/SharedPreferences;
    .restart local v4    # "ss":Lcom/netease/dwrg/Launcher$StorageStatus;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 689
    .end local v4    # "ss":Lcom/netease/dwrg/Launcher$StorageStatus;
    :cond_2
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "neox_root"

    invoke-direct {p0, v6}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    .line 690
    iget-object v5, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    const-string v6, "/sdcard/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 692
    iget-object v5, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    .line 694
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    iget-object v6, v6, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    .line 695
    invoke-direct {p0}, Lcom/netease/dwrg/Launcher;->removeOldApp()V

    .line 696
    const/4 v5, 0x1

    goto :goto_2

    .line 702
    :cond_4
    invoke-direct {p0}, Lcom/netease/dwrg/Launcher;->removeOldApp()V

    .line 703
    iget-object v5, p0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const-string v6, "Storage"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    .line 704
    iget-object v5, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/netease/dwrg/Launcher;->calcAssetToCopy(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    .line 705
    iget-wide v6, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    const-wide/32 v8, 0x100000

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    iget-wide v8, v5, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    .line 707
    const/4 v5, 0x0

    goto :goto_2

    .line 709
    :cond_5
    const/4 v5, 0x1

    goto :goto_2
.end method

.method initStorageStatus()V
    .locals 18

    .prologue
    .line 406
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    array-length v13, v13

    if-ge v3, v13, :cond_0

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    new-instance v14, Lcom/netease/dwrg/Launcher$StorageStatus;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1, v3}, Lcom/netease/dwrg/Launcher$StorageStatus;-><init>(Lcom/netease/dwrg/Launcher;Lcom/netease/dwrg/Launcher;I)V

    aput-object v14, v13, v3

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    :cond_0
    const-string v13, "storage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/netease/dwrg/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;

    .line 412
    .local v10, "sm":Landroid/os/storage/StorageManager;
    const/4 v4, 0x0

    .line 413
    .local v4, "method_getVolumePaths":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 416
    .local v5, "method_getVolumeState":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getVolumePaths"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 417
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getVolumeState"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 422
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 426
    const/4 v13, 0x0

    :try_start_1
    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v4, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object v0, v13

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 427
    .local v7, "paths":[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_2
    array-length v13, v7

    if-ge v3, v13, :cond_3

    .line 429
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v15, v7, v3

    aput-object v15, v13, v14

    invoke-virtual {v5, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 430
    .local v11, "status":Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 432
    aget-object v13, v7, v3

    invoke-static {v13}, Lcom/netease/dwrg/Launcher;->getStat(Ljava/lang/String;)J

    move-result-wide v8

    .line 433
    .local v8, "size":J
    if-nez v3, :cond_2

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aget-object v14, v7, v3

    iput-object v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 436
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iput-wide v8, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    .line 427
    .end local v8    # "size":J
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 440
    .restart local v8    # "size":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    iget-wide v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_1

    .line 442
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    aget-object v14, v7, v3

    iput-object v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 443
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    iput-wide v8, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 449
    .end local v7    # "paths":[Ljava/lang/String;
    .end local v8    # "size":J
    .end local v11    # "status":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 451
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 463
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-wide v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    iget-wide v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_4

    .line 465
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 467
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget-object v14, v14, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-static {v14}, Lcom/netease/dwrg/Launcher;->getStat(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    .line 471
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-wide v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_5

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 477
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    .line 478
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    iget-object v14, v14, Lcom/netease/dwrg/Launcher$StorageStatus;->Path:Ljava/lang/String;

    invoke-static {v14}, Lcom/netease/dwrg/Launcher;->getStat(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    .line 480
    const-string v13, "neox_config"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/netease/dwrg/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 481
    .local v6, "neox_config":Landroid/content/SharedPreferences;
    const-string v13, "Storage"

    const/4 v14, 0x0

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 482
    .local v12, "storage_type":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v13, v13, v12

    iget-wide v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_7

    .line 484
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v13, v13, v12

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    .line 497
    :cond_6
    :goto_5
    return-void

    .line 453
    .end local v6    # "neox_config":Landroid/content/SharedPreferences;
    .end local v12    # "storage_type":I
    :catch_1
    move-exception v2

    .line 455
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_4

    .line 457
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 459
    .local v2, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_4

    .line 488
    .end local v2    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local v6    # "neox_config":Landroid/content/SharedPreferences;
    .restart local v12    # "storage_type":I
    :cond_7
    const/4 v3, 0x0

    :goto_6
    const/4 v13, 0x3

    if-ge v3, v13, :cond_6

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v13, v13, v3

    iget-wide v14, v13, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_8

    .line 492
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/dwrg/Launcher;->m_storage_statuses:[Lcom/netease/dwrg/Launcher$StorageStatus;

    aget-object v13, v13, v3

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    goto :goto_5

    .line 488
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 419
    .end local v6    # "neox_config":Landroid/content/SharedPreferences;
    .end local v12    # "storage_type":I
    :catch_3
    move-exception v13

    goto/16 :goto_1
.end method

.method launch()V
    .locals 19

    .prologue
    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Launcher;->determineStorage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 721
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 722
    .local v14, "neoxDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 724
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 748
    :cond_0
    const/4 v12, 0x0

    .line 751
    .local v12, "inputstream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Documents/PlatformConfig.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 752
    .local v15, "platformConfigFilePath":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 753
    .local v16, "platformConfigInDocument":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 755
    new-instance v13, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v12    # "inputstream":Ljava/io/InputStream;
    .local v13, "inputstream":Ljava/io/InputStream;
    move-object v12, v13

    .line 762
    .end local v13    # "inputstream":Ljava/io/InputStream;
    .restart local v12    # "inputstream":Ljava/io/InputStream;
    :goto_0
    if-eqz v12, :cond_1

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    invoke-virtual {v2, v12}, Lcom/netease/dwrg/PlatformConfigParser;->parse(Ljava/io/InputStream;)V

    .line 767
    :cond_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    .end local v15    # "platformConfigFilePath":Ljava/lang/String;
    .end local v16    # "platformConfigInDocument":Ljava/io/File;
    :goto_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 779
    new-instance v2, Lcom/netease/dwrg/Launcher$CopyFile;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/netease/dwrg/Launcher$CopyFile;-><init>(Lcom/netease/dwrg/Launcher;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netease/dwrg/Launcher;->m_copy_file:Lcom/netease/dwrg/Launcher$CopyFile;

    .line 780
    new-instance v18, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_copy_file:Lcom/netease/dwrg/Launcher$CopyFile;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 781
    .local v18, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    if-eqz v2, :cond_2

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 786
    :cond_2
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    new-instance v3, Lcom/netease/dwrg/Launcher$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/netease/dwrg/Launcher$3;-><init>(Lcom/netease/dwrg/Launcher;)V

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x3c

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 838
    .end local v12    # "inputstream":Ljava/io/InputStream;
    .end local v14    # "neoxDir":Ljava/io/File;
    .end local v18    # "thread":Ljava/lang/Thread;
    :goto_2
    return-void

    .line 728
    .restart local v14    # "neoxDir":Ljava/io/File;
    :cond_3
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    .line 730
    const-string v2, "NeoXDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be a directory!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Launcher;->finish()V

    goto :goto_2

    .line 735
    :cond_4
    new-instance v2, Lcom/netease/dwrg/Launcher$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/netease/dwrg/Launcher$2;-><init>(Lcom/netease/dwrg/Launcher;)V

    invoke-virtual {v14, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    .line 743
    .local v10, "dumpFiles":[Ljava/io/File;
    array-length v3, v10

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_0

    aget-object v9, v10, v2

    .line 745
    .local v9, "dumpFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 743
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 759
    .end local v9    # "dumpFile":Ljava/io/File;
    .end local v10    # "dumpFiles":[Ljava/io/File;
    .restart local v12    # "inputstream":Ljava/io/InputStream;
    .restart local v15    # "platformConfigFilePath":Ljava/lang/String;
    .restart local v16    # "platformConfigInDocument":Ljava/io/File;
    :cond_5
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "PlatformConfig.xml"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto/16 :goto_0

    .line 769
    .end local v15    # "platformConfigFilePath":Ljava/lang/String;
    .end local v16    # "platformConfigInDocument":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 771
    .local v11, "ex":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 799
    .end local v11    # "ex":Ljava/io/IOException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    new-instance v3, Lcom/netease/dwrg/Launcher$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/netease/dwrg/Launcher$4;-><init>(Lcom/netease/dwrg/Launcher;)V

    invoke-virtual {v2, v3}, Lcom/netease/dwrg/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 811
    .end local v12    # "inputstream":Ljava/io/InputStream;
    .end local v14    # "neoxDir":Ljava/io/File;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "neox_launcher_asset_size_to_copy"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    .line 813
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 815
    .local v17, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    if-nez v2, :cond_8

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "neox_launcher_no_enough_space"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 826
    :goto_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "ic_launcher"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/netease/dwrg/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 827
    .local v8, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "neox_cancel"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/netease/dwrg/Launcher$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/netease/dwrg/Launcher$5;-><init>(Lcom/netease/dwrg/Launcher;)V

    invoke-virtual {v8, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 836
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 821
    .end local v8    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    iget-object v3, v3, Lcom/netease/dwrg/Launcher$StorageStatus;->UIString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    iget-wide v4, v3, Lcom/netease/dwrg/Launcher$StorageStatus;->AvailableSize:J

    .line 823
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_4
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x80

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const v1, 0x5348

    invoke-virtual {p0, v0, v1}, Lcom/netease/dwrg/Launcher;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->finish()V

    .line 397
    :goto_0
    return-void

    .line 199
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    .line 200
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 201
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 202
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 203
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 204
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 205
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "neox_launcher_copy_data"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 206
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "ic_launcher"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 207
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 208
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x20080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 210
    invoke-static {}, Lcom/netease/dwrg/Launcher;->getCoreNumber()I

    move-result v0

    .line 212
    .local v0, "core_num":I
    new-instance v1, Lcom/netease/dwrg/PlatformConfigParser;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/PlatformConfigParser;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    .line 213
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    const-string v2, "SDK_INT"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2, v3}, Lcom/netease/dwrg/PlatformConfigParser;->addVariable(Ljava/lang/String;I)V

    .line 215
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    const-string v2, "CORE_NUM"

    invoke-virtual {v1, v2, v0}, Lcom/netease/dwrg/PlatformConfigParser;->addVariable(Ljava/lang/String;I)V

    .line 216
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    const-string v2, "MODEL"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netease/dwrg/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    const-string v2, "MANUFACTURER"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netease/dwrg/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "NeoX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK_INT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v1, "NeoX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RELEASE is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v1, "NeoX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CORE_NUM is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v1, "NeoX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODEL is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v1, "NeoX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MANUFACTURER is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iput-boolean v4, p0, Lcom/netease/dwrg/Launcher;->m_is_gl_loaded:Z

    .line 225
    new-instance v1, Landroid/opengl/GLSurfaceView;

    invoke-direct {v1, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    .line 226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3

    .line 228
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    .line 230
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v2, 0xf06

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    .line 237
    :cond_3
    :goto_1
    iput-object p0, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    .line 238
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 239
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/netease/dwrg/Launcher$1;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Launcher$1;-><init>(Lcom/netease/dwrg/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 393
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Launcher;->setContentView(Landroid/view/View;)V

    .line 396
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_0

    .line 234
    :cond_4
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v2, 0x505

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    const v0, 0x5348

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->recreate()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 572
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 573
    if-eqz p1, :cond_0

    .line 575
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 577
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 579
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_view:Landroid/opengl/GLSurfaceView;

    const/16 v1, 0x505

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method patching()V
    .locals 7

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1112
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v1, "neox_launcher_updating"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1113
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetTotalSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1114
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1115
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v1, "%2d/%2dKB"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1117
    new-instance v0, Lcom/netease/dwrg/Launcher$PatchFile;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/Launcher$PatchFile;-><init>(Lcom/netease/dwrg/Launcher;)V

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_file:Lcom/netease/dwrg/Launcher$PatchFile;

    .line 1118
    new-instance v6, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_patch_file:Lcom/netease/dwrg/Launcher$PatchFile;

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1119
    .local v6, "thread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1121
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    .line 1122
    iget-object v0, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    new-instance v1, Lcom/netease/dwrg/Launcher$9;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Launcher$9;-><init>(Lcom/netease/dwrg/Launcher;)V

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1132
    return-void
.end method

.method preparePatch()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 997
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 999
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 1004
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1007
    :cond_1
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->savePreference()V

    .line 1009
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    .line 1010
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1011
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1012
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1013
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1014
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "ic_launcher"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1015
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 1016
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x20080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1017
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const-string v2, "neox_launcher_check_update"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1018
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1019
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1020
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_patch_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 1022
    const-string v1, "fmodex"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1023
    const-string v1, "fmodevent"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1025
    const-string v1, "client"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1027
    new-instance v0, Lcom/netease/dwrg/Launcher$6;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/Launcher$6;-><init>(Lcom/netease/dwrg/Launcher;)V

    .line 1069
    .local v0, "task":Landroid/os/AsyncTask;
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1072
    return-void
.end method

.method savePreference()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 501
    const-string v6, "neox_config"

    invoke-virtual {p0, v6, v9}, Lcom/netease/dwrg/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 502
    .local v4, "neox_config":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 503
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "Storage"

    iget-object v7, p0, Lcom/netease/dwrg/Launcher;->m_current_storage:Lcom/netease/dwrg/Launcher$StorageStatus;

    iget v7, v7, Lcom/netease/dwrg/Launcher$StorageStatus;->Type:I

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "NeoXRoot"

    iget-object v8, p0, Lcom/netease/dwrg/Launcher;->m_neox_root:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 506
    const-string v0, "DEVICE_RELEASE"

    .line 507
    .local v0, "device_release_version_name":Ljava/lang/String;
    const-string v6, ""

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "device_release_version_value":Ljava/lang/String;
    const-string v6, "NeoX"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current            device_release_version_value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v6, "NeoX"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save in preference device_release_version_value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 513
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 515
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/netease/dwrg/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    .line 522
    :cond_0
    :goto_0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 524
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 525
    const-string v6, "need_remove_shader_cache"

    iget-object v7, p0, Lcom/netease/dwrg/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 528
    iget v6, p0, Lcom/netease/dwrg/Launcher;->m_real_width:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/netease/dwrg/Launcher;->m_real_height:I

    if-eqz v6, :cond_1

    .line 530
    const-string v6, "RealWidth"

    iget v7, p0, Lcom/netease/dwrg/Launcher;->m_real_width:I

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "RealHeight"

    iget v8, p0, Lcom/netease/dwrg/Launcher;->m_real_height:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 532
    :cond_1
    iget-object v6, p0, Lcom/netease/dwrg/Launcher;->m_platform_config:Lcom/netease/dwrg/PlatformConfigParser;

    invoke-virtual {v6}, Lcom/netease/dwrg/PlatformConfigParser;->getOptions()Ljava/util/HashMap;

    move-result-object v5

    .line 533
    .local v5, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 535
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 536
    goto :goto_1

    .line 518
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5    # "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_2
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/netease/dwrg/Launcher;->m_need_remove_shader_cache:Ljava/lang/Boolean;

    goto :goto_0

    .line 537
    .restart local v5    # "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 538
    return-void
.end method

.method startGame()V
    .locals 3

    .prologue
    .line 542
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 550
    :cond_1
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->savePreference()V

    .line 551
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    const-class v2, Lcom/netease/dwrg/Client;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 552
    .local v0, "clientIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 553
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    invoke-virtual {v1, v0}, Lcom/netease/dwrg/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 554
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->finish()V

    .line 555
    return-void
.end method

.method startPatch()V
    .locals 4

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/netease/dwrg/Launcher;->getNetworkType()I

    move-result v1

    .line 1078
    .local v1, "network_type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetTotalSize()I

    move-result v2

    if-nez v2, :cond_1

    .line 1079
    :cond_0
    iget-object v2, p0, Lcom/netease/dwrg/Launcher;->m_launcher:Lcom/netease/dwrg/Launcher;

    invoke-virtual {v2}, Lcom/netease/dwrg/Launcher;->patching()V

    .line 1107
    :goto_0
    return-void

    .line 1082
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "neox_launcher_warn"

    invoke-direct {p0, v3}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1083
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "neox_launcher_not_wifi"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "ic_launcher"

    invoke-direct {p0, v3}, Lcom/netease/dwrg/Launcher;->getDrawableId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1084
    const-string v2, "neox_launcher_continue"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/netease/dwrg/Launcher$7;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/Launcher$7;-><init>(Lcom/netease/dwrg/Launcher;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1094
    const-string v2, "neox_launcher_stop"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/netease/dwrg/Launcher$8;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/Launcher$8;-><init>(Lcom/netease/dwrg/Launcher;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method updateCopiedSize(J)V
    .locals 7
    .param p1, "copiedSize"    # J

    .prologue
    .line 565
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    iget-wide v4, p0, Lcom/netease/dwrg/Launcher;->m_size_to_copy:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 566
    .local v0, "percent":I
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 567
    return-void
.end method

.method updateCopyingFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "neox_launcher_copying"

    invoke-direct {p0, v2}, Lcom/netease/dwrg/Launcher;->getStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/netease/dwrg/Launcher;->m_progress_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 561
    return-void
.end method
