.class public final Lcom/netease/mobile/link/y6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/y6;->a(Landroid/view/View;)V
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
.field public final synthetic a:Lcom/netease/mobile/link/y6;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/y6;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/y6$a;->a:Lcom/netease/mobile/link/y6;

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
            "Lcom/netease/mobile/link/k4$a;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/netease/mobile/link/v4;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobile/link/y6$a;->a:Lcom/netease/mobile/link/y6;

    iget-object v0, v0, Lcom/netease/mobile/link/y6;->d:Lcom/netease/mobile/link/f7;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/a5;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mobile/link/y6$a$a;

    invoke-direct {v2, p0, p1}, Lcom/netease/mobile/link/y6$a$a;-><init>(Lcom/netease/mobile/link/y6$a;Lcom/netease/mobile/link/v4;)V

    invoke-static {v0, v1, v2}, Lcom/netease/mobile/link/f7;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/y6$a;->a:Lcom/netease/mobile/link/y6;

    iget-object v0, v0, Lcom/netease/mobile/link/y6;->d:Lcom/netease/mobile/link/f7;

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    .line 4
    iget-object p1, p1, Lcom/netease/mobile/link/v4;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
