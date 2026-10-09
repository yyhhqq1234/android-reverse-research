.class public final Lcom/netease/mobile/link/MobileLinkActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/MobileLinkActivity;->a(Lcom/netease/mobile/link/b5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mobile/link/n<",
        "Lcom/netease/mobile/link/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/b5;

.field public final synthetic b:Lcom/netease/mobile/link/MobileLinkActivity;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/MobileLinkActivity;Lcom/netease/mobile/link/b5;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/MobileLinkActivity$b;->b:Lcom/netease/mobile/link/MobileLinkActivity;

    iput-object p2, p0, Lcom/netease/mobile/link/MobileLinkActivity$b;->a:Lcom/netease/mobile/link/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netease/mobile/link/v4;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/t;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/netease/mobile/link/v4;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/mobile/link/v4;->b:Ljava/lang/Object;

    check-cast p1, Lcom/netease/mobile/link/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lcom/netease/mobile/link/a5;->h:Z

    iput-object p1, v0, Lcom/netease/mobile/link/a5;->i:Lcom/netease/mobile/link/t;

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/netease/mobile/link/MobileLinkActivity$b;->b:Lcom/netease/mobile/link/MobileLinkActivity;

    iget-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity$b;->a:Lcom/netease/mobile/link/b5;

    sget-object v1, Lcom/netease/mobile/link/MobileLinkActivity;->TAG:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 6
    new-instance v2, Lcom/netease/mobile/link/s4;

    invoke-virtual {v1}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v1

    .line 7
    iget-object v3, v0, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    .line 8
    new-instance v4, Lcom/netease/mobile/link/n3;

    invoke-direct {v4, p1, v0}, Lcom/netease/mobile/link/n3;-><init>(Lcom/netease/mobile/link/MobileLinkActivity;Lcom/netease/mobile/link/b5;)V

    invoke-direct {v2, v1, v3, v4}, Lcom/netease/mobile/link/s4;-><init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v2}, Lcom/netease/mobile/link/f5;->a()V

    goto :goto_2

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/netease/mobile/link/MobileLinkActivity$b;->b:Lcom/netease/mobile/link/MobileLinkActivity;

    iget-object v1, p0, Lcom/netease/mobile/link/MobileLinkActivity$b;->a:Lcom/netease/mobile/link/b5;

    sget-object v2, Lcom/netease/mobile/link/MobileLinkActivity;->TAG:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget v2, p1, Lcom/netease/mobile/link/v4;->c:I

    const/16 v3, 0xfa6

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mobile/link/p4;->a()V

    iget-object v2, v0, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    .line 12
    new-instance v3, Lcom/netease/mobile/link/m0;

    const-class v4, Lcom/netease/mobile/link/n6;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v1, v4, v5, v2}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    .line 13
    iget-object p1, p1, Lcom/netease/mobile/link/v4;->d:Ljava/lang/String;

    .line 14
    iput-object p1, v3, Lcom/netease/mobile/link/m0;->f:Ljava/lang/String;

    .line 15
    iget-object p1, v0, Lcom/netease/mobile/link/MobileLinkActivity;->c:Lcom/netease/mobile/link/y;

    invoke-virtual {p1, v3}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    goto :goto_2

    :cond_2
    iget-object p1, v0, Lcom/netease/mobile/link/MobileLinkActivity;->d:Lcom/netease/mobile/link/MobileLinkActivity$a;

    const/4 v0, 0x3

    if-ne v2, v0, :cond_3

    const/16 v0, 0x67

    goto :goto_1

    :cond_3
    const/16 v0, 0x66

    :goto_1
    invoke-virtual {p1, v0}, Lcom/netease/mobile/link/MobileLinkActivity$a;->a(I)V

    :goto_2
    return-void
.end method
