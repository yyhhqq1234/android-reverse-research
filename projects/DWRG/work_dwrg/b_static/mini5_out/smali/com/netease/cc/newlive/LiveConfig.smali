.class public Lcom/netease/cc/newlive/LiveConfig;
.super Ljava/lang/Object;
.source "LiveConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/newlive/LiveConfig$Builder;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/media/projection/MediaProjection;

.field private l:I

.field private m:Lcom/netease/cc/newlive/RenderRect;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:J

.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method private constructor <init>(Lcom/netease/cc/newlive/LiveConfig$Builder;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    .line 20
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    .line 22
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->c:I

    .line 24
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->d:I

    .line 26
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->e:I

    .line 28
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    .line 30
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    .line 32
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    const-string v1, ""

    .line 34
    iput-object v1, p0, Lcom/netease/cc/newlive/LiveConfig;->i:Ljava/lang/String;

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/netease/cc/newlive/LiveConfig;->j:Ljava/util/List;

    const/4 v2, 0x3

    .line 40
    iput v2, p0, Lcom/netease/cc/newlive/LiveConfig;->l:I

    .line 42
    iput-object v1, p0, Lcom/netease/cc/newlive/LiveConfig;->m:Lcom/netease/cc/newlive/RenderRect;

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/netease/cc/newlive/LiveConfig;->n:Z

    .line 46
    iput-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig;->o:Z

    .line 48
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->p:I

    const-wide/16 v2, 0x0

    .line 50
    iput-wide v2, p0, Lcom/netease/cc/newlive/LiveConfig;->q:J

    .line 54
    iput-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig;->s:Z

    .line 57
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->a(Lcom/netease/cc/newlive/LiveConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    .line 58
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->b(Lcom/netease/cc/newlive/LiveConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->i:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->c(Lcom/netease/cc/newlive/LiveConfig$Builder;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->k:Landroid/media/projection/MediaProjection;

    .line 60
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->d(Lcom/netease/cc/newlive/LiveConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->l:I

    .line 61
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->e(Lcom/netease/cc/newlive/LiveConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig;->n:Z

    .line 62
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->f(Lcom/netease/cc/newlive/LiveConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig;->o:Z

    .line 63
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->g(Lcom/netease/cc/newlive/LiveConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig;->s:Z

    .line 64
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->h(Lcom/netease/cc/newlive/LiveConfig$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/cc/newlive/LiveConfig$Builder;->copyMultiPushUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->j:Ljava/util/List;

    .line 66
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->i(Lcom/netease/cc/newlive/LiveConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->c:I

    .line 67
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->j(Lcom/netease/cc/newlive/LiveConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->d:I

    .line 68
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->k(Lcom/netease/cc/newlive/LiveConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->e:I

    .line 69
    invoke-direct {p0, p1}, Lcom/netease/cc/newlive/LiveConfig;->a(Lcom/netease/cc/newlive/LiveConfig$Builder;)V

    .line 70
    iget-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->m:Lcom/netease/cc/newlive/RenderRect;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/netease/cc/newlive/RenderRect$Builder;

    invoke-direct {v0}, Lcom/netease/cc/newlive/RenderRect$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/RenderRect$Builder;->withType(I)Lcom/netease/cc/newlive/RenderRect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/newlive/RenderRect$Builder;->build()Lcom/netease/cc/newlive/RenderRect;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->m:Lcom/netease/cc/newlive/RenderRect;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->m:Lcom/netease/cc/newlive/RenderRect;

    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->l(Lcom/netease/cc/newlive/LiveConfig$Builder;)Lcom/netease/cc/newlive/RenderRect;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/cc/newlive/RenderRect;->copy(Lcom/netease/cc/newlive/RenderRect;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/cc/newlive/LiveConfig$Builder;Lcom/netease/cc/newlive/LiveConfig$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/netease/cc/newlive/LiveConfig;-><init>(Lcom/netease/cc/newlive/LiveConfig$Builder;)V

    return-void
.end method

.method private a(Lcom/netease/cc/newlive/LiveConfig$Builder;)V
    .locals 9

    .line 76
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->l:I

    const/16 v1, 0x4b0

    const/16 v2, 0x14

    const/16 v3, 0xf

    const/16 v4, 0x438

    const/16 v5, 0x500

    const/16 v6, 0x280

    const/16 v7, 0x2d0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    .line 126
    iput v2, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    .line 127
    iput v1, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    .line 128
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    if-ne p1, v8, :cond_c

    const/16 p1, 0x2d0

    goto/16 :goto_a

    :pswitch_0
    const/16 p1, 0x1e

    .line 113
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    const/16 p1, 0xfa0

    .line 114
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    .line 115
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    if-ne p1, v8, :cond_0

    const/16 p1, 0x500

    goto :goto_0

    :cond_0
    const/16 p1, 0x2d0

    :goto_0
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    .line 116
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    if-ne p1, v8, :cond_1

    const/16 v5, 0x2d0

    :cond_1
    iput v5, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    goto/16 :goto_c

    :pswitch_1
    const/16 p1, 0x19

    .line 106
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    const/16 p1, 0x9c4

    .line 107
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    .line 108
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    if-ne p1, v8, :cond_2

    const/16 p1, 0x500

    goto :goto_1

    :cond_2
    const/16 p1, 0x438

    :goto_1
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    .line 109
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    if-ne p1, v8, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x500

    :goto_2
    iput v4, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    goto/16 :goto_c

    .line 99
    :pswitch_2
    iput v2, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    const/16 p1, 0x7d0

    .line 100
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    .line 101
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    if-ne p1, v8, :cond_4

    const/16 p1, 0x500

    goto :goto_3

    :cond_4
    const/16 p1, 0x438

    :goto_3
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    .line 102
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    if-ne p1, v8, :cond_5

    goto :goto_4

    :cond_5
    const/16 v4, 0x500

    :goto_4
    iput v4, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    goto/16 :goto_c

    .line 92
    :pswitch_3
    iput v3, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    const/16 p1, 0x5dc

    .line 93
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    .line 94
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    const/16 v0, 0x3c0

    if-ne p1, v8, :cond_6

    const/16 p1, 0x3c0

    goto :goto_5

    :cond_6
    const/16 p1, 0x2d0

    :goto_5
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    .line 95
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    if-ne p1, v8, :cond_7

    const/16 v0, 0x2d0

    :cond_7
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    goto :goto_c

    .line 85
    :pswitch_4
    iput v3, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    .line 86
    iput v1, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    .line 87
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    if-ne p1, v8, :cond_8

    const/16 p1, 0x2d0

    goto :goto_6

    :cond_8
    const/16 p1, 0x280

    :goto_6
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    .line 88
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    if-ne p1, v8, :cond_9

    goto :goto_7

    :cond_9
    const/16 v6, 0x2d0

    :goto_7
    iput v6, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    goto :goto_c

    .line 78
    :pswitch_5
    iput v3, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    const/16 p1, 0x320

    .line 79
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    .line 80
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    const/16 v0, 0x1e0

    if-ne p1, v8, :cond_a

    const/16 p1, 0x280

    goto :goto_8

    :cond_a
    const/16 p1, 0x1e0

    :goto_8
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    .line 81
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    if-ne p1, v8, :cond_b

    goto :goto_9

    :cond_b
    const/16 v0, 0x280

    :goto_9
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    goto :goto_c

    .line 119
    :pswitch_6
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->m(Lcom/netease/cc/newlive/LiveConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    .line 120
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->n(Lcom/netease/cc/newlive/LiveConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    .line 121
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->o(Lcom/netease/cc/newlive/LiveConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    .line 122
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->p(Lcom/netease/cc/newlive/LiveConfig$Builder;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    goto :goto_c

    :cond_c
    const/16 p1, 0x280

    .line 128
    :goto_a
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    .line 129
    iget p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    if-ne p1, v8, :cond_d

    goto :goto_b

    :cond_d
    const/16 v6, 0x2d0

    :goto_b
    iput v6, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearCandidatePushUrls()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->j:Ljava/util/List;

    const-string v0, "[multi_pushurl]"

    const-string v1, "clear candidate"

    .line 262
    invoke-static {v0, v1}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGF(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public copy(Lcom/netease/cc/newlive/LiveConfig;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    iget v0, p1, Lcom/netease/cc/newlive/LiveConfig;->a:I

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    .line 140
    iget v0, p1, Lcom/netease/cc/newlive/LiveConfig;->b:I

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    .line 141
    iget v0, p1, Lcom/netease/cc/newlive/LiveConfig;->c:I

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->c:I

    .line 142
    iget v0, p1, Lcom/netease/cc/newlive/LiveConfig;->d:I

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->d:I

    .line 143
    iget v0, p1, Lcom/netease/cc/newlive/LiveConfig;->e:I

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->e:I

    .line 144
    iget v0, p1, Lcom/netease/cc/newlive/LiveConfig;->l:I

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->l:I

    .line 145
    iget v0, p1, Lcom/netease/cc/newlive/LiveConfig;->f:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    :goto_0
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    .line 146
    iget v0, p1, Lcom/netease/cc/newlive/LiveConfig;->g:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    :goto_1
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    .line 147
    iget v0, p1, Lcom/netease/cc/newlive/LiveConfig;->h:I

    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    .line 148
    iget-boolean v0, p1, Lcom/netease/cc/newlive/LiveConfig;->s:Z

    iput-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig;->s:Z

    .line 149
    iget-object v0, p1, Lcom/netease/cc/newlive/LiveConfig;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->i:Ljava/lang/String;

    .line 150
    iget-object v0, p1, Lcom/netease/cc/newlive/LiveConfig;->k:Landroid/media/projection/MediaProjection;

    iput-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->k:Landroid/media/projection/MediaProjection;

    .line 151
    iget-boolean v0, p1, Lcom/netease/cc/newlive/LiveConfig;->n:Z

    iput-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig;->n:Z

    .line 152
    iget-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->m:Lcom/netease/cc/newlive/RenderRect;

    iget-object v1, p1, Lcom/netease/cc/newlive/LiveConfig;->m:Lcom/netease/cc/newlive/RenderRect;

    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/RenderRect;->copy(Lcom/netease/cc/newlive/RenderRect;)V

    .line 153
    iget-boolean v0, p1, Lcom/netease/cc/newlive/LiveConfig;->o:Z

    iput-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig;->o:Z

    .line 154
    iget-object p1, p1, Lcom/netease/cc/newlive/LiveConfig;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->copyMultiPushUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/newlive/LiveConfig;->j:Ljava/util/List;

    return-void
.end method

.method public getCandidatePushUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->j:Ljava/util/List;

    return-object v0
.end method

.method public getConMicSessionId()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getConMicTag()J
    .locals 2

    .line 280
    iget-wide v0, p0, Lcom/netease/cc/newlive/LiveConfig;->q:J

    return-wide v0
.end method

.method public getConmic()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->p:I

    return v0
.end method

.method public getFps()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    return v0
.end method

.method public getInputHeight()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->d:I

    return v0
.end method

.method public getInputWidth()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->c:I

    return v0
.end method

.method public getMainStreamRenderRect()Lcom/netease/cc/newlive/RenderRect;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->m:Lcom/netease/cc/newlive/RenderRect;

    return-object v0
.end method

.method public final getMediaProjection()Landroid/media/projection/MediaProjection;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->k:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method public getMuteAudio()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig;->s:Z

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    return v0
.end method

.method public getPushUrl()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenDpi()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->e:I

    return v0
.end method

.method public getVbr()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    return v0
.end method

.method public getVideoQuality()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->l:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    return v0
.end method

.method public isAutoReconnect()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig;->o:Z

    return v0
.end method

.method public isMatchVideoSizeWithScreen()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig;->n:Z

    return v0
.end method

.method public removeCandidatePushUrl(Ljava/lang/String;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/netease/cc/newlive/LiveConfig;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setConMicSessionId(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/netease/cc/newlive/LiveConfig;->r:Ljava/lang/String;

    return-void
.end method

.method public setConMicTag(J)V
    .locals 0

    .line 272
    iput-wide p1, p0, Lcom/netease/cc/newlive/LiveConfig;->q:J

    return-void
.end method

.method public setConmic(I)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->p:I

    return-void
.end method

.method public setFps(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    return-void
.end method

.method public setInputSize(II)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->c:I

    .line 216
    iput p2, p0, Lcom/netease/cc/newlive/LiveConfig;->d:I

    return-void
.end method

.method public setInputSize(III)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->c:I

    .line 221
    iput p2, p0, Lcom/netease/cc/newlive/LiveConfig;->d:I

    .line 222
    iput p3, p0, Lcom/netease/cc/newlive/LiveConfig;->e:I

    return-void
.end method

.method public setMuteAudio(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/netease/cc/newlive/LiveConfig;->s:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    return-void
.end method

.method public setPushUrl(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/netease/cc/newlive/LiveConfig;->i:Ljava/lang/String;

    return-void
.end method

.method public setVbr(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    .line 203
    iput p2, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inputW("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/LiveConfig;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") inputH("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/LiveConfig;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") inputDpi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/LiveConfig;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")  videoConfig: w("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/LiveConfig;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") h:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/LiveConfig;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") fps("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/LiveConfig;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") vbr("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/LiveConfig;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") quality("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/LiveConfig;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") orientation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/LiveConfig;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") matchVideoSizeWithScreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/cc/newlive/LiveConfig;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") pushurl("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cc/newlive/LiveConfig;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
