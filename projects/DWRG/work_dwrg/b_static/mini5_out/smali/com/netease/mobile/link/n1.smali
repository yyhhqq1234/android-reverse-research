.class public final Lcom/netease/mobile/link/n1;
.super Lcom/netease/mobile/link/h6$b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/netease/mobile/link/s1;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/s1;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/n1;->b:Lcom/netease/mobile/link/s1;

    invoke-direct {p0}, Lcom/netease/mobile/link/h6$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/netease/mobile/link/n1;->b:Lcom/netease/mobile/link/s1;

    invoke-static {p1}, Lcom/netease/mobile/link/s1;->b(Lcom/netease/mobile/link/s1;)V

    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/n1;->b:Lcom/netease/mobile/link/s1;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    const-string v1, "bind_mobile_kb"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/netease/mobile/link/z5;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
