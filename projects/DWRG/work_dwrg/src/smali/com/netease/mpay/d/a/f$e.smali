.class public Lcom/netease/mpay/d/a/f$e;
.super Lcom/netease/mpay/d/a/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/d/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/d/a/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/d/a/g;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/d/a/f$e;->c:Z

    iput-object p3, p0, Lcom/netease/mpay/d/a/f$e;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/mpay/d/a/f$e;->e:Z

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
