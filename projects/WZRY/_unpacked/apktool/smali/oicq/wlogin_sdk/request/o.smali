.class public Loicq/wlogin_sdk/request/o;
.super Loicq/wlogin_sdk/request/oicq_request;
.source "request_checkimage.java"


# static fields
.field public static I:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Loicq/wlogin_sdk/request/o;->I:Z

    return-void
.end method

.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    .line 33
    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/o;->t:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/request/o;->u:I

    .line 35
    const-string/jumbo v0, "wtlogin.login"

    iput-object v0, p0, Loicq/wlogin_sdk/request/o;->v:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Loicq/wlogin_sdk/request/o;->x:Loicq/wlogin_sdk/request/u;

    .line 37
    iget-object v0, p0, Loicq/wlogin_sdk/request/o;->x:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 38
    return-void
.end method


# virtual methods
.method public a([BII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 16

    .prologue
    .line 81
    .line 82
    sget v10, Loicq/wlogin_sdk/request/u;->w:I

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/o;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v3

    .line 84
    iget-object v2, v3, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    .line 85
    if-nez v2, :cond_4

    .line 86
    new-instance v2, Loicq/wlogin_sdk/b/g;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/g;-><init>()V

    move-object v13, v2

    .line 88
    :goto_0
    iget-object v2, v3, Loicq/wlogin_sdk/request/async_context;->_t105:Loicq/wlogin_sdk/b/h;

    .line 89
    if-nez v2, :cond_3

    .line 90
    new-instance v2, Loicq/wlogin_sdk/b/h;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/h;-><init>()V

    move-object v14, v2

    .line 93
    :goto_1
    const/4 v2, 0x0

    move v15, v2

    .line 95
    :goto_2
    invoke-virtual {v13}, Loicq/wlogin_sdk/b/g;->c()[B

    move-result-object v3

    .line 96
    invoke-virtual {v14}, Loicq/wlogin_sdk/b/h;->g()[B

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    .line 95
    invoke-virtual/range {v2 .. v8}, Loicq/wlogin_sdk/request/o;->a([B[B[BII[J)[B

    move-result-object v12

    .line 98
    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/o;->i:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/o;->t:I

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/o;->j:I

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/o;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v2, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/o;->m:I

    move-object/from16 v0, p0

    iget v9, v0, Loicq/wlogin_sdk/request/o;->n:I

    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/o;->p:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/o;->a(IIIJIIII[B)V

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/o;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v3, v1}, Loicq/wlogin_sdk/request/o;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 103
    if-eqz v2, :cond_0

    .line 114
    :goto_3
    return v2

    .line 107
    :cond_0
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/o;->b()I

    move-result v3

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry num:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ret:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/o;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/16 v2, 0xb4

    if-eq v3, v2, :cond_1

    move v2, v3

    .line 110
    goto :goto_3

    .line 112
    :cond_1
    add-int/lit8 v2, v15, 0x1

    const/4 v4, 0x1

    if-lt v15, v4, :cond_2

    move v2, v3

    goto :goto_3

    :cond_2
    move v15, v2

    goto/16 :goto_2

    :cond_3
    move-object v14, v2

    goto/16 :goto_1

    :cond_4
    move-object v13, v2

    goto/16 :goto_0
.end method

.method public a([B[B[BII[J)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 46
    .line 47
    new-instance v0, Loicq/wlogin_sdk/b/cg;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/cg;-><init>()V

    .line 48
    new-instance v1, Loicq/wlogin_sdk/b/cr;

    invoke-direct {v1}, Loicq/wlogin_sdk/b/cr;-><init>()V

    .line 49
    new-instance v2, Loicq/wlogin_sdk/b/g;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/g;-><init>()V

    .line 50
    new-instance v3, Loicq/wlogin_sdk/b/u;

    invoke-direct {v3}, Loicq/wlogin_sdk/b/u;-><init>()V

    .line 51
    new-instance v4, Loicq/wlogin_sdk/b/cc;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cc;-><init>()V

    .line 53
    sget v5, Loicq/wlogin_sdk/request/u;->u:I

    invoke-virtual {v1, v6, v5, v6}, Loicq/wlogin_sdk/b/cr;->a(III)[B

    move-result-object v1

    .line 54
    invoke-virtual {v2, p1}, Loicq/wlogin_sdk/b/g;->a([B)[B

    move-result-object v2

    .line 55
    invoke-virtual {v3, p4, p5, p6}, Loicq/wlogin_sdk/b/u;->a(II[J)[B

    move-result-object v3

    .line 56
    new-array v5, v6, [B

    .line 57
    sget-boolean v5, Loicq/wlogin_sdk/request/o;->I:Z

    if-eqz v5, :cond_0

    .line 58
    invoke-virtual {v4, p2}, Loicq/wlogin_sdk/b/cc;->a([B)[B

    move-result-object v0

    .line 62
    :goto_0
    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v3

    add-int/2addr v4, v5

    .line 63
    new-array v4, v4, [B

    .line 66
    array-length v5, v0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    array-length v0, v0

    add-int/2addr v0, v6

    .line 68
    array-length v5, v1

    invoke-static {v1, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    array-length v1, v1

    add-int/2addr v0, v1

    .line 70
    array-length v1, v2

    invoke-static {v2, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    array-length v1, v2

    add-int/2addr v0, v1

    .line 72
    array-length v1, v3

    invoke-static {v3, v6, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    array-length v1, v3

    add-int/2addr v0, v1

    .line 74
    const/4 v0, 0x4

    .line 76
    iget v1, p0, Loicq/wlogin_sdk/request/o;->u:I

    invoke-virtual {p0, v4, v1, v0}, Loicq/wlogin_sdk/request/o;->b([BII)[B

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    invoke-virtual {v0, p2, p3}, Loicq/wlogin_sdk/b/cg;->a([B[B)[B

    move-result-object v0

    goto :goto_0
.end method
