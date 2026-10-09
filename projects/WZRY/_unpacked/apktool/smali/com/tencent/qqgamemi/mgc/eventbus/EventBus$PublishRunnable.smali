.class Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PublishRunnable"
.end annotation


# instance fields
.field theEvent:Ljava/lang/Object;

.field theEventObject:Ljava/lang/Object;

.field theSubscribers:Ljava/util/List;

.field theTopic:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;


# direct methods
.method public constructor <init>(Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;
    .param p2, "event"    # Ljava/lang/Object;
    .param p3, "topic"    # Ljava/lang/String;
    .param p4, "eventObj"    # Ljava/lang/Object;
    .param p5, "subscribers"    # Ljava/util/List;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;->this$0:Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    iput-object p2, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;->theEvent:Ljava/lang/Object;

    .line 581
    iput-object p3, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;->theTopic:Ljava/lang/String;

    .line 582
    iput-object p4, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;->theEventObject:Ljava/lang/Object;

    .line 583
    iput-object p5, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;->theSubscribers:Ljava/util/List;

    .line 584
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 589
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;->this$0:Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;

    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;->theEvent:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;->theTopic:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;->theEventObject:Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$PublishRunnable;->theSubscribers:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;->publish(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    .line 590
    return-void
.end method
