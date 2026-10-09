.class public final Lcom/netease/mobile/link/MobileLink$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobile/link/MobileLink;->showMobileLinkInUserCenter(Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mobile/link/Callback;Lcom/netease/mobile/link/relatelogin/OnRelatedLoginDisabledCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/Callback;

.field public final synthetic b:Lcom/netease/mobile/link/MobileLink;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/MobileLink;Lcom/netease/mobile/link/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/MobileLink$d;->b:Lcom/netease/mobile/link/MobileLink;

    iput-object p2, p0, Lcom/netease/mobile/link/MobileLink$d;->a:Lcom/netease/mobile/link/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMobileLinkInUserCenter onFinish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileLink"

    .line 1
    invoke-static {v1, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mobile/link/MobileLink$d;->b:Lcom/netease/mobile/link/MobileLink;

    invoke-static {v0, p1, p2}, Lcom/netease/mobile/link/MobileLink;->a(Lcom/netease/mobile/link/MobileLink;II)V

    iget-object v0, p0, Lcom/netease/mobile/link/MobileLink$d;->a:Lcom/netease/mobile/link/Callback;

    invoke-interface {v0, p1, p2}, Lcom/netease/mobile/link/Callback;->onFinish(II)V

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/netease/mobile/link/a5;->p:Z

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/netease/mobile/link/a5;->q:Lcom/netease/mobile/link/relatelogin/OnRelatedLoginDisabledCallback;

    return-void
.end method
