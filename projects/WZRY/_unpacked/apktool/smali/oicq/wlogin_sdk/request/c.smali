.class public Loicq/wlogin_sdk/request/c;
.super Loicq/wlogin_sdk/request/oicq_request;
.source "VerifyPTSig.java"


# instance fields
.field private I:Ljava/lang/String;


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    .line 28
    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/c;->t:I

    .line 29
    const/16 v0, 0x16

    iput v0, p0, Loicq/wlogin_sdk/request/c;->u:I

    .line 30
    const-string/jumbo v0, "wtlogin.login"

    iput-object v0, p0, Loicq/wlogin_sdk/request/c;->v:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Loicq/wlogin_sdk/request/c;->x:Loicq/wlogin_sdk/request/u;

    .line 32
    iget-object v0, p0, Loicq/wlogin_sdk/request/c;->x:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 33
    iput-object p2, p0, Loicq/wlogin_sdk/request/c;->I:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public a(IILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 121
    move v0, v1

    .line 124
    :goto_0
    invoke-virtual {p0, p1, p2}, Loicq/wlogin_sdk/request/c;->a(II)[B

    move-result-object v2

    .line 125
    iget-object v3, p0, Loicq/wlogin_sdk/request/c;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v3, Loicq/wlogin_sdk/request/u;->f:J

    iget-object v3, p0, Loicq/wlogin_sdk/request/c;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    invoke-virtual {p0, v4, v5, v2, v3}, Loicq/wlogin_sdk/request/c;->a(J[BLoicq/wlogin_sdk/request/oicq_request$EncryptionMethod;)V

    .line 126
    iget-object v2, p0, Loicq/wlogin_sdk/request/c;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p3}, Loicq/wlogin_sdk/request/c;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 127
    if-eqz v2, :cond_0

    move v0, v2

    .line 136
    :goto_1
    return v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/c;->b()I

    move-result v3

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry num:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget-object v5, p0, Loicq/wlogin_sdk/request/c;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/16 v2, 0xb4

    if-eq v3, v2, :cond_1

    move v0, v3

    .line 133
    goto :goto_1

    .line 135
    :cond_1
    add-int/lit8 v2, v0, 0x1

    const/4 v4, 0x1

    if-lt v0, v4, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public a(II)[B
    .locals 17

    .prologue
    .line 37
    const/4 v11, 0x0

    .line 38
    const/16 v2, 0xb

    new-array v13, v2, [I

    fill-array-data v13, :array_0

    .line 39
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 40
    array-length v15, v13

    .line 41
    const/4 v10, 0x0

    .line 44
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/c;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v16

    .line 45
    const/4 v2, 0x0

    move v12, v2

    :goto_0
    if-ge v12, v15, :cond_1

    .line 46
    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 47
    aget v3, v13, v12

    sparse-switch v3, :sswitch_data_0

    .line 101
    :cond_0
    :goto_1
    array-length v3, v2

    const/4 v4, 0x4

    if-le v3, v4, :cond_3

    .line 102
    add-int/lit8 v4, v11, 0x1

    .line 103
    array-length v3, v2

    add-int/2addr v3, v10

    .line 104
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 45
    :goto_2
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    move v10, v2

    move v11, v4

    goto :goto_0

    .line 49
    :sswitch_0
    new-instance v2, Loicq/wlogin_sdk/b/cr;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/cr;-><init>()V

    const/4 v3, 0x0

    sget v4, Loicq/wlogin_sdk/request/u;->u:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Loicq/wlogin_sdk/b/cr;->a(III)[B

    move-result-object v2

    goto :goto_1

    .line 53
    :sswitch_1
    new-instance v3, Loicq/wlogin_sdk/b/d;

    invoke-direct {v3}, Loicq/wlogin_sdk/b/d;-><init>()V

    move-object/from16 v0, v16

    iget-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    const/4 v8, 0x0

    move-object/from16 v0, v16

    iget v9, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    invoke-virtual/range {v3 .. v9}, Loicq/wlogin_sdk/b/d;->a(JJII)[B

    move-result-object v2

    goto :goto_1

    .line 57
    :sswitch_2
    sget-object v3, Loicq/wlogin_sdk/request/u;->aa:[B

    if-eqz v3, :cond_0

    sget-object v3, Loicq/wlogin_sdk/request/u;->aa:[B

    array-length v3, v3

    if-eqz v3, :cond_0

    .line 58
    new-instance v2, Loicq/wlogin_sdk/b/k;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/k;-><init>()V

    .line 59
    sget-object v3, Loicq/wlogin_sdk/request/u;->aa:[B

    sget-object v4, Loicq/wlogin_sdk/request/u;->aa:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v4}, Loicq/wlogin_sdk/b/k;->b([BI)V

    .line 60
    invoke-virtual {v2}, Loicq/wlogin_sdk/b/k;->b()[B

    move-result-object v2

    goto :goto_1

    .line 65
    :sswitch_3
    new-instance v2, Loicq/wlogin_sdk/b/l;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/l;-><init>()V

    sget-object v3, Loicq/wlogin_sdk/request/u;->M:[B

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/b/l;->a([B)[B

    move-result-object v2

    goto :goto_1

    .line 69
    :sswitch_4
    new-instance v2, Loicq/wlogin_sdk/b/u;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/u;-><init>()V

    move-object/from16 v0, v16

    iget-object v3, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v3}, Loicq/wlogin_sdk/b/u;->a(II[J)[B

    move-result-object v2

    goto :goto_1

    .line 73
    :sswitch_5
    new-instance v2, Loicq/wlogin_sdk/b/am;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/am;-><init>()V

    sget-object v3, Loicq/wlogin_sdk/request/u;->E:[B

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/b/am;->a([B)[B

    move-result-object v2

    goto :goto_1

    .line 77
    :sswitch_6
    new-instance v2, Loicq/wlogin_sdk/b/ap;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/ap;-><init>()V

    sget-object v3, Loicq/wlogin_sdk/request/u;->A:[B

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/b/ap;->a([B)[B

    move-result-object v2

    goto/16 :goto_1

    .line 81
    :sswitch_7
    new-instance v2, Loicq/wlogin_sdk/b/aw;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/aw;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/c;->x:Loicq/wlogin_sdk/request/u;

    iget v3, v3, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/b/aw;->a(I)[B

    move-result-object v2

    goto/16 :goto_1

    .line 85
    :sswitch_8
    new-instance v2, Loicq/wlogin_sdk/b/bu;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/bu;-><init>()V

    move-object/from16 v0, v16

    iget-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/b/bu;->a(J)[B

    move-result-object v2

    goto/16 :goto_1

    .line 89
    :sswitch_9
    new-instance v2, Loicq/wlogin_sdk/b/bv;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/bv;-><init>()V

    move-object/from16 v0, v16

    iget-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    move-object/from16 v0, v16

    iget-object v3, v0, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Loicq/wlogin_sdk/b/bv;->a(JLjava/lang/String;)[B

    move-result-object v2

    goto/16 :goto_1

    .line 93
    :sswitch_a
    new-instance v2, Loicq/wlogin_sdk/b/b;

    const/16 v3, 0x520

    invoke-direct {v2, v3}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/c;->I:Ljava/lang/String;

    invoke-static {v3}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v3

    .line 96
    array-length v4, v3

    invoke-virtual {v2, v3, v4}, Loicq/wlogin_sdk/b/b;->b([BI)V

    .line 97
    invoke-virtual {v2}, Loicq/wlogin_sdk/b/b;->b()[B

    move-result-object v2

    goto/16 :goto_1

    .line 108
    :cond_1
    new-array v5, v10, [B

    .line 109
    const/4 v4, 0x0

    .line 110
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, v11, :cond_2

    .line 111
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 112
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    array-length v2, v2

    add-int/2addr v4, v2

    .line 110
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 116
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/c;->u:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v11}, Loicq/wlogin_sdk/request/c;->b([BII)[B

    move-result-object v2

    return-object v2

    :cond_3
    move v2, v10

    move v4, v11

    goto/16 :goto_2

    .line 38
    nop

    :array_0
    .array-data 4
        0x8
        0x100
        0x108
        0x109
        0x116
        0x142
        0x145
        0x154
        0x183
        0x184
        0x520
    .end array-data

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x100 -> :sswitch_1
        0x108 -> :sswitch_2
        0x109 -> :sswitch_3
        0x116 -> :sswitch_4
        0x142 -> :sswitch_5
        0x145 -> :sswitch_6
        0x154 -> :sswitch_7
        0x183 -> :sswitch_8
        0x184 -> :sswitch_9
        0x520 -> :sswitch_a
    .end sparse-switch
.end method
