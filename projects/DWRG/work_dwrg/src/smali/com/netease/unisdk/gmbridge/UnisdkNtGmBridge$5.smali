.class final Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$5;
.super Ljava/lang/Object;
.source "UnisdkNtGmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntReceiveMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sActivity:Landroid/app/Activity;

    sget-object v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-virtual {v1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getRedIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->showRed(Landroid/content/Context;[Ljava/lang/String;)V

    .line 225
    return-void
.end method
