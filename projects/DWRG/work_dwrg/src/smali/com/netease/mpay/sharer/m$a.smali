.class public Lcom/netease/mpay/sharer/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/sharer/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lim/yixin/sdk/api/YXMessage;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lim/yixin/sdk/api/YXMessage;

    invoke-direct {v0}, Lim/yixin/sdk/api/YXMessage;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/sharer/m$a;->a:Lim/yixin/sdk/api/YXMessage;

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

.method public constructor <init>(Lcom/netease/mpay/sharer/ShareContent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lim/yixin/sdk/api/YXMessage;

    invoke-direct {v0}, Lim/yixin/sdk/api/YXMessage;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/sharer/m$a;->a:Lim/yixin/sdk/api/YXMessage;

    iget v0, p1, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/sharer/ShareContent;->webUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/sharer/m$a;->a(Ljava/lang/String;)Lcom/netease/mpay/sharer/m$a;

    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/netease/mpay/sharer/ShareContent;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/sharer/ShareContent;->desc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/mpay/sharer/m$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/sharer/m$a;

    iget-object v0, p1, Lcom/netease/mpay/sharer/ShareContent;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/sharer/m$a;->a(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/m$a;

    return-void

    :cond_1
    iget v0, p1, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/netease/mpay/sharer/ShareContent;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/sharer/m$a;->b(Ljava/lang/String;)Lcom/netease/mpay/sharer/m$a;

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/sharer/ShareContent;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/sharer/m$a;->b(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/m$a;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/m$a;
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/16 v0, 0x96

    invoke-static {p1, v0}, Lcom/netease/mpay/sharer/f;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/sharer/m$a;->a:Lim/yixin/sdk/api/YXMessage;

    const v2, 0x8000

    invoke-static {v0, v2}, Lcom/netease/mpay/sharer/f;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    iput-object v0, v1, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/mpay/sharer/m$a;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/sharer/m$a;->a:Lim/yixin/sdk/api/YXMessage;

    new-instance v1, Lim/yixin/sdk/api/YXWebPageMessageData;

    invoke-direct {v1, p1}, Lim/yixin/sdk/api/YXWebPageMessageData;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/sharer/m$a;
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "title and msg are required"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/sharer/m$a;->a:Lim/yixin/sdk/api/YXMessage;

    iput-object p1, v0, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/sharer/m$a;->a:Lim/yixin/sdk/api/YXMessage;

    iput-object p2, v0, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lim/yixin/sdk/api/YXMessage;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/sharer/m$a;->a:Lim/yixin/sdk/api/YXMessage;

    return-object v0
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/m$a;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/sharer/m$a;->a:Lim/yixin/sdk/api/YXMessage;

    new-instance v1, Lim/yixin/sdk/api/YXImageMessageData;

    invoke-direct {v1, p1}, Lim/yixin/sdk/api/YXImageMessageData;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/sharer/m$a;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/sharer/m$a;->a:Lim/yixin/sdk/api/YXMessage;

    new-instance v1, Lim/yixin/sdk/api/YXTextMessageData;

    invoke-direct {v1, p1}, Lim/yixin/sdk/api/YXTextMessageData;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    return-object p0
.end method
