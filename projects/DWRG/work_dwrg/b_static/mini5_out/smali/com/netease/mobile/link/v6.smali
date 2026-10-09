.class public final Lcom/netease/mobile/link/v6;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/netease/mobile/link/t$a;

.field public final synthetic d:Lcom/netease/mobile/link/x6;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/x6;Lcom/netease/mobile/link/t$a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/v6;->d:Lcom/netease/mobile/link/x6;

    iput-object p2, p0, Lcom/netease/mobile/link/v6;->c:Lcom/netease/mobile/link/t$a;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/netease/mobile/link/v6;->c:Lcom/netease/mobile/link/t$a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/netease/mobile/link/t$a;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/netease/mobile/link/v6;->d:Lcom/netease/mobile/link/x6;

    .line 1
    iget-object v0, p1, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    .line 2
    iget-object p1, p1, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    .line 3
    iget-object v1, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object v2, p0, Lcom/netease/mobile/link/v6;->c:Lcom/netease/mobile/link/t$a;

    iget-object v2, v2, Lcom/netease/mobile/link/t$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mobile/link/m0;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-static {v1, v2, v3, p1}, Lcom/netease/mobile/link/p0;->a(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/v6;->d:Lcom/netease/mobile/link/x6;

    .line 4
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    const-string v1, "service_rule"

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/netease/mobile/link/z5;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
