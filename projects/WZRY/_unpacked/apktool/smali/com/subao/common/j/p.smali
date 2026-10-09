.class public Lcom/subao/common/j/p;
.super Lcom/subao/common/j/o;
.source "SignalWatcherForCellular.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/j/p$a;
    }
.end annotation


# instance fields
.field private a:Landroid/telephony/TelephonyManager;

.field private b:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Lcom/subao/common/j/o$a;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/subao/common/j/o;-><init>(Lcom/subao/common/j/o$a;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/j/p;->a:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/subao/common/j/p;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/subao/common/j/p;->b:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subao/common/j/p;->b:Landroid/telephony/PhoneStateListener;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subao/common/j/p;->a:Landroid/telephony/TelephonyManager;

    .line 45
    :cond_0
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/j/p;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/subao/common/j/p;->a:Landroid/telephony/TelephonyManager;

    .line 29
    iget-object v0, p0, Lcom/subao/common/j/p;->a:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/subao/common/j/p$a;

    iget-object v1, p0, Lcom/subao/common/j/p;->a:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p0, v1}, Lcom/subao/common/j/p$a;-><init>(Lcom/subao/common/j/o;Landroid/telephony/TelephonyManager;)V

    iput-object v0, p0, Lcom/subao/common/j/p;->b:Landroid/telephony/PhoneStateListener;

    .line 31
    iget-object v0, p0, Lcom/subao/common/j/p;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/subao/common/j/p;->b:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 34
    :cond_0
    monitor-exit p0

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
