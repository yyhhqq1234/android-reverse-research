.class public Lcom/ironsource/t2;
.super Lcom/ironsource/l1;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B!\u0008\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0001\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008)\u0010*B\u0019\u0008\u0016\u0012\u0006\u0010+\u001a\u00020\u0000\u0012\u0006\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008)\u0010,J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008J\u0018\u0010\u000e\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\r2\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\u0010\u001a\u00020\u000fJ\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0011J\u0016\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0008J\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008R\u0014\u0010\u0019\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u001e\u001a\u00020\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001b\u0010\u001dR$\u0010$\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008 \u0010\"\"\u0004\u0008\u000e\u0010#\u00a8\u0006-"
    }
    d2 = {
        "Lcom/ironsource/t2;",
        "Lcom/ironsource/l1;",
        "Lcom/ironsource/cq;",
        "task",
        "",
        "c",
        "Lcom/ironsource/mediationsdk/IronSourceSegment;",
        "l",
        "",
        "serverData",
        "e",
        "Lcom/ironsource/z;",
        "instanceData",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;",
        "a",
        "Lcom/ironsource/zg$a;",
        "m",
        "",
        "k",
        "",
        "timeStamp",
        "instanceName",
        "j",
        "g",
        "Lcom/ironsource/l1;",
        "adTools",
        "Lcom/ironsource/p2;",
        "h",
        "Lcom/ironsource/p2;",
        "()Lcom/ironsource/p2;",
        "auctionHistory",
        "Lcom/ironsource/d5;",
        "i",
        "Lcom/ironsource/d5;",
        "()Lcom/ironsource/d5;",
        "(Lcom/ironsource/d5;)V",
        "auctionRequestEnricher",
        "Lcom/ironsource/t1;",
        "adUnitData",
        "Lcom/ironsource/b2$b;",
        "level",
        "<init>",
        "(Lcom/ironsource/l1;Lcom/ironsource/t1;Lcom/ironsource/b2$b;)V",
        "adUnitTools",
        "(Lcom/ironsource/t2;Lcom/ironsource/b2$b;)V",
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
.field private final g:Lcom/ironsource/l1;

.field private final h:Lcom/ironsource/p2;

.field private i:Lcom/ironsource/d5;


# direct methods
.method public constructor <init>(Lcom/ironsource/l1;Lcom/ironsource/t1;Lcom/ironsource/b2$b;)V
    .locals 1

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/ironsource/l1;-><init>(Lcom/ironsource/l1;Lcom/ironsource/b2$b;)V

    iput-object p1, p0, Lcom/ironsource/t2;->g:Lcom/ironsource/l1;

    invoke-virtual {p2}, Lcom/ironsource/t1;->e()Lcom/ironsource/l5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/l5;->c()I

    move-result p1

    invoke-static {p2, p1}, Lcom/ironsource/os;->a(Lcom/ironsource/t1;I)Lcom/ironsource/p2;

    move-result-object p1

    const-string p2, "getAdUnitPerformance(\n  \u2026auctionSavedHistoryLimit)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/t2;->h:Lcom/ironsource/p2;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/t2;Lcom/ironsource/b2$b;)V
    .locals 1

    const-string v0, "adUnitTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/ironsource/l1;-><init>(Lcom/ironsource/l1;Lcom/ironsource/b2$b;)V

    iget-object p2, p1, Lcom/ironsource/t2;->g:Lcom/ironsource/l1;

    iput-object p2, p0, Lcom/ironsource/t2;->g:Lcom/ironsource/l1;

    iget-object p2, p1, Lcom/ironsource/t2;->h:Lcom/ironsource/p2;

    iput-object p2, p0, Lcom/ironsource/t2;->h:Lcom/ironsource/p2;

    iget-object p1, p1, Lcom/ironsource/t2;->i:Lcom/ironsource/d5;

    iput-object p1, p0, Lcom/ironsource/t2;->i:Lcom/ironsource/d5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/z;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/z;",
            ")",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "**>;"
        }
    .end annotation

    const-string v0, "instanceData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/z;->u()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/z;->h()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/z;->i()Lcom/ironsource/t1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/t1;->b()Lcom/ironsource/c1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/c1;->d()Lcom/ironsource/yj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/yj;->b()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/c;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "instanceName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTransId(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getTransId(timeStamp, instanceName)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lcom/ironsource/d5;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/t2;->i:Lcom/ironsource/d5;

    return-void
.end method

.method public final c(Lcom/ironsource/cq;)V
    .locals 7

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/ironsource/ps;->a:Lcom/ironsource/ps;

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ironsource/ps;->a(Lcom/ironsource/ps;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "serverData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getInstance().getDynamic\u2026romServerData(serverData)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h()Lcom/ironsource/p2;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/t2;->h:Lcom/ironsource/p2;

    return-object v0
.end method

.method public final i()Lcom/ironsource/d5;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/t2;->i:Lcom/ironsource/d5;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->m()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->m()Lcom/ironsource/mediationsdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/p;->s()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lcom/ironsource/mediationsdk/IronSourceSegment;
    .locals 1

    invoke-static {}, Lcom/ironsource/os;->a()Lcom/ironsource/mediationsdk/IronSourceSegment;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/ironsource/zg$a;
    .locals 1

    sget-object v0, Lcom/ironsource/jl;->q:Lcom/ironsource/jl$b;

    invoke-virtual {v0}, Lcom/ironsource/jl$b;->a()Lcom/ironsource/xe;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/xe;->e()Lcom/ironsource/zg$a;

    move-result-object v0

    return-object v0
.end method
