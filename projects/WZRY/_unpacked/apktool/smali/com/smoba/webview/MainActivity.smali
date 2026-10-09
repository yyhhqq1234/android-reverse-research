.class public Lcom/smoba/webview/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenShotListenManager"


# instance fields
.field isHasScreenShotListener:Z

.field m_CurrentActivty:Landroid/app/Activity;

.field screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smoba/webview/MainActivity;->isHasScreenShotListener:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smoba/webview/MainActivity;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/smoba/webview/MainActivity;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/smoba/webview/MainActivity;->stopScreenShotListen()V

    return-void
.end method

.method private startScreenShotListen()V
    .locals 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/smoba/webview/MainActivity;->isHasScreenShotListener:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smoba/webview/MainActivity;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/smoba/webview/MainActivity;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    new-instance v1, Lcom/smoba/webview/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/smoba/webview/MainActivity$2;-><init>(Lcom/smoba/webview/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/smoba/webview/ScreenShotListenManager;->setListener(Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;)V

    .line 61
    iget-object v0, p0, Lcom/smoba/webview/MainActivity;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    invoke-virtual {v0}, Lcom/smoba/webview/ScreenShotListenManager;->startListen()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smoba/webview/MainActivity;->isHasScreenShotListener:Z

    .line 64
    :cond_0
    return-void
.end method

.method private stopScreenShotListen()V
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/smoba/webview/MainActivity;->isHasScreenShotListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smoba/webview/MainActivity;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/smoba/webview/MainActivity;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    invoke-virtual {v0}, Lcom/smoba/webview/ScreenShotListenManager;->stopListen()V

    .line 69
    const-string v0, "ScreenShotListenManager"

    const-string v1, "franky stop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smoba/webview/MainActivity;->isHasScreenShotListener:Z

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/smoba/webview/MainActivity;->setContentView(I)V

    .line 26
    iput-object p0, p0, Lcom/smoba/webview/MainActivity;->m_CurrentActivty:Landroid/app/Activity;

    .line 27
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lcom/smoba/webview/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 28
    .local v0, "button":Landroid/widget/Button;
    const-string v1, "BACK empty"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 31
    new-instance v1, Lcom/smoba/webview/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/smoba/webview/MainActivity$1;-><init>(Lcom/smoba/webview/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-static {p0}, Lcom/smoba/webview/ScreenShotListenManager;->newInstance(Landroid/content/Context;)Lcom/smoba/webview/ScreenShotListenManager;

    move-result-object v1

    iput-object v1, p0, Lcom/smoba/webview/MainActivity;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    .line 45
    invoke-direct {p0}, Lcom/smoba/webview/MainActivity;->startScreenShotListen()V

    .line 47
    return-void
.end method
