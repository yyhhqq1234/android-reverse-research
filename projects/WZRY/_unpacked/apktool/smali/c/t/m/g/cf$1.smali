.class final Lc/t/m/g/cf$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/cf;


# direct methods
.method constructor <init>(Lc/t/m/g/cf;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lc/t/m/g/cf$1;->a:Lc/t/m/g/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 33
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc/t/m/g/cf$1;->a:Lc/t/m/g/cf;

    iget-object v1, v1, Lc/t/m/g/cf;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-static {v0}, Lc/t/m/g/f$a;->a(Ljava/io/File;)[B

    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 39
    iget-object v2, p0, Lc/t/m/g/cf$1;->a:Lc/t/m/g/cf;

    iget-object v2, v2, Lc/t/m/g/cf;->c:Lc/t/m/g/cj;

    const-string v3, "http://ue.indoorloc.map.qq.com/?sf"

    invoke-virtual {v2, v3, v1}, Lc/t/m/g/cj;->a(Ljava/lang/String;[B)Ljava/lang/String;

    .line 41
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 42
    const-string v1, "DCUpload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "upload "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " succeed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v1, "DCUpload"

    const-string/jumbo v2, "upload error"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
