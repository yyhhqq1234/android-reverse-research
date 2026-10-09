.class public Lcom/tencent/component/event/EventSource;
.super Ljava/lang/Object;
.source "EventSource.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x6
.end annotation


# instance fields
.field public name:Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field

.field public sender:Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p2, "sender"    # Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/tencent/component/event/EventSource;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/component/event/EventSource;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The mEventName of EventSource cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    iput-object p2, p0, Lcom/tencent/component/event/EventSource;->sender:Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/tencent/component/event/EventSource;->name:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 56
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/tencent/component/event/EventSource;

    .line 58
    .local v0, "other":Lcom/tencent/component/event/EventSource;
    iget-object v3, p0, Lcom/tencent/component/event/EventSource;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 59
    iget-object v3, v0, Lcom/tencent/component/event/EventSource;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    iget-object v3, p0, Lcom/tencent/component/event/EventSource;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/component/event/EventSource;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 62
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0x1f

    .line 44
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 45
    .local v1, "result":I
    iget-object v2, p0, Lcom/tencent/component/event/EventSource;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 46
    return v1

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/tencent/component/event/EventSource;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventSource [mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/event/EventSource;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/event/EventSource;->sender:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
