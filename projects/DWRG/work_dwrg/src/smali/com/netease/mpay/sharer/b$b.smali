.class Lcom/netease/mpay/sharer/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/sharer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcom/netease/mpay/sharer/b;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/sharer/b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/sharer/b$b;->d:Lcom/netease/mpay/sharer/b;

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

.method synthetic constructor <init>(Lcom/netease/mpay/sharer/b;Lcom/netease/mpay/sharer/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/sharer/b$b;-><init>(Lcom/netease/mpay/sharer/b;)V

    return-void
.end method
