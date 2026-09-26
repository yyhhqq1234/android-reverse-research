.class public Lcom/netease/mpay/oz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/widget/be;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oz$a;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/mpay/oz$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/mpay/oz$a;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oz$a;-><init>(Lcom/netease/mpay/oz;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/oz;->a:Lcom/netease/mpay/oz$a;

    iget-object v0, p0, Lcom/netease/mpay/oz;->a:Lcom/netease/mpay/oz$a;

    invoke-virtual {v0, p2, p3}, Lcom/netease/mpay/oz$a;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

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
.method public a()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oz;->a:Lcom/netease/mpay/oz$a;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oz;->a:Lcom/netease/mpay/oz$a;

    iget v0, v0, Lcom/netease/mpay/oz$a;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oz;->a:Lcom/netease/mpay/oz$a;

    iget v0, v0, Lcom/netease/mpay/oz$a;->b:I

    return v0
.end method
