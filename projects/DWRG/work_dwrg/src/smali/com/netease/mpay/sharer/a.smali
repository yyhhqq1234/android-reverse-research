.class public Lcom/netease/mpay/sharer/a;
.super Lcom/netease/mpay/sharer/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/sharer/a$c;,
        Lcom/netease/mpay/sharer/a$b;,
        Lcom/netease/mpay/sharer/a$a;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Lcom/tencent/tauth/Tencent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/sharer/e;-><init>()V

    invoke-static {p1}, Lcom/netease/mpay/sharer/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/sharer/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/sharer/a;->b:Lcom/tencent/tauth/Tencent;

    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/sharer/a;->a:Landroid/app/Activity;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/mpay/e/c/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/sharer/a;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/sharer/a;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/netease/mpay/sharer/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    const-string v0, "com.tencent.connect.common.Constants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SDK_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "3.3.0.lite"

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.tencent.mobileqq"

    invoke-static {p0, v0}, Lcom/netease/mpay/sharer/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netease/mpay/sharer/a;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/netease/mpay/sharer/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netease/mpay/sharer/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/netease/mpay/sharer/ShareContent;I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/mpay/sharer/a;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/netease/mpay/sharer/a;->c(Landroid/content/Context;)Z

    move-result v2

    const/16 v3, 0x69

    if-ne p2, v3, :cond_2

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/sharer/a;->b:Lcom/tencent/tauth/Tencent;

    iget-object v2, p0, Lcom/netease/mpay/sharer/a;->a:Landroid/app/Activity;

    new-instance v3, Lcom/netease/mpay/sharer/a$a;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/sharer/a$a;-><init>(Lcom/netease/mpay/sharer/a;Lcom/netease/mpay/sharer/ShareContent;)V

    invoke-virtual {v3}, Lcom/netease/mpay/sharer/a$a;->a()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/sharer/a$c;

    iget-object v5, p0, Lcom/netease/mpay/sharer/a;->a:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/netease/mpay/sharer/a$c;-><init>(Lcom/netease/mpay/sharer/a;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v3, 0x6a

    if-ne p2, v3, :cond_4

    iget v3, p1, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/netease/mpay/sharer/a;->b:Lcom/tencent/tauth/Tencent;

    iget-object v2, p0, Lcom/netease/mpay/sharer/a;->a:Landroid/app/Activity;

    new-instance v3, Lcom/netease/mpay/sharer/a$b;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/sharer/a$b;-><init>(Lcom/netease/mpay/sharer/a;Lcom/netease/mpay/sharer/ShareContent;)V

    invoke-virtual {v3}, Lcom/netease/mpay/sharer/a$b;->a()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/sharer/a$c;

    iget-object v5, p0, Lcom/netease/mpay/sharer/a;->a:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/netease/mpay/sharer/a$c;-><init>(Lcom/netease/mpay/sharer/a;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/netease/mpay/sharer/UrlShareContent;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?summary=\u7f51\u6613\u6e38\u620f&url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/mpay/sharer/ShareContent;->webUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/mpay/sharer/ShareContent;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&desc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/mpay/sharer/ShareContent;->desc:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/netease/mpay/sharer/UrlShareContent;

    iget-object v2, p1, Lcom/netease/mpay/sharer/UrlShareContent;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/sharer/a;->a:Landroid/app/Activity;

    sget-object v3, Lcom/netease/mpay/b$a;->M:Lcom/netease/mpay/b$a;

    new-instance v4, Lcom/netease/mpay/b/ac;

    invoke-direct {v4, v1}, Lcom/netease/mpay/b/ac;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4, v5, v5}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method
