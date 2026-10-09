.class Lcom/netease/neox/NeoXView$1;
.super Ljava/lang/Object;
.source "NeoXView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/neox/NeoXView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/NeoXView;


# direct methods
.method constructor <init>(Lcom/netease/neox/NeoXView;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/netease/neox/NeoXView$1;->this$0:Lcom/netease/neox/NeoXView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/netease/neox/NeoXView$1;->this$0:Lcom/netease/neox/NeoXView;

    invoke-static {}, Lcom/netease/neox/NeoXView;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/neox/NeoXView;->setSystemUiVisibility(I)V

    return-void
.end method
