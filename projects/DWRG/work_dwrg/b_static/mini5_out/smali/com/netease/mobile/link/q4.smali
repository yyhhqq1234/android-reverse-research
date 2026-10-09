.class public final Lcom/netease/mobile/link/q4;
.super Lcom/netease/mobile/link/t4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/t4<",
        "Lcom/netease/mobile/link/r4;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "/api/bind_mobile/v3/client/query_v2"

    invoke-direct {p0, v0, v1}, Lcom/netease/mobile/link/t4;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/netease/mobile/link/q4;->f:Ljava/lang/String;

    iget-object p2, p1, Lcom/netease/mobile/link/f6$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/q4;->c:Ljava/lang/String;

    iget-boolean p2, p1, Lcom/netease/mobile/link/f6$a;->f:Z

    iput-boolean p2, p0, Lcom/netease/mobile/link/q4;->d:Z

    iget-object p2, p1, Lcom/netease/mobile/link/f6$a;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/q4;->e:Ljava/lang/String;

    iget-object p2, p1, Lcom/netease/mobile/link/f6$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/q4;->g:Ljava/lang/String;

    iget-object p2, p1, Lcom/netease/mobile/link/f6$a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/q4;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mobile/link/f6$a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mobile/link/q4;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mobile/link/r4;

    invoke-direct {v0}, Lcom/netease/mobile/link/r4;-><init>()V

    const-string v1, "code"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v1, "mask_bound_mobile_num"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mobile/link/r4;->a:Ljava/lang/String;

    const-string v1, "mask_history_mobile_num"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mobile/link/r4;->b:Ljava/lang/String;

    const-string v1, "login_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/mobile/link/r4;->c:I

    const-string v1, "need_reverify_bound_mobile"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/mobile/link/r4;->d:I

    const-string v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mobile/link/r4;->e:Ljava/lang/String;

    const-string v1, "user_bind_status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/netease/mobile/link/r4;->f:I

    return-object v0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 4
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

    iget-object v2, p0, Lcom/netease/mobile/link/q4;->c:Ljava/lang/String;

    const-string v3, "user_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/q4;->f:Ljava/lang/String;

    const-string v3, "scene"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/netease/mobile/link/q4;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/q4;->e:Ljava/lang/String;

    const-string v3, "ticket"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/q4;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "chl_verify_str"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/mobile/link/q4;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/q4;->i:Ljava/lang/String;

    const-string v3, "forceupdate_ticket"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/netease/mobile/link/q4;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netease/mobile/link/q4;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/q4;->g:Ljava/lang/String;

    const-string v3, "role_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/q4;->h:Ljava/lang/String;

    const-string v3, "host_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
