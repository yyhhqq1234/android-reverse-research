.class public Lcom/netease/mpay/view/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:Z

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/view/b$b;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/netease/mpay/view/b$b;->b:Z

    iput-object p3, p0, Lcom/netease/mpay/view/b$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/view/b$b;->d:Ljava/lang/String;

    iput p5, p0, Lcom/netease/mpay/view/b$b;->e:I

    iput-boolean p6, p0, Lcom/netease/mpay/view/b$b;->f:Z

    iput-object p7, p0, Lcom/netease/mpay/view/b$b;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/netease/mpay/view/b$b;->h:Ljava/lang/String;

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
