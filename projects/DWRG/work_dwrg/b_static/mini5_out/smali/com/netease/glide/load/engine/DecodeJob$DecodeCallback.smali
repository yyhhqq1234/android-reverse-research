.class final Lcom/netease/glide/load/engine/DecodeJob$DecodeCallback;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/netease/glide/load/engine/DecodePath$DecodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/glide/load/engine/DecodePath$DecodeCallback<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final dataSource:Lcom/netease/glide/load/DataSource;

.field final synthetic this$0:Lcom/netease/glide/load/engine/DecodeJob;


# direct methods
.method constructor <init>(Lcom/netease/glide/load/engine/DecodeJob;Lcom/netease/glide/load/DataSource;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/netease/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/netease/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p2, p0, Lcom/netease/glide/load/engine/DecodeJob$DecodeCallback;->dataSource:Lcom/netease/glide/load/DataSource;

    return-void
.end method


# virtual methods
.method public onResourceDecoded(Lcom/netease/glide/load/engine/Resource;)Lcom/netease/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/netease/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/netease/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lcom/netease/glide/load/engine/DecodeJob$DecodeCallback;->dataSource:Lcom/netease/glide/load/DataSource;

    invoke-virtual {v0, v1, p1}, Lcom/netease/glide/load/engine/DecodeJob;->onResourceDecoded(Lcom/netease/glide/load/DataSource;Lcom/netease/glide/load/engine/Resource;)Lcom/netease/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method
