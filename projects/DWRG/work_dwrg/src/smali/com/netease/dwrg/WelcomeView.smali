.class public Lcom/netease/dwrg/WelcomeView;
.super Landroid/app/Activity;
.source "WelcomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/dwrg/WelcomeView$UpdateHandler;
    }
.end annotation


# static fields
.field static STR_FILE_TOTRANSFER:Ljava/lang/String;

.field static STR_FILE_TRANSFERRED:Ljava/lang/String;


# instance fields
.field private m_is_rsync:Z

.field private m_label_action:Landroid/widget/TextView;

.field private m_label_status:Landroid/widget/TextView;

.field private m_option:Ljava/lang/String;

.field private m_timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/netease/dwrg/WelcomeView;->STR_FILE_TRANSFERRED:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/netease/dwrg/WelcomeView;->STR_FILE_TOTRANSFER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/dwrg/WelcomeView;->m_is_rsync:Z

    .line 13
    iput-object v1, p0, Lcom/netease/dwrg/WelcomeView;->m_option:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/netease/dwrg/WelcomeView;->m_timer:Ljava/util/Timer;

    .line 15
    iput-object v1, p0, Lcom/netease/dwrg/WelcomeView;->m_label_action:Landroid/widget/TextView;

    .line 16
    iput-object v1, p0, Lcom/netease/dwrg/WelcomeView;->m_label_status:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method private RestartTimer()V
    .locals 6

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netease/dwrg/WelcomeView;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/netease/dwrg/WelcomeView;->m_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 123
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/WelcomeView;->m_timer:Ljava/util/Timer;

    .line 124
    iget-object v0, p0, Lcom/netease/dwrg/WelcomeView;->m_timer:Ljava/util/Timer;

    new-instance v1, Lcom/netease/dwrg/WelcomeView$1;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/WelcomeView$1;-><init>(Lcom/netease/dwrg/WelcomeView;)V

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x3c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/netease/dwrg/WelcomeView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/WelcomeView;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/netease/dwrg/WelcomeView;->m_label_action:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/dwrg/WelcomeView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/WelcomeView;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/netease/dwrg/WelcomeView;->m_label_status:Landroid/widget/TextView;

    return-object v0
.end method

.method private getIdId(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/netease/dwrg/WelcomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/netease/dwrg/WelcomeView;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 29
    .local v0, "id":I
    return v0
.end method

.method private getLayoutId(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/netease/dwrg/WelcomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/netease/dwrg/WelcomeView;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 24
    .local v0, "id":I
    return v0
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/netease/dwrg/WelcomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p0}, Lcom/netease/dwrg/WelcomeView;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, "id":I
    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v0, "welcomeview"

    invoke-direct {p0, v0}, Lcom/netease/dwrg/WelcomeView;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/WelcomeView;->setContentView(I)V

    .line 60
    const-string v0, "labelConnectServer"

    invoke-direct {p0, v0}, Lcom/netease/dwrg/WelcomeView;->getIdId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/WelcomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/dwrg/WelcomeView;->m_label_action:Landroid/widget/TextView;

    .line 61
    const-string v0, "labelUpdateStatus"

    invoke-direct {p0, v0}, Lcom/netease/dwrg/WelcomeView;->getIdId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/WelcomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/dwrg/WelcomeView;->m_label_status:Landroid/widget/TextView;

    .line 62
    const-string v0, "neox_welcomeview_updated_file_num"

    invoke-direct {p0, v0}, Lcom/netease/dwrg/WelcomeView;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/WelcomeView;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/dwrg/WelcomeView;->STR_FILE_TRANSFERRED:Ljava/lang/String;

    .line 63
    const-string v0, "neox_welcomeview_total_update_file_num"

    invoke-direct {p0, v0}, Lcom/netease/dwrg/WelcomeView;->getStringId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/WelcomeView;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/dwrg/WelcomeView;->STR_FILE_TOTRANSFER:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public onRsyncAll(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    iget-boolean v1, p0, Lcom/netease/dwrg/WelcomeView;->m_is_rsync:Z

    if-nez v1, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netease/dwrg/WelcomeView;->m_option:Ljava/lang/String;

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/dwrg/WelcomeView;->m_is_rsync:Z

    .line 86
    invoke-direct {p0}, Lcom/netease/dwrg/WelcomeView;->RestartTimer()V

    .line 87
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public onRsyncScript(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget-boolean v1, p0, Lcom/netease/dwrg/WelcomeView;->m_is_rsync:Z

    if-nez v1, :cond_0

    .line 96
    const-string v1, "script"

    iput-object v1, p0, Lcom/netease/dwrg/WelcomeView;->m_option:Ljava/lang/String;

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/dwrg/WelcomeView;->m_is_rsync:Z

    .line 98
    invoke-direct {p0}, Lcom/netease/dwrg/WelcomeView;->RestartTimer()V

    .line 99
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public onStartEngine(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/netease/dwrg/WelcomeView;->m_is_rsync:Z

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/netease/dwrg/WelcomeView;->finish()V

    .line 76
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeNotifyWelcomeViewFinished()V

    .line 78
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/netease/dwrg/WelcomeView;->m_option:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeRsync(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/netease/dwrg/WelcomeView;->m_timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/netease/dwrg/WelcomeView;->m_timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 112
    :cond_0
    new-instance v0, Lcom/netease/dwrg/WelcomeView$UpdateHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netease/dwrg/WelcomeView$UpdateHandler;-><init>(Lcom/netease/dwrg/WelcomeView;Landroid/os/Looper;)V

    .line 113
    .local v0, "handler":Landroid/os/Handler;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/dwrg/WelcomeView;->m_is_rsync:Z

    .line 115
    return-void
.end method
