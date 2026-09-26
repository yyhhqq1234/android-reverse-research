.class public final Lcom/netease/mpay/f/a/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/f/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Lcom/netease/mpay/f/a/a$a;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public a(Lcom/netease/mpay/f/a/a$a;Ljava/lang/String;Ljava/lang/Object;)Lcom/netease/mpay/f/a/a$b;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/f/a/a$b;->a:Z

    iput-object p1, p0, Lcom/netease/mpay/f/a/a$b;->c:Lcom/netease/mpay/f/a/a$a;

    iput-object p2, p0, Lcom/netease/mpay/f/a/a$b;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/f/a/a$b;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/netease/mpay/f/a/a$b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/f/a/a$b;->a:Z

    iput-object p1, p0, Lcom/netease/mpay/f/a/a$b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/netease/mpay/f/a/a$b;
    .locals 1

    sget-object v0, Lcom/netease/mpay/f/a/a$a;->l:Lcom/netease/mpay/f/a/a$a;

    invoke-virtual {p0, v0, p1, p2}, Lcom/netease/mpay/f/a/a$b;->a(Lcom/netease/mpay/f/a/a$a;Ljava/lang/String;Ljava/lang/Object;)Lcom/netease/mpay/f/a/a$b;

    move-result-object v0

    return-object v0
.end method
