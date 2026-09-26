.class Lcom/netease/mpay/widget/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/netease/mpay/widget/be;

.field final synthetic f:Lcom/netease/mpay/widget/m;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/widget/m;)V
    .locals 2

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/netease/mpay/widget/m$a;->f:Lcom/netease/mpay/widget/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/netease/mpay/widget/m$a;->a:I

    iput v0, p0, Lcom/netease/mpay/widget/m$a;->b:I

    iput v0, p0, Lcom/netease/mpay/widget/m$a;->c:I

    iput v0, p0, Lcom/netease/mpay/widget/m$a;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/widget/m$a;->e:Lcom/netease/mpay/widget/be;

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


# virtual methods
.method public a(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/widget/be;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
