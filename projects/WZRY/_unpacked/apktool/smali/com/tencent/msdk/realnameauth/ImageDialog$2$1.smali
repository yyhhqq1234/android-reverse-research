.class Lcom/tencent/msdk/realnameauth/ImageDialog$2$1;
.super Ljava/lang/Object;
.source "ImageDialog.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/realnameauth/ImageDialog$2;->callback(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/msdk/realnameauth/ImageDialog$2;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/realnameauth/ImageDialog$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/msdk/realnameauth/ImageDialog$2;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$2$1;->this$1:Lcom/tencent/msdk/realnameauth/ImageDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 240
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog$2$1;->this$1:Lcom/tencent/msdk/realnameauth/ImageDialog$2;

    iget-object v1, v1, Lcom/tencent/msdk/realnameauth/ImageDialog$2;->val$imageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
