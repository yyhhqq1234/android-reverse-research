.class Lcom/tencent/component/plugin/Plugin$4;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/Plugin;->performCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/Plugin;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/Plugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/Plugin;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/component/plugin/Plugin$4;->this$0:Lcom/tencent/component/plugin/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tencent/component/plugin/Plugin$4;->this$0:Lcom/tencent/component/plugin/Plugin;

    invoke-static {v0}, Lcom/tencent/component/plugin/Plugin;->access$300(Lcom/tencent/component/plugin/Plugin;)V

    .line 149
    return-void
.end method
