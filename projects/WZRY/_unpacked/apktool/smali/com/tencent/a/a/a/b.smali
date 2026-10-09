.class public final Lcom/tencent/a/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/a/a/a/a;
    .locals 1

    const-string v0, "marker.png"

    invoke-static {v0}, Lcom/tencent/a/a/a/b;->a(Ljava/lang/String;)Lcom/tencent/a/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/tencent/a/a/a/a;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/a/a/a/a;

    invoke-direct {v0, p0}, Lcom/tencent/a/a/a/a;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/tencent/a/a/a/a;
    .locals 3

    :try_start_0
    const-class v0, Lcom/tencent/a/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/assets/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-static {v1}, Lcom/tencent/a/a/a/b;->a(Landroid/graphics/Bitmap;)Lcom/tencent/a/a/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
