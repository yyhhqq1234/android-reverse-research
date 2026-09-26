.class public Lcom/netease/mobsecurity/factory/b;
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

    iput-object v0, p0, Lcom/netease/mobsecurity/factory/b;->a:Lcom/netease/mobsecurity/factory/JNIFactory;

    iput-object p1, p0, Lcom/netease/mobsecurity/factory/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/netease/mobsecurity/factory/b;->a:Lcom/netease/mobsecurity/factory/JNIFactory;

    iget-object v1, p0, Lcom/netease/mobsecurity/factory/b;->b:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mobsecurity/factory/JNIFactory;->wd92f591f6307ab76(Ljava/lang/Object;[Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
