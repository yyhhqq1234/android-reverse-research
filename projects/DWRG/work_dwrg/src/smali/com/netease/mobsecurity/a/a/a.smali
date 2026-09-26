.class public Lcom/netease/mobsecurity/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mobsecurity/a/a/b;


# instance fields
.field a:Lcom/netease/mobsecurity/factory/a;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mobsecurity/a/a/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/netease/mobsecurity/factory/a;

    invoke-direct {v0, p1}, Lcom/netease/mobsecurity/factory/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mobsecurity/a/a/a;->a:Lcom/netease/mobsecurity/factory/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsecurity/a/a/a;->a:Lcom/netease/mobsecurity/factory/a;

    invoke-virtual {v0}, Lcom/netease/mobsecurity/factory/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(DD)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsecurity/a/a/a;->a:Lcom/netease/mobsecurity/factory/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/mobsecurity/factory/a;->a(DD)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/mobsecurity/a/a/a;->a:Lcom/netease/mobsecurity/factory/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/netease/mobsecurity/factory/a;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
