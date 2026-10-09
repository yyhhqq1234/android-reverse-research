.class public final Lcom/netease/mobile/link/x0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/x0;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mobile/link/n<",
        "Lcom/netease/mobile/link/q5;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/x0;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/x0;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/x0$a;->a:Lcom/netease/mobile/link/x0;

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
            "Lcom/netease/mobile/link/q5;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/netease/mobile/link/v4;->a:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/netease/mobile/link/v4;->b:Ljava/lang/Object;

    check-cast p1, Lcom/netease/mobile/link/q5;

    iget-object p1, p1, Lcom/netease/mobile/link/q5;->a:Ljava/lang/String;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mobile/link/x0$a;->a:Lcom/netease/mobile/link/x0;

    iget-object p1, p1, Lcom/netease/mobile/link/x0;->c:Lcom/netease/mobile/link/z0;

    .line 1
    iget-object v0, p1, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    .line 2
    iget-object p1, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 3
    iget-object v1, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object v2, p1, Lcom/netease/mobile/link/m0;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-static {v1, v2, p1}, Lcom/netease/mobile/link/p0;->g(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/netease/mobile/link/x0$a;->a:Lcom/netease/mobile/link/x0;

    iget-object p1, p1, Lcom/netease/mobile/link/x0;->c:Lcom/netease/mobile/link/z0;

    .line 4
    iget-object p1, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 5
    iget-object v0, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object v1, p1, Lcom/netease/mobile/link/m0;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-static {v0, v1, p1}, Lcom/netease/mobile/link/p0;->e(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/x0$a;->a:Lcom/netease/mobile/link/x0;

    iget-object v0, v0, Lcom/netease/mobile/link/x0;->c:Lcom/netease/mobile/link/z0;

    .line 6
    iget-object v0, v0, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    .line 7
    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    :goto_0
    return-void
.end method
