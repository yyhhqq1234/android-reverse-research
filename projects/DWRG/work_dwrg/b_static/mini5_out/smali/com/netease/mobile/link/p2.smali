.class public final Lcom/netease/mobile/link/p2;
.super Lcom/netease/mobile/link/h6$b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/netease/mobile/link/t2;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/t2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/p2;->c:Lcom/netease/mobile/link/t2;

    iput-object p2, p0, Lcom/netease/mobile/link/p2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/mobile/link/h6$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/netease/mobile/link/p2;->c:Lcom/netease/mobile/link/t2;

    iget-object v0, p0, Lcom/netease/mobile/link/p2;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mobile/link/t2;->a(Lcom/netease/mobile/link/t2;Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mobile/link/z5;->a()Lcom/netease/mobile/link/z5;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/p2;->c:Lcom/netease/mobile/link/t2;

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    const-string v1, "verify_sms_kb"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/netease/mobile/link/z5;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
