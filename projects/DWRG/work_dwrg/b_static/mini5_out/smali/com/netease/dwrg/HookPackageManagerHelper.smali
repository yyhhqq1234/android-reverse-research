.class public Lcom/netease/dwrg/HookPackageManagerHelper;
.super Ljava/lang/Object;
.source "HookPackageManagerHelper.java"


# instance fields
.field private m_client:Lcom/netease/dwrg/Client;

.field public m_need_load_new_so:Z


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Client;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/netease/dwrg/HookPackageManagerHelper;->m_need_load_new_so:Z

    .line 19
    iput-object p1, p0, Lcom/netease/dwrg/HookPackageManagerHelper;->m_client:Lcom/netease/dwrg/Client;

    .line 21
    invoke-virtual {p1}, Lcom/netease/dwrg/Client;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    const-string v1, "new_so"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/dwrg/HookPackageManagerHelper;->m_need_load_new_so:Z

    :cond_0
    return-void
.end method

.method private hookPMSForNativeActivity()Z
    .locals 3

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    return v2

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/dwrg/HookPackageManagerHelper;->m_client:Lcom/netease/dwrg/Client;

    invoke-static {v0}, Lcom/netease/dwrg/FakePackageManagerForNative;->hookPMS(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    .line 90
    const-string v1, "NativeLibararyLoader"

    const-string v2, "Fail to modify packageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, v0}, Lcom/netease/dwrg/HookPackageManagerHelper;->logLastPatchSoThrowable(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private logLastPatchSoStatus(Ljava/lang/String;)V
    .locals 3

    .line 59
    iget-boolean v0, p0, Lcom/netease/dwrg/HookPackageManagerHelper;->m_need_load_new_so:Z

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/HookPackageManagerHelper;->m_client:Lcom/netease/dwrg/Client;

    const-string v1, "neox_native_lib_loader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/dwrg/Client;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    const-string v1, "lastMsg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    const-string v0, "NativeLibararyLoader"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logLastPatchSoThrowable(Ljava/lang/Throwable;)V
    .locals 2

    .line 70
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 71
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/dwrg/HookPackageManagerHelper;->logLastPatchSoStatus(Ljava/lang/String;)V

    return-void
.end method

.method private onPatchSoSuccess()V
    .locals 1

    .line 76
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/netease/dwrg/HookPackageManagerHelper;->logLastPatchSoStatus(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hookNativeActivityPackage(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/netease/dwrg/HookPackageManagerHelper;->logLastPatchSoStatus(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/netease/neox/NativeInterface;->Dummy()V

    .line 34
    iget-boolean v0, p0, Lcom/netease/dwrg/HookPackageManagerHelper;->m_need_load_new_so:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/netease/dwrg/HookPackageManagerHelper;->hookPMSForNativeActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object p1, p0, Lcom/netease/dwrg/HookPackageManagerHelper;->m_client:Lcom/netease/dwrg/Client;

    invoke-virtual {p1}, Lcom/netease/dwrg/Client;->restart_and_cleanup()V

    return-void

    .line 42
    :cond_0
    const-string v0, "before NativeActivity onCreate"

    invoke-direct {p0, v0}, Lcom/netease/dwrg/HookPackageManagerHelper;->logLastPatchSoStatus(Ljava/lang/String;)V

    .line 44
    :try_start_0
    invoke-static {}, Lcom/netease/neox/NativeInterface;->Dummy()V

    .line 45
    iget-object v0, p0, Lcom/netease/dwrg/HookPackageManagerHelper;->m_client:Lcom/netease/dwrg/Client;

    invoke-virtual {v0, p1}, Lcom/netease/dwrg/Client;->CallBaseOnCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-direct {p0}, Lcom/netease/dwrg/HookPackageManagerHelper;->onPatchSoSuccess()V

    return-void

    :catchall_0
    move-exception p1

    .line 47
    const-string v0, "NativeLibararyLoader"

    const-string v1, "Fail to create NativeActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, p1}, Lcom/netease/dwrg/HookPackageManagerHelper;->logLastPatchSoThrowable(Ljava/lang/Throwable;)V

    .line 49
    iget-object p1, p0, Lcom/netease/dwrg/HookPackageManagerHelper;->m_client:Lcom/netease/dwrg/Client;

    invoke-virtual {p1}, Lcom/netease/dwrg/Client;->restart_and_cleanup()V

    return-void
.end method
