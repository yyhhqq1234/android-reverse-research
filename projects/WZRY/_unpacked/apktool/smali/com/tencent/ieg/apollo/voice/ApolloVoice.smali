.class public Lcom/tencent/ieg/apollo/voice/ApolloVoice;
.super Ljava/lang/Object;
.source "ApolloVoice.java"


# static fields
.field private static instance:Lcom/tencent/ieg/apollo/voice/ApolloVoice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized Instance()Lcom/tencent/ieg/apollo/voice/ApolloVoice;
    .locals 2

    .prologue
    .line 10
    const-class v1, Lcom/tencent/ieg/apollo/voice/ApolloVoice;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/ieg/apollo/voice/ApolloVoice;->instance:Lcom/tencent/ieg/apollo/voice/ApolloVoice;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/tencent/ieg/apollo/voice/ApolloVoice;

    invoke-direct {v0}, Lcom/tencent/ieg/apollo/voice/ApolloVoice;-><init>()V

    sput-object v0, Lcom/tencent/ieg/apollo/voice/ApolloVoice;->instance:Lcom/tencent/ieg/apollo/voice/ApolloVoice;

    .line 13
    :cond_0
    sget-object v0, Lcom/tencent/ieg/apollo/voice/ApolloVoice;->instance:Lcom/tencent/ieg/apollo/voice/ApolloVoice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Init(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p1}, Lcom/tencent/ieg/apollo/voice/Config;->SetContext(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
