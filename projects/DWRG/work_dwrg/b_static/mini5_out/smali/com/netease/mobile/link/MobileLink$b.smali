.class public final Lcom/netease/mobile/link/MobileLink$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/r3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/MobileLink;->linkMobile(ILcom/netease/mobile/link/UserData;Lcom/netease/mobile/link/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/Callback;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/MobileLink$b;->a:Lcom/netease/mobile/link/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mobile/link/MobileLink$b;->a:Lcom/netease/mobile/link/Callback;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/mobile/link/Callback;->onFinish(II)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileLinkInnerCallback onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x67

    if-eq p1, v0, :cond_0

    const/16 p1, 0x3e7

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/netease/mobile/link/MobileLink$b;->a:Lcom/netease/mobile/link/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/netease/mobile/link/Callback;->onFinish(II)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileLinkInnerCallback onSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileLink"

    .line 3
    invoke-static {v0, p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/netease/mobile/link/MobileLink$b;->a:Lcom/netease/mobile/link/Callback;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/netease/mobile/link/Callback;->onFinish(II)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mobile/link/MobileLink$b;->a:Lcom/netease/mobile/link/Callback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/mobile/link/Callback;->onFinish(II)V

    return-void
.end method
