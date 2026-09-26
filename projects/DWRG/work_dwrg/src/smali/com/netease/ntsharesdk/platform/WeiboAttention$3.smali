.class Lcom/netease/ntsharesdk/platform/WeiboAttention$3;
.super Ljava/lang/Object;
.source "WeiboAttention.java"

# interfaces
.implements Lorg/apache/http/NameValuePair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntsharesdk/platform/WeiboAttention;->attentionViaApi(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/ntsharesdk/platform/WeiboAttention$3;->val$uid:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "uid"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/WeiboAttention$3;->val$uid:Ljava/lang/String;

    return-object v0
.end method
