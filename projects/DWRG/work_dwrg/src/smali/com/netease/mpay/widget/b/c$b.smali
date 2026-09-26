.class Lcom/netease/mpay/widget/b/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/b/c$b$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:Lcom/netease/mpay/widget/b/c$b$a;

.field c:Z

.field final synthetic d:Lcom/netease/mpay/widget/b/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/b/c;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/netease/mpay/widget/b/c$b;->d:Lcom/netease/mpay/widget/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/netease/mpay/widget/b/c$b;->a:Z

    new-instance v0, Lcom/netease/mpay/widget/b/c$b$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/b/c$b$a;-><init>(Lcom/netease/mpay/widget/b/c$b;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/b/c$b;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iput-boolean v1, p0, Lcom/netease/mpay/widget/b/c$b;->c:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
