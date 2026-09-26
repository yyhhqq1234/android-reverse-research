.class Lcom/netease/mpay/c/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Lcom/netease/mpay/c/a$b;

.field final synthetic c:Lcom/netease/mpay/c/a;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/c/a;Landroid/graphics/Bitmap;Lcom/netease/mpay/c/a$b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/c/a$a;->c:Lcom/netease/mpay/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/c/a$a;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/netease/mpay/c/a$a;->b:Lcom/netease/mpay/c/a$b;

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
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/c/a$a;->c:Lcom/netease/mpay/c/a;

    iget-object v1, p0, Lcom/netease/mpay/c/a$a;->b:Lcom/netease/mpay/c/a$b;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/c/a;->a(Lcom/netease/mpay/c/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/c/a$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/c/a$a;->b:Lcom/netease/mpay/c/a$b;

    iget-object v0, v0, Lcom/netease/mpay/c/a$b;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/mpay/c/a$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/c/a$a;->b:Lcom/netease/mpay/c/a$b;

    iget-object v0, v0, Lcom/netease/mpay/c/a$b;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/mpay/c/a$a;->c:Lcom/netease/mpay/c/a;

    invoke-static {v1}, Lcom/netease/mpay/c/a;->b(Lcom/netease/mpay/c/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
