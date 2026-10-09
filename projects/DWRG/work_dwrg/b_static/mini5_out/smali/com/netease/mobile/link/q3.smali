.class public final Lcom/netease/mobile/link/q3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mobile/link/n<",
        "Lcom/netease/mobile/link/q5;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/b5;

.field public final synthetic b:Lcom/netease/mobile/link/MobileLinkActivity;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/MobileLinkActivity;)V
    .locals 1

    sget-object v0, Lcom/netease/mobile/link/b5;->c:Lcom/netease/mobile/link/b5;

    iput-object p1, p0, Lcom/netease/mobile/link/q3;->b:Lcom/netease/mobile/link/MobileLinkActivity;

    iput-object v0, p0, Lcom/netease/mobile/link/q3;->a:Lcom/netease/mobile/link/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netease/mobile/link/v4;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/q5;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/p4;->a()V

    invoke-static {}, Lcom/netease/mobile/link/z3;->b()Lcom/netease/mobile/link/z3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/z3;->d()V

    iget-boolean p1, p1, Lcom/netease/mobile/link/v4;->a:Z

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mobile/link/q3;->b:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 1
    iget-object v1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    .line 2
    iget-object v2, p0, Lcom/netease/mobile/link/q3;->a:Lcom/netease/mobile/link/b5;

    .line 3
    iget-object p1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    .line 4
    new-instance v3, Lcom/netease/mobile/link/m0;

    const-class v4, Lcom/netease/mobile/link/x6;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    .line 5
    invoke-virtual {v1, v3}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/netease/mobile/link/q3;->b:Lcom/netease/mobile/link/MobileLinkActivity;

    .line 6
    iget-object v1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    .line 7
    iget-object v2, p0, Lcom/netease/mobile/link/q3;->a:Lcom/netease/mobile/link/b5;

    .line 8
    iget-object p1, p1, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    .line 9
    invoke-static {v2, v0, p1}, Lcom/netease/mobile/link/p0;->c(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    :goto_0
    return-void
.end method
