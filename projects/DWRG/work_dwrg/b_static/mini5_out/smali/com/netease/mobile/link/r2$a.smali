.class public final Lcom/netease/mobile/link/r2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/r2;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/r2;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/r2;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/r2$a;->a:Lcom/netease/mobile/link/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openMobileDisabledPage: onSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mobile/link/r2$a;->a:Lcom/netease/mobile/link/r2;

    iget-object v0, v0, Lcom/netease/mobile/link/r2;->c:Lcom/netease/mobile/link/t2;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 6
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v2

    iget-object v3, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/netease/mobile/link/p4;->a(Landroid/app/Activity;)V

    new-instance v2, Lcom/netease/mobile/link/c6;

    invoke-virtual {v1}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v1

    iget-object v3, v0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v3, v3, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    invoke-direct {v2, v1, v3}, Lcom/netease/mobile/link/c6;-><init>(Lcom/netease/mobile/link/f6$a;Lcom/netease/mobile/link/b5;)V

    const/4 v1, 0x7

    .line 7
    iput v1, v2, Lcom/netease/mobile/link/c6;->j:I

    iput-object p1, v2, Lcom/netease/mobile/link/c6;->q:Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Lcom/netease/mobile/link/c6;->c()V

    new-instance p1, Lcom/netease/mobile/link/e6;

    new-instance v1, Lcom/netease/mobile/link/v2;

    invoke-direct {v1, v0}, Lcom/netease/mobile/link/v2;-><init>(Lcom/netease/mobile/link/t2;)V

    invoke-direct {p1, v2, v1}, Lcom/netease/mobile/link/e6;-><init>(Lcom/netease/mobile/link/c6;Lcom/netease/mobile/link/n;)V

    invoke-virtual {p1}, Lcom/netease/mobile/link/f5;->a()V

    return-void
.end method
