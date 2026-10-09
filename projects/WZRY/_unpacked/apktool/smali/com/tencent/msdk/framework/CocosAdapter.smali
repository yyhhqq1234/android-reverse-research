.class public Lcom/tencent/msdk/framework/CocosAdapter;
.super Ljava/lang/Object;
.source "CocosAdapter.java"

# interfaces
.implements Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;


# static fields
.field private static sContext:Landroid/content/Context;


# instance fields
.field private currentActivity:Landroid/app/Activity;

.field private mHandler:Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/framework/CocosAdapter;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tencent/msdk/framework/CocosAdapter;->currentActivity:Landroid/app/Activity;

    .line 23
    invoke-direct {p0}, Lcom/tencent/msdk/framework/CocosAdapter;->init()V

    .line 24
    return-void
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/tencent/msdk/framework/CocosAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/tencent/msdk/framework/CocosAdapter;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/msdk/framework/CocosAdapter;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/framework/CocosAdapter;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    const-string v0, "currentActivity is null!"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;

    iget-object v1, p0, Lcom/tencent/msdk/framework/CocosAdapter;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tencent/msdk/framework/CocosAdapter;->mHandler:Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;

    .line 40
    iget-object v0, p0, Lcom/tencent/msdk/framework/CocosAdapter;->currentActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->init(Landroid/content/Context;Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->onPause()V

    .line 49
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-static {}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->onResume()V

    .line 45
    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 68
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/tencent/msdk/framework/CocosAdapter;->mHandler:Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 54
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$DialogMessage;

    invoke-direct {v1, p1, p2}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$DialogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/tencent/msdk/framework/CocosAdapter;->mHandler:Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 56
    return-void
.end method

.method public showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pMessage"    # Ljava/lang/String;
    .param p3, "pInputMode"    # I
    .param p4, "pInputFlag"    # I
    .param p5, "pReturnType"    # I
    .param p6, "pMaxLength"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/msdk/framework/CocosAdapter;->mHandler:Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 61
    .local v7, "msg":Landroid/os/Message;
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler$EditBoxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/tencent/msdk/framework/CocosAdapter;->mHandler:Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;

    invoke-virtual {v0, v7}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method
