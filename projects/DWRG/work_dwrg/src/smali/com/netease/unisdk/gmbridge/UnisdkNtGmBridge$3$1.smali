.class Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3$1;
.super Ljava/lang/Object;
.source "UnisdkNtGmBridge.java"

# interfaces
.implements Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3$1;->this$0:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBtnInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "btnInfos":Ljava/util/List;, "Ljava/util/List<Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;>;"
    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 3
    .param p1, "refer"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v0, "gm_bridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntOpenGMPage(Ljava/lang/String;)V

    .line 165
    return-void
.end method
