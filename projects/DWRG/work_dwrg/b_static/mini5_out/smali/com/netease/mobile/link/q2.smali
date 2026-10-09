.class public final Lcom/netease/mobile/link/q2;
.super Lcom/netease/mobile/link/h0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/netease/mobile/link/t2;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/t2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/q2;->d:Lcom/netease/mobile/link/t2;

    iput-object p2, p0, Lcom/netease/mobile/link/q2;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/mobile/link/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/netease/mobile/link/q2;->d:Lcom/netease/mobile/link/t2;

    iget-object v0, p0, Lcom/netease/mobile/link/q2;->c:Ljava/lang/String;

    .line 1
    invoke-virtual {p1, v0}, Lcom/netease/mobile/link/t2;->a(Ljava/lang/String;)V

    return-void
.end method
