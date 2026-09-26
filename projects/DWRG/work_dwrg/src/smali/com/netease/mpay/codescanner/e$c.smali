.class Lcom/netease/mpay/codescanner/e$c;
.super Lcom/netease/mpay/codescanner/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/codescanner/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/codescanner/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/e$c;->d:Lcom/netease/mpay/codescanner/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/codescanner/e$b;-><init>(Lcom/netease/mpay/codescanner/e;Lcom/netease/mpay/codescanner/f;)V

    iput-object p2, p0, Lcom/netease/mpay/codescanner/e$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/codescanner/e$c;->c:Ljava/lang/String;

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
