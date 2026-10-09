.class Lcom/subao/common/a/c$y;
.super Lcom/subao/common/a/c$ab;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "y"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/subao/common/a/c$ab",
        "<",
        "Lcom/subao/common/intf/UserAuthCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/subao/common/a/c;JLcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 2531
    invoke-direct/range {p0 .. p8}, Lcom/subao/common/a/c$ab;-><init>(Lcom/subao/common/a/c;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    .line 2532
    return-void
.end method

.method static a(Lcom/subao/common/a/c;JLcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    .prologue
    .line 2526
    new-instance v0, Lcom/subao/common/a/c$y;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/subao/common/a/c$y;-><init>(Lcom/subao/common/a/c;JLcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    .line 2527
    invoke-static {}, Lcom/subao/common/m/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2528
    return-void
.end method


# virtual methods
.method a(Lcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;Z)V
    .locals 6

    .prologue
    .line 2542
    invoke-virtual {p0}, Lcom/subao/common/a/c$y;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/subao/common/a/c$y;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/subao/common/a/c$y;->c()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move v4, p3

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/subao/common/intf/UserAuthCallback;->onUserAuthResult(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/Object;)V

    .line 2543
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 2523
    check-cast p1, Lcom/subao/common/intf/UserAuthCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/subao/common/a/c$y;->a(Lcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;Z)V

    return-void
.end method

.method a(Lcom/subao/common/a/c;)Z
    .locals 1

    .prologue
    .line 2536
    invoke-super {p0, p1}, Lcom/subao/common/a/c$ab;->a(Lcom/subao/common/a/c;)Z

    .line 2537
    invoke-virtual {p0}, Lcom/subao/common/a/c$y;->d()Z

    move-result v0

    return v0
.end method
