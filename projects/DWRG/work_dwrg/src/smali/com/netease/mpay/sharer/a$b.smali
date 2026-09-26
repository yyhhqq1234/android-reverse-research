.class public Lcom/netease/mpay/sharer/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/sharer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/sharer/a;

.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/sharer/a;Lcom/netease/mpay/sharer/ShareContent;)V
    .locals 3

    iput-object p1, p0, Lcom/netease/mpay/sharer/a$b;->a:Lcom/netease/mpay/sharer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/sharer/a$b;->b:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/netease/mpay/sharer/a$b;->b:Landroid/os/Bundle;

    const-string v1, "req_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p2, Lcom/netease/mpay/sharer/ShareContent;->image:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/netease/mpay/sharer/a;->a(Lcom/netease/mpay/sharer/a;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/mpay/sharer/a$b;->b:Landroid/os/Bundle;

    const-string v2, "imageUrl"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p2, Lcom/netease/mpay/sharer/ShareContent;->title:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/mpay/sharer/ShareContent;->desc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/mpay/sharer/a$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/sharer/a$b;

    iget-object v0, p2, Lcom/netease/mpay/sharer/ShareContent;->webUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/sharer/a$b;->a(Ljava/lang/String;)Lcom/netease/mpay/sharer/a$b;

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
.method public a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/sharer/a$b;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/mpay/sharer/a$b;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/sharer/a$b;->b:Landroid/os/Bundle;

    const-string v1, "targetUrl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/sharer/a$b;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "title are required"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/sharer/a$b;->b:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/a$b;->b:Landroid/os/Bundle;

    const-string v1, "summary"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
