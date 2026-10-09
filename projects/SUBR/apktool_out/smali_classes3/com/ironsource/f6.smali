.class public final Lcom/ironsource/f6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/ironsource/r6;",
        "configs",
        "Lcom/ironsource/l2;",
        "b",
        "mediationsdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final synthetic a(Lcom/ironsource/r6;)Lcom/ironsource/l2;
    .locals 0

    invoke-static {p0}, Lcom/ironsource/f6;->b(Lcom/ironsource/r6;)Lcom/ironsource/l2;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lcom/ironsource/r6;)Lcom/ironsource/l2;
    .locals 11

    invoke-virtual {p0}, Lcom/ironsource/r6;->d()Lcom/ironsource/l5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l5;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/l2$a;->c:Lcom/ironsource/l2$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/l2$a;->b:Lcom/ironsource/l2$a;

    :goto_0
    move-object v2, v0

    new-instance v0, Lcom/ironsource/l2;

    invoke-virtual {p0}, Lcom/ironsource/r6;->d()Lcom/ironsource/l5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/l5;->j()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ironsource/r6;->d()Lcom/ironsource/l5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/l5;->b()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/ironsource/r6;->i()I

    move-result p0

    int-to-long v7, p0

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/l2;-><init>(Lcom/ironsource/l2$a;JJJ)V

    return-object v0
.end method
