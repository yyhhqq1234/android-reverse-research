.class final Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3;
.super Ljava/lang/Object;
.source "UnisdkNtGmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntOpenGMPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    new-instance v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3$1;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3$1;-><init>(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3;)V

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getRefer(Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V

    .line 167
    return-void
.end method
