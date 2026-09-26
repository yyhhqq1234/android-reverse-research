.class Lcom/netease/mpay/skin/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/skin/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/skin/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/skin/e;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/util/AttributeSet;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/skin/e;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/skin/e$b;->a:Lcom/netease/mpay/skin/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/skin/e$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/skin/e$b;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/netease/mpay/skin/e$b;->d:Landroid/util/AttributeSet;

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
.method public a()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/skin/e$b;->a:Lcom/netease/mpay/skin/e;

    iget-object v1, p0, Lcom/netease/mpay/skin/e$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/skin/e$b;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/mpay/skin/e$b;->d:Landroid/util/AttributeSet;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mpay/skin/e;->a(Lcom/netease/mpay/skin/e;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/skin/e$b;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/skin/e$b;->e:Landroid/view/View;

    return-object v0
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/skin/e$b;->e:Landroid/view/View;

    return-object v0
.end method
