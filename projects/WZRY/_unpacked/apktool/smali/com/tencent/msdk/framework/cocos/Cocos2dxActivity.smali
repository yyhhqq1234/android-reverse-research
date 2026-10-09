.class public abstract Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;
.super Landroid/app/Activity;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static mFrameLayout:Landroid/widget/FrameLayout;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

.field private mHandler:Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private static final isAndroidEmulator()Z
    .locals 6

    .prologue
    .line 67
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 68
    .local v1, "model":Ljava/lang/String;
    sget-object v3, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "model="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 70
    .local v2, "product":Ljava/lang/String;
    sget-object v3, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "product="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "isEmulator":Z
    if-eqz v2, :cond_1

    .line 73
    const-string v3, "sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "_sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sdk_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 75
    :cond_1
    :goto_0
    sget-object v3, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEmulator="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v0

    .line 73
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 10

    .prologue
    const/4 v2, -0x1

    const/16 v1, 0x8

    .line 133
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 136
    .local v9, "framelayout_params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 137
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v8, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 143
    .local v8, "edittext_layout_params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v7, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;

    invoke-direct {v7, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;-><init>(Landroid/content/Context;)V

    .line 144
    .local v7, "edittext":Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;
    invoke-virtual {v7, v8}, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->onCreateView()Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    .line 153
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 156
    invoke-static {}, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->isAndroidEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    new-instance v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;

    invoke-direct {v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->setCocos2dxRenderer(Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;)V

    .line 160
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, v7}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->setCocos2dxEditText(Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;)V

    .line 163
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->setContentView(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sput-object p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->sContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mHandler:Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;

    .line 85
    invoke-virtual {p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->init()V

    .line 87
    invoke-static {p0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->init(Landroid/content/Context;Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;)V

    .line 88
    return-void
.end method

.method public onCreateView()Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    invoke-static {}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->onPause()V

    .line 103
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->onPause()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    invoke-static {}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->onResume()V

    .line 96
    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 109
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 110
    new-instance v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$DialogMessage;

    invoke-direct {v1, p1, p2}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$DialogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mHandler:Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method

.method public showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pContent"    # Ljava/lang/String;
    .param p3, "pInputMode"    # I
    .param p4, "pInputFlag"    # I
    .param p5, "pReturnType"    # I
    .param p6, "pMaxLength"    # I

    .prologue
    .line 116
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 117
    .local v7, "msg":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v7, Landroid/os/Message;->what:I

    .line 118
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxActivity;->mHandler:Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;

    invoke-virtual {v0, v7}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void
.end method
