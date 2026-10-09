.class public final Lcom/netease/mobile/link/d5;
.super Lcom/netease/mobile/link/t4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/t4<",
        "Lcom/netease/mobile/link/q5;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/bind_mobile/v3/client/send_sms"

    invoke-direct {p0, v0, v1}, Lcom/netease/mobile/link/t4;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/netease/mobile/link/d5;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mobile/link/d5;->f:Ljava/lang/String;

    iput p4, p0, Lcom/netease/mobile/link/d5;->g:I

    iput p5, p0, Lcom/netease/mobile/link/d5;->h:I

    iget-object p2, p1, Lcom/netease/mobile/link/f6$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/d5;->c:Ljava/lang/String;

    iget-object p2, p1, Lcom/netease/mobile/link/f6$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/d5;->d:Ljava/lang/String;

    iget-object p2, p1, Lcom/netease/mobile/link/f6$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/d5;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mobile/link/f6$a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mobile/link/d5;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mobile/link/q5;

    invoke-direct {v0}, Lcom/netease/mobile/link/q5;-><init>()V

    const-string v1, "code"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/mobile/link/q5;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mobile/link/t3;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/d5;->c:Ljava/lang/String;

    const-string v3, "user_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/d5;->e:Ljava/lang/String;

    const-string v3, "scene"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/d5;->f:Ljava/lang/String;

    const-string v3, "mobile_num"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/d5;->d:Ljava/lang/String;

    const-string v3, "token"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/mobile/link/d5;->g:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "send_type"

    invoke-direct {v1, v4, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/mobile/link/d5;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "use_type"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/mobile/link/d5;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/mobile/link/d5;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/d5;->i:Ljava/lang/String;

    const-string v3, "role_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/d5;->j:Ljava/lang/String;

    const-string v3, "host_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
