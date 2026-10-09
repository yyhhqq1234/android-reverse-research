.class public abstract Lcom/netease/neox/NeoXClient;
.super Landroid/app/NativeActivity;
.source "NeoXClient.java"


# static fields
.field public static final BUILDINFO_BOARD:I = 0x0

.field public static final BUILDINFO_BOOTLOADER:I = 0x1

.field public static final BUILDINFO_BRAND:I = 0x2

.field public static final BUILDINFO_DEVICE:I = 0x3

.field public static final BUILDINFO_DISPLAY:I = 0x4

.field public static final BUILDINFO_FINGERPRINT:I = 0x5

.field public static final BUILDINFO_HARDWARE:I = 0x6

.field public static final BUILDINFO_HOST:I = 0x7

.field public static final BUILDINFO_ID:I = 0x8

.field public static final BUILDINFO_MANUFACTURER:I = 0x9

.field public static final BUILDINFO_MODEL:I = 0xa

.field public static final BUILDINFO_PRODUCT:I = 0xb

.field public static final BUILDINFO_RADIO:I = 0xc

.field public static final BUILDINFO_TAGS:I = 0xd

.field public static final BUILDINFO_TYPE:I = 0xe

.field public static final BUILDINFO_USER:I = 0xf


# instance fields
.field private m_plugin_mgr:Lcom/netease/neox/PluginManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/netease/neox/PluginManager;

    invoke-direct {v0}, Lcom/netease/neox/PluginManager;-><init>()V

    iput-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    return-void
.end method

.method private static native NativeOnResume()V
.end method


# virtual methods
.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 4

    const/4 v0, 0x0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 245
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 246
    invoke-static {v1}, Landroidx/core/app/Person$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 248
    :cond_0
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 251
    invoke-static {v1}, Lcom/netease/neox/NXLog;->logException(Ljava/lang/Exception;)V

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 3

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 233
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 235
    invoke-static {v0}, Lcom/netease/neox/NXLog;->logException(Ljava/lang/Exception;)V

    .line 236
    const-string v0, "UnknownVersion"

    return-object v0
.end method

.method public getBuildInfo(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 198
    const-string p1, "Unknown"

    return-object p1

    .line 196
    :pswitch_0
    sget-object p1, Landroid/os/Build;->USER:Ljava/lang/String;

    return-object p1

    .line 194
    :pswitch_1
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    return-object p1

    .line 192
    :pswitch_2
    sget-object p1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    return-object p1

    .line 190
    :pswitch_3
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object p1

    .line 188
    :pswitch_4
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object p1

    .line 186
    :pswitch_5
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p1

    .line 184
    :pswitch_6
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object p1

    .line 182
    :pswitch_7
    sget-object p1, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object p1

    .line 180
    :pswitch_8
    sget-object p1, Landroid/os/Build;->HOST:Ljava/lang/String;

    return-object p1

    .line 178
    :pswitch_9
    sget-object p1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object p1

    .line 176
    :pswitch_a
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object p1

    .line 174
    :pswitch_b
    sget-object p1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object p1

    .line 172
    :pswitch_c
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object p1

    .line 170
    :pswitch_d
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object p1

    .line 168
    :pswitch_e
    sget-object p1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    return-object p1

    .line 166
    :pswitch_f
    sget-object p1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDataDirectory()Ljava/lang/String;
    .locals 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/neox/nxandroid/R$string;->neox_root:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentsDirectory()Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getExternalDataDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    const-string v1, "/Documents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalDataDirectory()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/neox/nxandroid/R$string;->neox_root:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObbDirectory()Ljava/lang/String;
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlugin(Ljava/lang/String;)Lcom/netease/neox/IPlugin;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p1}, Lcom/netease/neox/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/netease/neox/IPlugin;

    move-result-object p1

    return-object p1
.end method

.method protected initPlugins(Lcom/netease/neox/PluginManager;)V
    .locals 1

    .line 41
    new-instance v0, Lcom/netease/neox/PluginNeoXView;

    invoke-direct {v0}, Lcom/netease/neox/PluginNeoXView;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    return-void
.end method

.method public isAssetPathDirectory(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    array-length p1, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public listAssetPaths(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 206
    array-length v1, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 211
    invoke-static {p1}, Lcom/netease/neox/NXLog;->logException(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netease/neox/PluginManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 114
    invoke-super {p0}, Landroid/app/NativeActivity;->onBackPressed()V

    .line 115
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onBackPressed(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {p0, v0}, Lcom/netease/neox/NeoXClient;->initPlugins(Lcom/netease/neox/PluginManager;)V

    .line 48
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 103
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 54
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/neox/PluginManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/app/NativeActivity;->onRestart()V

    .line 79
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onRestart(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 66
    invoke-static {}, Lcom/netease/neox/NeoXClient;->NativeOnResume()V

    .line 67
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 73
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 60
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 91
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    return-void
.end method

.method public registerPlugin(Lcom/netease/neox/IPlugin;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p1}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    return-void
.end method

.method public terminate()V
    .locals 1

    .line 258
    new-instance v0, Lcom/netease/neox/NeoXClient$1;

    invoke-direct {v0, p0, p0}, Lcom/netease/neox/NeoXClient$1;-><init>(Lcom/netease/neox/NeoXClient;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/netease/neox/NeoXClient;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
