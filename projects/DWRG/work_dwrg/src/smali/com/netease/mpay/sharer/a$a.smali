.class public Lcom/netease/mpay/sharer/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/sharer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/sharer/a;

.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/sharer/a;Lcom/netease/mpay/sharer/ShareContent;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/netease/mpay/sharer/a$a;->a:Lcom/netease/mpay/sharer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/sharer/a$a;->b:Landroid/os/Bundle;

    iget v0, p2, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/sharer/a$a;->b:Landroid/os/Bundle;

    const-string v1, "req_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p2, Lcom/netease/mpay/sharer/ShareContent;->webUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/sharer/a$a;->a(Ljava/lang/String;)Lcom/netease/mpay/sharer/a$a;

    iget-object v0, p0, Lcom/netease/mpay/sharer/a$a;->b:Landroid/os/Bundle;

    const-string v1, "imageUrl"

    iget-object v2, p2, Lcom/netease/mpay/sharer/ShareContent;->image:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/netease/mpay/sharer/a;->a(Lcom/netease/mpay/sharer/a;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p2, Lcom/netease/mpay/sharer/ShareContent;->title:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/mpay/sharer/ShareContent;->desc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/mpay/sharer/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/sharer/a$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p2, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/sharer/a$a;->b:Landroid/os/Bundle;

    const-string v1, "req_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/a$a;->b:Landroid/os/Bundle;

    const-string v1, "imageLocalUrl"

    iget-object v2, p2, Lcom/netease/mpay/sharer/ShareContent;->image:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/netease/mpay/sharer/a;->a(Lcom/netease/mpay/sharer/a;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/sharer/a$a;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/mpay/sharer/a$a;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/sharer/a$a;->b:Landroid/os/Bundle;

    const-string v1, "targetUrl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/sharer/a$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "title are required"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/sharer/a$a;->b:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/a$a;->b:Landroid/os/Bundle;

    const-string v1, "summary"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
