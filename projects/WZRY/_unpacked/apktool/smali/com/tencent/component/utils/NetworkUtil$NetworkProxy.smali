.class public Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;
.super Ljava/lang/Object;
.source "NetworkUtil.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkProxy"
.end annotation


# instance fields
.field public final host:Ljava/lang/String;

.field public final port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->host:Ljava/lang/String;

    .line 64
    iput p2, p0, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->port:I

    .line 65
    return-void
.end method


# virtual methods
.method final copy()Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;
    .locals 2

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 83
    if-ne p0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;

    .line 88
    .local v0, "proxy":Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;
    iget-object v2, p0, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->host:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->host:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->port:I

    iget v3, v0, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->port:I

    if-eq v2, v3, :cond_0

    .line 92
    .end local v0    # "proxy":Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
