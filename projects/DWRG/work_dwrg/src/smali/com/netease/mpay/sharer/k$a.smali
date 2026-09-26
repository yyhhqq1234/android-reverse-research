.class public Lcom/netease/mpay/sharer/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/sharer/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/sharer/k;

.field private b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/sharer/k;Lcom/netease/mpay/sharer/ShareContent;)V
    .locals 4

    const/4 v2, 0x2

    iput-object p1, p0, Lcom/netease/mpay/sharer/k$a;->a:Lcom/netease/mpay/sharer/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget v0, p2, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/netease/mpay/sharer/k;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dK:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/netease/mpay/sharer/ShareContent;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/netease/mpay/sharer/ShareContent;->desc:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/sharer/ShareContent;->webUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/netease/mpay/sharer/k$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/sharer/k$a;

    :goto_0
    iget-object v0, p2, Lcom/netease/mpay/sharer/ShareContent;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netease/mpay/sharer/ShareContent;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/sharer/k$a;->b(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/k$a;

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/sharer/k$a;->b()V

    iget-object v0, p2, Lcom/netease/mpay/sharer/ShareContent;->webUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/netease/mpay/sharer/ShareContent;->webUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/sharer/k$a;->a(Ljava/lang/String;)Lcom/netease/mpay/sharer/k$a;

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    invoke-static {}, Lcom/sina/weibo/sdk/utils/Utility;->generateGUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->identify:Ljava/lang/String;

    iget-object v0, p2, Lcom/netease/mpay/sharer/ShareContent;->title:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/mpay/sharer/ShareContent;->desc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/mpay/sharer/k$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/sharer/k$a;

    iget-object v0, p2, Lcom/netease/mpay/sharer/ShareContent;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/sharer/k$a;->a(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/k$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p2, Lcom/netease/mpay/sharer/ShareContent;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/sharer/k$a;->b(Ljava/lang/String;)Lcom/netease/mpay/sharer/k$a;

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v1, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v1, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v1, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v1, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no sutiable object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/k$a;
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/16 v0, 0x96

    invoke-static {p1, v0}, Lcom/netease/mpay/sharer/f;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v1, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/mpay/sharer/k$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    iput-object p1, v0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->actionUrl:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/sharer/k$a;
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "title and msg are required"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    iput-object p1, v0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v0, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    iput-object p2, v0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->description:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    return-object v0
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/k$a;
    .locals 2

    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/sharer/k$a;
    .locals 2

    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    iput-object p1, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/sharer/k$a;
    .locals 2

    new-instance v0, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>()V

    iput-object p1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    iput-object p2, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/sharer/k$a;->b:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    return-object p0
.end method
