.class Lcom/subao/common/a/c$l;
.super Lcom/subao/common/a/c$aa;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/subao/common/a/c$aa",
        "<",
        "Lcom/subao/common/intf/NodeDetectCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/subao/common/a/c;IJLcom/subao/common/intf/NodeDetectCallback;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 2439
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/a/c$aa;-><init>(Lcom/subao/common/a/c;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 2440
    iput p2, p0, Lcom/subao/common/a/c$l;->a:I

    .line 2441
    return-void
.end method

.method static a(Lcom/subao/common/a/c;IJLcom/subao/common/intf/NodeDetectCallback;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 2434
    new-instance v1, Lcom/subao/common/a/c$l;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/subao/common/a/c$l;-><init>(Lcom/subao/common/a/c;IJLcom/subao/common/intf/NodeDetectCallback;Ljava/lang/Object;)V

    .line 2435
    invoke-static {}, Lcom/subao/common/m/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2436
    return-void
.end method


# virtual methods
.method a(Lcom/subao/common/intf/NodeDetectCallback;Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 2450
    iget v0, p0, Lcom/subao/common/a/c$l;->a:I

    iget-boolean v1, p0, Lcom/subao/common/a/c$l;->b:Z

    invoke-interface {p1, v0, v1, p2}, Lcom/subao/common/intf/NodeDetectCallback;->onNodeDetectComplete(IZLjava/lang/Object;)V

    .line 2451
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 2428
    check-cast p1, Lcom/subao/common/intf/NodeDetectCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/subao/common/a/c$l;->a(Lcom/subao/common/intf/NodeDetectCallback;Ljava/lang/Object;Z)V

    return-void
.end method

.method a(Lcom/subao/common/a/c;)Z
    .locals 1

    .prologue
    .line 2445
    iget v0, p0, Lcom/subao/common/a/c$l;->a:I

    invoke-virtual {p1, v0}, Lcom/subao/common/a/c;->i(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/subao/common/a/c$l;->b:Z

    return v0
.end method
