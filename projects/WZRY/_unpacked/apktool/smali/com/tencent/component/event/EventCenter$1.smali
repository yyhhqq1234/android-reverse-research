.class Lcom/tencent/component/event/EventCenter$1;
.super Ljava/lang/Object;
.source "EventCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/event/EventCenter;->notifyObserver(Lcom/tencent/component/event/ObserverBean;Lcom/tencent/component/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/event/EventCenter;

.field final synthetic val$event:Lcom/tencent/component/event/Event;

.field final synthetic val$observerBean:Lcom/tencent/component/event/ObserverBean;


# direct methods
.method constructor <init>(Lcom/tencent/component/event/EventCenter;Lcom/tencent/component/event/ObserverBean;Lcom/tencent/component/event/Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/event/EventCenter;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/tencent/component/event/EventCenter$1;->this$0:Lcom/tencent/component/event/EventCenter;

    iput-object p2, p0, Lcom/tencent/component/event/EventCenter$1;->val$observerBean:Lcom/tencent/component/event/ObserverBean;

    iput-object p3, p0, Lcom/tencent/component/event/EventCenter$1;->val$event:Lcom/tencent/component/event/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/tencent/component/event/EventCenter$1;->val$observerBean:Lcom/tencent/component/event/ObserverBean;

    iget-object v1, p0, Lcom/tencent/component/event/EventCenter$1;->val$event:Lcom/tencent/component/event/Event;

    invoke-virtual {v0, v1}, Lcom/tencent/component/event/ObserverBean;->invoke(Ljava/lang/Object;)V

    .line 349
    return-void
.end method
