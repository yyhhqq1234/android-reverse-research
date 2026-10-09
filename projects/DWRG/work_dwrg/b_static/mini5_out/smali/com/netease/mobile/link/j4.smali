.class public final Lcom/netease/mobile/link/j4;
.super Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/l6;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/l6;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/j4;->a:Lcom/netease/mobile/link/l6;

    invoke-direct {p0}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/netease/mobile/link/j4;->a:Lcom/netease/mobile/link/l6;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netease/mobile/link/l6;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onGetTokenSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/j4;->a:Lcom/netease/mobile/link/l6;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/netease/mobile/link/k4$a;

    invoke-direct {v1, p1, p2}, Lcom/netease/mobile/link/k4$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/l6;->a(Ljava/lang/Object;)V

    return-void
.end method
