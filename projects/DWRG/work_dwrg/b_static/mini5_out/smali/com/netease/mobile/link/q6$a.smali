.class public final Lcom/netease/mobile/link/q6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/q6;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mobile/link/n<",
        "Lcom/netease/mobile/link/k4$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/q6;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/q6;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/q6$a;->a:Lcom/netease/mobile/link/q6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netease/mobile/link/v4;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/k4$a;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/netease/mobile/link/v4;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobile/link/q6$a;->a:Lcom/netease/mobile/link/q6;

    iget-object v0, v0, Lcom/netease/mobile/link/q6;->d:Lcom/netease/mobile/link/x6;

    iget-object p1, p1, Lcom/netease/mobile/link/v4;->b:Ljava/lang/Object;

    check-cast p1, Lcom/netease/mobile/link/k4$a;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 4
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v2

    iget-object v3, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/netease/mobile/link/p4;->a(Landroid/app/Activity;)V

    new-instance v2, Lcom/netease/mobile/link/e6;

    new-instance v3, Lcom/netease/mobile/link/c6;

    invoke-virtual {v1}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v4

    iget-object v5, v0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v5, v5, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    invoke-direct {v3, v4, v5}, Lcom/netease/mobile/link/c6;-><init>(Lcom/netease/mobile/link/f6$a;Lcom/netease/mobile/link/b5;)V

    iget-object v1, v1, Lcom/netease/mobile/link/f6;->i:Ljava/lang/String;

    .line 5
    iput-object v1, v3, Lcom/netease/mobile/link/c6;->i:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/netease/mobile/link/a5;->f:Ljava/lang/String;

    .line 8
    iget-object v4, p1, Lcom/netease/mobile/link/k4$a;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mobile/link/k4$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, p1}, Lcom/netease/mobile/link/c6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mobile/link/c6;

    move-result-object p1

    new-instance v1, Lcom/netease/mobile/link/w6;

    invoke-direct {v1, v0}, Lcom/netease/mobile/link/w6;-><init>(Lcom/netease/mobile/link/x6;)V

    invoke-direct {v2, p1, v1}, Lcom/netease/mobile/link/e6;-><init>(Lcom/netease/mobile/link/c6;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v2}, Lcom/netease/mobile/link/f5;->a()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/q6$a;->a:Lcom/netease/mobile/link/q6;

    iget-object v0, v0, Lcom/netease/mobile/link/q6;->d:Lcom/netease/mobile/link/x6;

    .line 10
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 11
    iget-object p1, p1, Lcom/netease/mobile/link/v4;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
