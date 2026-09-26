.class Lcom/netease/mpay/ex$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/ex$a$b;,
        Lcom/netease/mpay/ex$a$c;,
        Lcom/netease/mpay/ex$a$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Lcom/netease/mpay/ex$a$c;

.field e:Z

.field f:Lcom/netease/mpay/ex$a$b;

.field g:Z

.field h:Lcom/netease/mpay/ex$a$a;

.field final synthetic i:Lcom/netease/mpay/ex;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/ex;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/netease/mpay/ex$a;->i:Lcom/netease/mpay/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/netease/mpay/ex$a;->b:Z

    iput-boolean v0, p0, Lcom/netease/mpay/ex$a;->a:Z

    iput-boolean v0, p0, Lcom/netease/mpay/ex$a;->g:Z

    iput-boolean v0, p0, Lcom/netease/mpay/ex$a;->c:Z

    iput-boolean v0, p0, Lcom/netease/mpay/ex$a;->e:Z

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
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/ex$a;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/ex$a;->h:Lcom/netease/mpay/ex$a$a;

    return-void
.end method

.method public a(ILcom/netease/mpay/b/al;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/ex$a;->g:Z

    new-instance v0, Lcom/netease/mpay/ex$a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/ex$a$a;-><init>(Lcom/netease/mpay/ex$a;ILcom/netease/mpay/b/al;)V

    iput-object v0, p0, Lcom/netease/mpay/ex$a;->h:Lcom/netease/mpay/ex$a$a;

    return-void
.end method

.method public a(Lcom/netease/mpay/ew;Lcom/netease/mpay/widget/ae$a;ZZ)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/ex$a;->c:Z

    new-instance v0, Lcom/netease/mpay/ex$a$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/ex$a$c;-><init>(Lcom/netease/mpay/ex$a;Lcom/netease/mpay/ew;Lcom/netease/mpay/widget/ae$a;ZZ)V

    iput-object v0, p0, Lcom/netease/mpay/ex$a;->d:Lcom/netease/mpay/ex$a$c;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/ex$a;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/ex$a;->d:Lcom/netease/mpay/ex$a$c;

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/ex$a;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/ex$a;->f:Lcom/netease/mpay/ex$a$b;

    return-void
.end method
