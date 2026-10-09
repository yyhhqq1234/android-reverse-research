.class public final Lcom/netease/mobile/link/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mobile/link/n<",
        "Lcom/netease/mobile/link/d6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/z0;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/z0;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/y0;->a:Lcom/netease/mobile/link/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netease/mobile/link/v4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/d6;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/p4;->a()V

    iget-boolean v0, p1, Lcom/netease/mobile/link/v4;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobile/link/y0;->a:Lcom/netease/mobile/link/z0;

    .line 1
    iget-object v1, v0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 2
    iget-object v0, v0, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    .line 3
    invoke-static {p1, v1, v0}, Lcom/netease/mobile/link/g0;->a(Lcom/netease/mobile/link/v4;Lcom/netease/mobile/link/m0;Lcom/netease/mobile/link/y;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/netease/mobile/link/v4;->c:I

    const/16 v1, 0xbbc

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/netease/mobile/link/y0;->a:Lcom/netease/mobile/link/z0;

    .line 4
    iget-object v0, p1, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    .line 5
    iget-object p1, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 6
    iget-object v1, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object v2, p1, Lcom/netease/mobile/link/m0;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-static {v1, v2, p1}, Lcom/netease/mobile/link/p0;->e(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mobile/link/y0;->a:Lcom/netease/mobile/link/z0;

    .line 7
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 8
    iget-object p1, p1, Lcom/netease/mobile/link/v4;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
