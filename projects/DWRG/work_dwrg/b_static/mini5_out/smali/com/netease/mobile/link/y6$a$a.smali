.class public final Lcom/netease/mobile/link/y6$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/y6$a;->a(Lcom/netease/mobile/link/v4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/v4;

.field public final synthetic b:Lcom/netease/mobile/link/y6$a;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/y6$a;Lcom/netease/mobile/link/v4;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/y6$a$a;->b:Lcom/netease/mobile/link/y6$a;

    iput-object p2, p0, Lcom/netease/mobile/link/y6$a$a;->a:Lcom/netease/mobile/link/v4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/netease/mobile/link/y6$a$a;->b:Lcom/netease/mobile/link/y6$a;

    iget-object p1, p1, Lcom/netease/mobile/link/y6$a;->a:Lcom/netease/mobile/link/y6;

    iget-object p1, p1, Lcom/netease/mobile/link/y6;->d:Lcom/netease/mobile/link/f7;

    iget-object v0, p0, Lcom/netease/mobile/link/y6$a$a;->a:Lcom/netease/mobile/link/v4;

    iget-object v0, v0, Lcom/netease/mobile/link/v4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mobile/link/k4$a;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 4
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v2

    iget-object v3, p1, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/netease/mobile/link/p4;->a(Landroid/app/Activity;)V

    new-instance v2, Lcom/netease/mobile/link/e6;

    new-instance v3, Lcom/netease/mobile/link/c6;

    invoke-virtual {v1}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v4

    iget-object v5, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

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
    iget-object v4, v0, Lcom/netease/mobile/link/k4$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mobile/link/k4$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v0}, Lcom/netease/mobile/link/c6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mobile/link/c6;

    move-result-object v0

    new-instance v1, Lcom/netease/mobile/link/e7;

    invoke-direct {v1, p1}, Lcom/netease/mobile/link/e7;-><init>(Lcom/netease/mobile/link/f7;)V

    invoke-direct {v2, v0, v1}, Lcom/netease/mobile/link/e6;-><init>(Lcom/netease/mobile/link/c6;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v2}, Lcom/netease/mobile/link/f5;->a()V

    return-void
.end method
