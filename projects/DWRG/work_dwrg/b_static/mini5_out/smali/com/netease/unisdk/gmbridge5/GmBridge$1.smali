.class Lcom/netease/unisdk/gmbridge5/GmBridge$1;
.super Ljava/lang/Object;
.source "GmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/GmBridge;->setGenTokenResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "gm_bridge"

    const-string v1, "openGMPage from setGenTokenResponse"

    .line 110
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 111
    sput-boolean v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->IS_HAS_START_UP:Z

    .line 112
    sget-boolean v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->IS_OPEN_BY_NGWEBVIEW:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$000(Lcom/netease/unisdk/gmbridge5/GmBridge;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->NGWEBVIEW_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/GmBridge;->openGMPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$000(Lcom/netease/unisdk/gmbridge5/GmBridge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->openGMPage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
