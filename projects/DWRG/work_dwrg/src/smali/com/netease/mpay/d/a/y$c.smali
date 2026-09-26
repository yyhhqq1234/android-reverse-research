.class public Lcom/netease/mpay/d/a/y$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/d/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/d/a/y$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/d/a/y$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/d/a/y$c;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/mpay/d/a/y$c;->d:Z

    iput-object p5, p0, Lcom/netease/mpay/d/a/y$c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/d/a/y$c;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/netease/mpay/d/a/y$c;->g:Ljava/util/ArrayList;

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
