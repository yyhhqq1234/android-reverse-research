.class public final Lcom/netease/mobile/link/k4;
.super Lcom/netease/mobile/link/f5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/k4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/f5<",
        "Lcom/netease/mobile/link/k4$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mobile/link/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/mobile/link/n<",
            "Lcom/netease/mobile/link/k4$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/netease/mobile/link/f5;-><init>(Lcom/netease/mobile/link/t4;Lcom/netease/mobile/link/n;)V

    iput-object p1, p0, Lcom/netease/mobile/link/k4;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final b()Lcom/netease/mobile/link/v4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/k4$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->f:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/netease/mobile/link/k4;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nis/quicklogin/QuickLogin;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/nis/quicklogin/QuickLogin;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/netease/mobile/link/l6;

    invoke-direct {v1}, Lcom/netease/mobile/link/l6;-><init>()V

    :try_start_0
    new-instance v2, Lcom/netease/mobile/link/j4;

    invoke-direct {v2, v1}, Lcom/netease/mobile/link/j4;-><init>(Lcom/netease/mobile/link/l6;)V

    invoke-virtual {v0, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->onePass(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/netease/mobile/link/l6;->a(Ljava/lang/Object;)V

    :goto_0
    const/16 v0, 0xbb8

    int-to-long v2, v0

    .line 4
    iput-wide v2, v1, Lcom/netease/mobile/link/l6;->d:J

    .line 5
    invoke-virtual {v1}, Lcom/netease/mobile/link/l6;->a()V

    .line 6
    iget-object v0, v1, Lcom/netease/mobile/link/l6;->b:Ljava/lang/Object;

    .line 7
    check-cast v0, Lcom/netease/mobile/link/k4$a;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/netease/mobile/link/v4;

    invoke-direct {v0}, Lcom/netease/mobile/link/v4;-><init>()V

    const/16 v1, 0x194

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/netease/mobile/link/v4;->a(ILjava/lang/String;)Lcom/netease/mobile/link/v4;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Lcom/netease/mobile/link/v4;

    invoke-direct {v1}, Lcom/netease/mobile/link/v4;-><init>()V

    invoke-virtual {v1, v0}, Lcom/netease/mobile/link/v4;->a(Ljava/lang/Object;)Lcom/netease/mobile/link/v4;

    move-result-object v0

    return-object v0
.end method
