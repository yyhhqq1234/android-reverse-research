.class public Lcom/netease/mpay/User;
.super Ljava/lang/Object;


# static fields
.field public static final MOBILE_BIND_BLANK:I = 0x1

.field public static final MOBILE_BIND_MULTIPLE:I = 0x3

.field public static final MOBILE_BIND_SINGLE:I = 0x2

.field public static final MOBILE_BIND_UNKNOWN:I


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public devId:Ljava/lang/String;

.field public mobileBindStatus:I

.field public nickname:Ljava/lang/String;

.field public originGuestUid:Ljava/lang/String;

.field public realnameSet:Z

.field public token:Ljava/lang/String;

.field public type:I

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/b/ao;)V
    .locals 10

    iget-object v1, p1, Lcom/netease/mpay/b/ao;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/b/ao;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/b/ao;->e:Ljava/lang/String;

    iget v4, p1, Lcom/netease/mpay/b/ao;->f:I

    iget-object v5, p1, Lcom/netease/mpay/b/ao;->g:Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/b/ao;->i:Ljava/lang/String;

    iget-object v7, p1, Lcom/netease/mpay/b/ao;->j:Ljava/lang/String;

    iget-boolean v8, p1, Lcom/netease/mpay/b/ao;->k:Z

    iget v9, p1, Lcom/netease/mpay/b/ao;->l:I

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/netease/mpay/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/e/b/o;)V
    .locals 10

    iget-object v2, p2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget v4, p2, Lcom/netease/mpay/e/b/o;->f:I

    iget-object v5, p2, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v6, p2, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    iget-object v7, p2, Lcom/netease/mpay/e/b/o;->i:Ljava/lang/String;

    iget-boolean v8, p2, Lcom/netease/mpay/e/b/o;->j:Z

    iget v9, p2, Lcom/netease/mpay/e/b/o;->k:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/netease/mpay/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 10

    iget-object v2, p2, Lcom/netease/mpay/server/response/m;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/server/response/m;->a:Ljava/lang/String;

    iget v4, p2, Lcom/netease/mpay/server/response/m;->c:I

    iget-object v5, p2, Lcom/netease/mpay/server/response/m;->d:Ljava/lang/String;

    iget-object v6, p2, Lcom/netease/mpay/server/response/m;->e:Ljava/lang/String;

    iget-object v7, p2, Lcom/netease/mpay/server/response/m;->f:Ljava/lang/String;

    iget-boolean v8, p2, Lcom/netease/mpay/server/response/m;->g:Z

    iget v9, p2, Lcom/netease/mpay/server/response/m;->h:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/netease/mpay/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/User;->devId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/User;->uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/User;->token:Ljava/lang/String;

    iput p4, p0, Lcom/netease/mpay/User;->type:I

    iput-object p5, p0, Lcom/netease/mpay/User;->originGuestUid:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/User;->nickname:Ljava/lang/String;

    iput-object p7, p0, Lcom/netease/mpay/User;->avatarUrl:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/netease/mpay/User;->realnameSet:Z

    iput p9, p0, Lcom/netease/mpay/User;->mobileBindStatus:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
