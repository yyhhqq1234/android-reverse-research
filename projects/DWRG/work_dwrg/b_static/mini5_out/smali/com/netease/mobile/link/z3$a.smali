.class public final Lcom/netease/mobile/link/z3$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/z3;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/z3;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/z3;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/z3$a;->a:Lcom/netease/mobile/link/z3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/z3$a;->a:Lcom/netease/mobile/link/z3;

    .line 1
    iget-boolean v1, v0, Lcom/netease/mobile/link/z3;->e:Z

    if-eqz v1, :cond_0

    const-string v0, "MobileLink"

    const-string v1, "NonForceGuideTimer current is OnWebPage, just set a label"

    .line 2
    invoke-static {v0, v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mobile/link/z3$a;->a:Lcom/netease/mobile/link/z3;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/netease/mobile/link/z3;->f:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/z3;->a(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/netease/mobile/link/z3$a;->a:Lcom/netease/mobile/link/z3;

    .line 7
    invoke-virtual {v0}, Lcom/netease/mobile/link/z3;->c()V

    return-void
.end method
