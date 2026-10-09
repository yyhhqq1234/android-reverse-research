.class public final Lcom/ironsource/n4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/w7$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/n4;->b(Lcom/ironsource/n4$d;)Lcom/ironsource/w7$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J,\u0010\n\u001a\u00020\t2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/ironsource/n4$c",
        "Lcom/ironsource/w7$b;",
        "",
        "Lcom/ironsource/x7;",
        "biddingDataList",
        "",
        "duration",
        "",
        "reachedTimeout",
        "",
        "a",
        "error",
        "onFailure",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/n4;

.field final synthetic b:Lcom/ironsource/n4$d;


# direct methods
.method public static synthetic $r8$lambda$9oqszUhjcQvplT9_MObcQ1j3Tf4(Lcom/ironsource/n4;Ljava/lang/String;Lcom/ironsource/n4$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/n4$c;->a(Lcom/ironsource/n4;Ljava/lang/String;Lcom/ironsource/n4$d;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZrQWUtRIxjhCpfoNKxneCtR7pFA(Lcom/ironsource/n4;JLjava/util/List;Ljava/util/List;Lcom/ironsource/n4$d;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/ironsource/n4$c;->a(Lcom/ironsource/n4;JLjava/util/List;Ljava/util/List;Lcom/ironsource/n4$d;)V

    return-void
.end method

.method constructor <init>(Lcom/ironsource/n4;Lcom/ironsource/n4$d;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/n4$c;->a:Lcom/ironsource/n4;

    iput-object p2, p0, Lcom/ironsource/n4$c;->b:Lcom/ironsource/n4$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/ironsource/n4;JLjava/util/List;Ljava/util/List;Lcom/ironsource/n4$d;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$biddingDataList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reachedTimeout"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$biddingDataListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p5}, Lcom/ironsource/n4;->a(Lcom/ironsource/n4;JLjava/util/List;Ljava/util/List;Lcom/ironsource/n4$d;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/n4;Ljava/lang/String;Lcom/ironsource/n4$d;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$biddingDataListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ironsource/n4;->a(Lcom/ironsource/n4;)Lcom/ironsource/t2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->f()Lcom/ironsource/ut;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/ut;->a(Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lcom/ironsource/n4$d;->a(Lcom/ironsource/n4;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;JLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/x7;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "biddingDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reachedTimeout"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/n4$c;->a:Lcom/ironsource/n4;

    invoke-static {v0}, Lcom/ironsource/n4;->a(Lcom/ironsource/n4;)Lcom/ironsource/t2;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/n4$c;->a:Lcom/ironsource/n4;

    iget-object v7, p0, Lcom/ironsource/n4$c;->b:Lcom/ironsource/n4$d;

    new-instance v8, Lcom/ironsource/n4$c$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-wide v3, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/n4$c$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/n4;JLjava/util/List;Ljava/util/List;Lcom/ironsource/n4$d;)V

    invoke-virtual {v0, v8}, Lcom/ironsource/sk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/n4$c;->a:Lcom/ironsource/n4;

    invoke-static {v0}, Lcom/ironsource/n4;->a(Lcom/ironsource/n4;)Lcom/ironsource/t2;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/n4$c;->a:Lcom/ironsource/n4;

    iget-object v2, p0, Lcom/ironsource/n4$c;->b:Lcom/ironsource/n4$d;

    new-instance v3, Lcom/ironsource/n4$c$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p1, v2}, Lcom/ironsource/n4$c$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/n4;Ljava/lang/String;Lcom/ironsource/n4$d;)V

    invoke-virtual {v0, v3}, Lcom/ironsource/sk;->a(Ljava/lang/Runnable;)V

    return-void
.end method
