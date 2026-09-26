.class public Lcom/netease/mobsecurity/factory/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/netease/mobsecurity/factory/JNIFactory;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/netease/mobsecurity/factory/JNIFactory;->getInstance()Lcom/netease/mobsecurity/factory/JNIFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobsecurity/factory/a;->a:Lcom/netease/mobsecurity/factory/JNIFactory;

    iput-object p1, p0, Lcom/netease/mobsecurity/factory/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/netease/mobsecurity/factory/a;->a:Lcom/netease/mobsecurity/factory/JNIFactory;

    iget-object v1, p0, Lcom/netease/mobsecurity/factory/a;->b:Landroid/content/Context;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mobsecurity/factory/JNIFactory;->w410e0e9eb51cc6b0(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(DD)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/netease/mobsecurity/factory/a;->a:Lcom/netease/mobsecurity/factory/JNIFactory;

    iget-object v1, p0, Lcom/netease/mobsecurity/factory/a;->b:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mobsecurity/factory/JNIFactory;->w6e685a9adf5af10b(Ljava/lang/Object;DD)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/mobsecurity/factory/a;->a:Lcom/netease/mobsecurity/factory/JNIFactory;

    iget-object v1, p0, Lcom/netease/mobsecurity/factory/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/netease/mobsecurity/factory/JNIFactory;->w410e0e9eb51cc6b0(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
