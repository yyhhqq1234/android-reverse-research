.class Lcom/netease/mpay/server/response/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/server/response/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field b:Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic c:Lcom/netease/mpay/server/response/n;


# direct methods
.method constructor <init>(Lcom/netease/mpay/server/response/n;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/server/response/n$a;->c:Lcom/netease/mpay/server/response/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/server/response/n$a;->a:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Lcom/netease/mpay/server/response/n$a;->b:Z

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
