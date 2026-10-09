.class public Lcom/tencent/msdk/notice/RollFloatService;
.super Landroid/app/Service;
.source "RollFloatService.java"


# instance fields
.field private ScrollMsg:Ljava/lang/String;

.field private autoScrollTextView:Lcom/tencent/msdk/notice/RollTextView;

.field mFloatLayout:Landroid/widget/LinearLayout;

.field mFloatView:Landroid/widget/ImageView;

.field mWindowManager:Landroid/view/WindowManager;

.field private rollImage:Landroid/widget/ImageView;

.field wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->autoScrollTextView:Lcom/tencent/msdk/notice/RollTextView;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/RollFloatService;->ScrollMsg:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->rollImage:Landroid/widget/ImageView;

    return-void
.end method

.method private createFloatView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-static {p0}, Lcom/tencent/msdk/notice/NoticeResID;->loadScrollLayout(Landroid/content/Context;)V

    .line 61
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 62
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollFloatService;->getApplication()Landroid/app/Application;

    .line 64
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollFloatService;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->mWindowManager:Landroid/view/WindowManager;

    .line 65
    sget-object v1, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWindowManager--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/notice/RollFloatService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 69
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 71
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 73
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 75
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 76
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 78
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 79
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 80
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/RollFloatService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/tencent/msdk/notice/NoticeResID;->layout_scroll_notice:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    .line 84
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/msdk/notice/RollFloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/msdk/notice/RollFloatService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-direct {p0}, Lcom/tencent/msdk/notice/RollFloatService;->initMarquee()V

    .line 87
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/tencent/msdk/notice/NoticeResID;->rollImage:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->rollImage:Landroid/widget/ImageView;

    .line 88
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->rollImage:Landroid/widget/ImageView;

    sget v2, Lcom/tencent/msdk/notice/NoticeResID;->notice_roll_drawable:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 99
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 97
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 100
    return-void
.end method

.method private initMarquee()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/msdk/notice/RollFloatService;->ScrollMsg:Ljava/lang/String;

    .line 103
    .local v0, "displayStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/tencent/msdk/notice/NoticeResID;->marquee:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/msdk/notice/RollTextView;

    iput-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->autoScrollTextView:Lcom/tencent/msdk/notice/RollTextView;

    .line 104
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->autoScrollTextView:Lcom/tencent/msdk/notice/RollTextView;

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/notice/RollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->autoScrollTextView:Lcom/tencent/msdk/notice/RollTextView;

    iget-object v2, p0, Lcom/tencent/msdk/notice/RollFloatService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/notice/RollTextView;->init(Landroid/view/WindowManager;)V

    .line 106
    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->autoScrollTextView:Lcom/tencent/msdk/notice/RollTextView;

    invoke-virtual {v1}, Lcom/tencent/msdk/notice/RollTextView;->startScroll()V

    .line 107
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    sget-object v0, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    const-string v1, "oncreat"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/msdk/notice/RollFloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/tencent/msdk/notice/RollFloatService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/msdk/notice/RollFloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/notice/RollFloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    .line 117
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 118
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 41
    iget-object v0, p0, Lcom/tencent/msdk/notice/RollFloatService;->mFloatLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return v2

    .line 43
    :cond_0
    sget-object v0, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz p1, :cond_1

    .line 46
    const-string v0, "rollMsg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/notice/RollFloatService;->ScrollMsg:Ljava/lang/String;

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/tencent/msdk/notice/RollFloatService;->createFloatView()V

    goto :goto_0
.end method
