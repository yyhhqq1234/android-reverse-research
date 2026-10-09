.class public final Lcom/netease/mobile/link/c6;
.super Lcom/netease/mobile/link/t4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/t4<",
        "Lcom/netease/mobile/link/d6;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/f6$a;Lcom/netease/mobile/link/b5;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/bind_mobile/v3/client/update"

    invoke-direct {p0, v0, v1}, Lcom/netease/mobile/link/t4;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/netease/mobile/link/b5;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobile/link/c6;->g:Ljava/lang/String;

    invoke-static {p2}, Lcom/netease/mobile/link/c6;->a(Lcom/netease/mobile/link/b5;)I

    move-result p2

    iput p2, p0, Lcom/netease/mobile/link/c6;->h:I

    iget-object p2, p1, Lcom/netease/mobile/link/f6$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/c6;->c:Ljava/lang/String;

    iget-object p2, p1, Lcom/netease/mobile/link/f6$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/c6;->d:Ljava/lang/String;

    iget-object p2, p1, Lcom/netease/mobile/link/f6$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/c6;->e:Ljava/lang/String;

    iget-object p2, p1, Lcom/netease/mobile/link/f6$a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/c6;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mobile/link/f6$a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mobile/link/c6;->p:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/netease/mobile/link/b5;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubFlowType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MobileLink"

    .line 1
    invoke-static {v1, p0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mobile/link/c6;
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/mobile/link/c6;->j:I

    iput-object p1, p0, Lcom/netease/mobile/link/c6;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/c6;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mobile/link/c6;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/mobile/link/c6;->j:I

    iput-object p1, p0, Lcom/netease/mobile/link/c6;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mobile/link/c6;->n:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mobile/link/c6;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    .line 2
    new-instance v0, Lcom/netease/mobile/link/d6;

    invoke-direct {v0}, Lcom/netease/mobile/link/d6;-><init>()V

    const-string v1, "code"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "mask_bound_mobile_num"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mobile/link/d6;->a:Ljava/lang/String;

    const-string v1, "need_guide_update"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/mobile/link/d6;->b:I

    const-string v1, "verify_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/mobile/link/d6;->c:I

    const-string v1, "unique_history_mask_mobile_num"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mobile/link/d6;->e:Ljava/lang/String;

    const-string v1, "update_ticket"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/mobile/link/d6;->d:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->c:Ljava/lang/String;

    const-string v3, "user_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->g:Ljava/lang/String;

    const-string v3, "scene"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget v2, p0, Lcom/netease/mobile/link/c6;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sub_flow"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->d:Ljava/lang/String;

    const-string v3, "token"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/mobile/link/c6;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->i:Ljava/lang/String;

    const-string v3, "prev_mobile_num"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/netease/mobile/link/c6;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->p:Ljava/lang/String;

    const-string v3, "forceupdate_ticket"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lcom/netease/mobile/link/m;

    iget v2, p0, Lcom/netease/mobile/link/c6;->j:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bind_type"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/netease/mobile/link/c6;->j:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->n:Ljava/lang/String;

    const-string v3, "yd_token"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->m:Ljava/lang/String;

    const-string v3, "yd_business_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->o:Ljava/lang/String;

    const-string v3, "yd_access_token"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    const-string v3, "sms_code"

    if-eq v2, v1, :cond_5

    const/4 v2, 0x5

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne v2, v1, :cond_4

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->k:Ljava/lang/String;

    const-string v4, "mobile_num"

    invoke-direct {v1, v4, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->l:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x7

    if-ne v2, v1, :cond_6

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->q:Ljava/lang/String;

    const-string v3, "face_token"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_1
    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->l:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/netease/mobile/link/c6;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/netease/mobile/link/c6;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->e:Ljava/lang/String;

    const-string v3, "role_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mobile/link/m;

    iget-object v2, p0, Lcom/netease/mobile/link/c6;->f:Ljava/lang/String;

    const-string v3, "host_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mobile/link/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method public final c()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSubFlowType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MobileLink"

    .line 1
    invoke-static {v2, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput v1, p0, Lcom/netease/mobile/link/c6;->h:I

    return-void
.end method
