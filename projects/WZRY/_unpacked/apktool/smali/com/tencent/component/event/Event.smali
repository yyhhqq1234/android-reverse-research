.class public final Lcom/tencent/component/event/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/event/Event$EventRank;
    }
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x32

.field private static sPool:Lcom/tencent/component/event/Event;

.field private static sPoolSize:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field public eventRank:Lcom/tencent/component/event/Event$EventRank;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field private mRefrenceTimes:I

.field next:Lcom/tencent/component/event/Event;

.field public params:Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field public source:Lcom/tencent/component/event/EventSource;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field public what:I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/component/event/Event;->sPoolSync:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/tencent/component/event/Event;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/component/event/Event;->mRefrenceTimes:I

    .line 38
    return-void
.end method

.method static obtain()Lcom/tencent/component/event/Event;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/tencent/component/event/Event;

    invoke-direct {v0}, Lcom/tencent/component/event/Event;-><init>()V

    return-object v0
.end method

.method public static obtain(ILcom/tencent/component/event/EventSource;)Lcom/tencent/component/event/Event;
    .locals 2
    .param p0, "what"    # I
    .param p1, "source"    # Lcom/tencent/component/event/EventSource;

    .prologue
    .line 97
    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/component/event/Event$EventRank;->NORMAL:Lcom/tencent/component/event/Event$EventRank;

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/component/event/Event;->obtain(ILcom/tencent/component/event/EventSource;Ljava/lang/Object;Lcom/tencent/component/event/Event$EventRank;)Lcom/tencent/component/event/Event;

    move-result-object v0

    return-object v0
.end method

.method static obtain(ILcom/tencent/component/event/EventSource;Lcom/tencent/component/event/Event$EventRank;)Lcom/tencent/component/event/Event;
    .locals 1
    .param p0, "what"    # I
    .param p1, "source"    # Lcom/tencent/component/event/EventSource;
    .param p2, "eventRank"    # Lcom/tencent/component/event/Event$EventRank;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/tencent/component/event/Event;->obtain(ILcom/tencent/component/event/EventSource;Ljava/lang/Object;Lcom/tencent/component/event/Event$EventRank;)Lcom/tencent/component/event/Event;

    move-result-object v0

    return-object v0
.end method

.method static obtain(ILcom/tencent/component/event/EventSource;Ljava/lang/Object;Lcom/tencent/component/event/Event$EventRank;)Lcom/tencent/component/event/Event;
    .locals 2
    .param p0, "what"    # I
    .param p1, "source"    # Lcom/tencent/component/event/EventSource;
    .param p2, "params"    # Ljava/lang/Object;
    .param p3, "eventRank"    # Lcom/tencent/component/event/Event$EventRank;

    .prologue
    .line 83
    invoke-static {}, Lcom/tencent/component/event/Event;->obtain()Lcom/tencent/component/event/Event;

    move-result-object v0

    .line 84
    .local v0, "e":Lcom/tencent/component/event/Event;
    iput p0, v0, Lcom/tencent/component/event/Event;->what:I

    .line 85
    iput-object p1, v0, Lcom/tencent/component/event/Event;->source:Lcom/tencent/component/event/EventSource;

    .line 86
    iput-object p2, v0, Lcom/tencent/component/event/Event;->params:Ljava/lang/Object;

    .line 87
    iput-object p3, v0, Lcom/tencent/component/event/Event;->eventRank:Lcom/tencent/component/event/Event$EventRank;

    .line 88
    iget v1, v0, Lcom/tencent/component/event/Event;->mRefrenceTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/component/event/Event;->mRefrenceTimes:I

    .line 89
    return-object v0
.end method


# virtual methods
.method clearForRecycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 115
    iput v1, p0, Lcom/tencent/component/event/Event;->what:I

    .line 116
    iput-object v0, p0, Lcom/tencent/component/event/Event;->source:Lcom/tencent/component/event/EventSource;

    .line 117
    iput-object v0, p0, Lcom/tencent/component/event/Event;->params:Ljava/lang/Object;

    .line 118
    iput-object v0, p0, Lcom/tencent/component/event/Event;->eventRank:Lcom/tencent/component/event/Event$EventRank;

    .line 119
    iput v1, p0, Lcom/tencent/component/event/Event;->mRefrenceTimes:I

    .line 120
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 101
    iget v0, p0, Lcom/tencent/component/event/Event;->mRefrenceTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/component/event/Event;->mRefrenceTimes:I

    if-gtz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/tencent/component/event/Event;->clearForRecycle()V

    .line 104
    sget-object v1, Lcom/tencent/component/event/Event;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    sget v0, Lcom/tencent/component/event/Event;->sPoolSize:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    .line 106
    sget-object v0, Lcom/tencent/component/event/Event;->sPool:Lcom/tencent/component/event/Event;

    iput-object v0, p0, Lcom/tencent/component/event/Event;->next:Lcom/tencent/component/event/Event;

    .line 107
    sput-object p0, Lcom/tencent/component/event/Event;->sPool:Lcom/tencent/component/event/Event;

    .line 108
    sget v0, Lcom/tencent/component/event/Event;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/component/event/Event;->sPoolSize:I

    .line 110
    :cond_0
    monitor-exit v1

    .line 112
    :cond_1
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retain()V
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/tencent/component/event/Event;->mRefrenceTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/component/event/Event;->mRefrenceTimes:I

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event [what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/component/event/Event;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/event/Event;->source:Lcom/tencent/component/event/EventSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/event/Event;->params:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/event/Event;->eventRank:Lcom/tencent/component/event/Event$EventRank;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
