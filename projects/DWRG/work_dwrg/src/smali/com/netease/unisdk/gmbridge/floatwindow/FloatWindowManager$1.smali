.class final Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager$1;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->loadBtnInfos(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager$1;->val$callback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBtnInfos(Ljava/util/List;)V
    .locals 1
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
    .line 127
    .local p1, "btnInfos":Ljava/util/List;, "Ljava/util/List<Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;>;"
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->access$000(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->access$100(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager$1;->val$callback:Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    invoke-interface {v0, p1}, Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;->setBtnInfos(Ljava/util/List;)V

    .line 134
    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "btnInfos":Ljava/util/List;, "Ljava/util/List<Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;>;"
    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .restart local p1    # "btnInfos":Ljava/util/List;, "Ljava/util/List<Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;>;"
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->access$100(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0
    .param p1, "refer"    # Ljava/lang/String;

    .prologue
    .line 139
    return-void
.end method
