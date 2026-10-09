.class public Lcom/subao/common/a/c$a;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/b/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/j/j;

.field private final b:Lcom/subao/common/i/g;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/subao/common/j/j;Lcom/subao/common/i/g;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2052
    if-nez p1, :cond_0

    .line 2053
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "NetTypeDetector cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2055
    :cond_0
    if-nez p2, :cond_1

    .line 2056
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MessageSender cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2058
    :cond_1
    iput-object p1, p0, Lcom/subao/common/a/c$a;->a:Lcom/subao/common/j/j;

    .line 2059
    iput-object p2, p0, Lcom/subao/common/a/c$a;->b:Lcom/subao/common/i/g;

    .line 2060
    iput-object p3, p0, Lcom/subao/common/a/c$a;->c:Ljava/lang/String;

    .line 2061
    return-void
.end method

.method static synthetic a(Lcom/subao/common/a/c$a;)Lcom/subao/common/i/g;
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/subao/common/a/c$a;->b:Lcom/subao/common/i/g;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/subao/common/a/c$a;->a:Lcom/subao/common/j/j;

    invoke-interface {v0}, Lcom/subao/common/j/j;->b()Z

    move-result v0

    return v0
.end method

.method public b()Lcom/subao/common/i/d$b;
    .locals 1

    .prologue
    .line 2070
    new-instance v0, Lcom/subao/common/a/c$a$1;

    invoke-direct {v0, p0}, Lcom/subao/common/a/c$a$1;-><init>(Lcom/subao/common/a/c$a;)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/subao/common/a/c$a;->c:Ljava/lang/String;

    return-object v0
.end method
