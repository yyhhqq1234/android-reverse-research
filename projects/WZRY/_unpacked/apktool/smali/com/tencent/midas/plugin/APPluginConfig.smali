.class public Lcom/tencent/midas/plugin/APPluginConfig;
.super Ljava/lang/Object;
.source "APPluginConfig.java"


# static fields
.field static final KERNEL_FILE_NAME:Ljava/lang/String; = "MidasPay.zip"

.field static PLUGIN_BACKUP_TEMP_DIR_NAME:Ljava/lang/String;

.field public static PLUGIN_DIR_NAME:Ljava/lang/String;

.field static PLUGIN_EMPTY_RES_DIR_NAME:Ljava/lang/String;

.field static PLUGIN_LIB_DIR_NAME:Ljava/lang/String;

.field static PLUGIN_ODEX_DIR_NAME:Ljava/lang/String;

.field static PLUGIN_UPDATE_DIR_NAME:Ljava/lang/String;

.field static SIGN_FILE_NAME:Ljava/lang/String;

.field static libExtend:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "MidasSign.ini"

    sput-object v0, Lcom/tencent/midas/plugin/APPluginConfig;->SIGN_FILE_NAME:Ljava/lang/String;

    .line 18
    const-string v0, "midasplugins"

    sput-object v0, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_DIR_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "midaspluginsBKTemp"

    sput-object v0, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_BACKUP_TEMP_DIR_NAME:Ljava/lang/String;

    .line 23
    const-string v0, "midasodex"

    sput-object v0, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_ODEX_DIR_NAME:Ljava/lang/String;

    .line 25
    const-string v0, "midaslib"

    sput-object v0, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_LIB_DIR_NAME:Ljava/lang/String;

    .line 29
    const-string v0, "midaspluginsTemp"

    sput-object v0, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_UPDATE_DIR_NAME:Ljava/lang/String;

    .line 31
    const-string v0, "midasemptyRes"

    sput-object v0, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_EMPTY_RES_DIR_NAME:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/tencent/midas/plugin/APPluginConfig;->libExtend:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLibPath(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_LIB_DIR_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/midas/plugin/APPluginConfig;->libExtend:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getOptimizedDexPath(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v0, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_ODEX_DIR_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getPluginBackUpPath(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_BACKUP_TEMP_DIR_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getPluginEmptyResPath(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    sget-object v0, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_EMPTY_RES_DIR_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginPath(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v0, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_DIR_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getPluginUpdatePath(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    sget-object v0, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_UPDATE_DIR_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static setPluginDirName(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sput-object p0, Lcom/tencent/midas/plugin/APPluginConfig;->PLUGIN_DIR_NAME:Ljava/lang/String;

    .line 60
    :cond_0
    return-void
.end method

.method public static setSignFileName(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sput-object p0, Lcom/tencent/midas/plugin/APPluginConfig;->SIGN_FILE_NAME:Ljava/lang/String;

    .line 48
    :cond_0
    return-void
.end method
