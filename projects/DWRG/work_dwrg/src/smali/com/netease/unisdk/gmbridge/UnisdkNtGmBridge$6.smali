.class final Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$6;
.super Ljava/lang/Object;
.source "UnisdkNtGmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->destroy()V

    .line 297
    sput-object v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .line 299
    :cond_0
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    if-eqz v0, :cond_1

    .line 300
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->clear()V

    .line 301
    sput-object v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    .line 303
    :cond_1
    invoke-static {}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->reset()V

    .line 304
    invoke-static {}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->shutdown()V

    .line 305
    invoke-static {}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->destroyFloatWindow()V

    .line 306
    return-void
.end method
